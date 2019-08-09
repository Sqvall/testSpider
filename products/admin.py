from django.contrib import admin
from django.urls import resolve

from .models import *


class ConnectorInline(admin.TabularInline):
    """ Вложение вспомогательного класса для связи """
    model = Connector
    extra = 1

    def get_parent_object_from_request(self, request):
        """ Берём родителя родителя для инлайн формы """
        resolved = resolve(request.path_info)
        if resolved.kwargs:
            return self.parent_model.objects.get(pk=resolved.kwargs['object_id'])
        return None

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        """
        При первом сохранении родительской формы организации или товара/услуги
        выводит список доступных сущностей для связи (товар<->организация).
        До сохранения доступны все
        """
        if db_field.name == "product" and self.get_parent_object_from_request(request) is not None:
            kwargs["queryset"] = Product.objects.filter(network=self.get_parent_object_from_request(request).network)
        elif db_field.name == "organization" and self.get_parent_object_from_request(request) is not None:
            kwargs["queryset"] = Organization.objects.filter(network=self.get_parent_object_from_request(request).network)
        else:
            kwargs["queryset"] = Product.objects.all()
        return super().formfield_for_foreignkey(db_field, request, **kwargs)


@admin.register(District)
class DistrictAdmin(admin.ModelAdmin):
    """ Районы """
    list_display = [field.name for field in District._meta.fields]

    class Meta:
        model = District


@admin.register(Network)
class NetworkAdmin(admin.ModelAdmin):
    """ Сети организаций """
    list_display = [field.name for field in Network._meta.fields]

    class Meta:
        model = Network


@admin.register(Organization)
class OrganizationAdmin(admin.ModelAdmin):
    """ Отдельные организации """
    list_display = [field.name for field in Organization._meta.fields if field.name is not 'description']
    inlines = [ConnectorInline, ]

    class Meta:
        model = Organization


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    """ Категории товаров/услуг """
    list_display = [field.name for field in Category._meta.fields]

    class Meta:
        model = Category


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    """ Продукты/услуги """
    list_display = [field.name for field in Product._meta.fields]
    inlines = [ConnectorInline, ]

    class Meta:
        model = Product
