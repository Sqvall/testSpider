from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics, viewsets
from rest_framework.filters import SearchFilter

from api import filters
from .serializers import *


class OrganizationProductListView(generics.ListAPIView):
    """
    Выводит список товаров в заведении: ```url:/organizations/<organization_id>/product_list/```\n
    **Фильтры**: категория товаров/услуг, минимальная и максимальная цена.\n
    **Поиск**: по наименованию товара.
    """
    serializer_class = ProductsForOrganizationSerializer
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.OrganizationProductFilter
    search_fields = ('$product__name',)

    def get_queryset(self):
        queryset = models.Connector.objects.filter(
            organization_id__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset


class OrganizationViewSet(viewsets.ReadOnlyModelViewSet):
    """
    Выводит общий список заведений: ```url:/organizations/```\n
    **Фильтры**: по наличию категории товаров/услуг, по принадлежности к сети организаций.\n
    **Поиск**: по наименованию организации.\n
    И детальную информацию по заведению: ```url:/organizations/<organization_id>/```
    """
    serializer_class = OrganizationDetailSerializer
    queryset = models.Organization.objects.all().order_by('-id')
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.OrganizationFilter
    search_fields = ('$name',)


class ProductViewSet(viewsets.ReadOnlyModelViewSet):
    """
    Выводит общий список товаров: ```url:/product/```\n
    **Фильтры**: категория товаров/услуг, сеть организаций, минимальная и максимальная цена.\n
    **Поиск**: по наименованию товара.\n
    И детальную информацию по товару: ```url:/product/<product_id>/```
    """
    serializer_class = ProductDetailSerializer
    queryset = models.Product.objects.all().order_by('-id')
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.ProductFilter
    search_fields = ('$name',)


class OrganizationsFromDistrictListView(generics.ListAPIView):
    """
    Выводит список заведений с учетом выбора района: ```url:/organizations/district_<district_id>/```\n
    **Поиск**: по наименованию организации.\n
    """
    serializer_class = OrganizationByDistrictListSerializer
    filter_backends = (SearchFilter,)
    search_fields = ('$name', )

    def get_queryset(self):
        queryset = models.Organization.objects.filter(
            district__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset

