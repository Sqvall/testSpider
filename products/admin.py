from django.contrib import admin
from django.urls import resolve

from .models import *


class ProductForAgencyInline(admin.TabularInline):
    model = ProductForAgency
    extra = 1

    def get_parent_object_from_request(self, request):
        resolved = resolve(request.path_info)
        if resolved.kwargs:
            return self.parent_model.objects.get(pk=resolved.kwargs['object_id'])
        return None

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "product" and self.get_parent_object_from_request(request) is not None:
            kwargs["queryset"] = Product.objects.filter(network=self.get_parent_object_from_request(request).network)
        elif db_field.name == "agency" and self.get_parent_object_from_request(request) is not None:
            kwargs["queryset"] = Agency.objects.filter(network=self.get_parent_object_from_request(request).network)
        else:
            kwargs["queryset"] = Product.objects.all()
        return super().formfield_for_foreignkey(db_field, request, **kwargs)


@admin.register(District)
class DistrictAdmin(admin.ModelAdmin):
    list_display = [field.name for field in District._meta.fields]

    class Meta:
        model = District


@admin.register(NetworkOfEnterprises)
class NetworkOfEnterprisesAdmin(admin.ModelAdmin):
    list_display = [field.name for field in NetworkOfEnterprises._meta.fields]

    class Meta:
        model = NetworkOfEnterprises


@admin.register(Agency)
class AgencyAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Agency._meta.fields if field.name is not 'description']
    inlines = [ProductForAgencyInline,]

    class Meta:
        model = Agency


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Category._meta.fields]

    class Meta:
        model = Category


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Product._meta.fields]
    inlines = [ProductForAgencyInline,]

    class Meta:
        model = Product
