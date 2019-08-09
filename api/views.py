from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics, viewsets
from rest_framework.filters import SearchFilter

from api import filters
from .serializers import *


class OrganizationProductListView(generics.ListAPIView):
    serializer_class = ProductsForOrganizationSerializer
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.OrganizationProductFilter
    search_fields = ('$product__name',)

    def get_queryset(self):
        queryset = models.Connector.objects.filter(organization_id__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset


class OrganizationViewSet(viewsets.ReadOnlyModelViewSet):
    serializer_class = OrganizationDetailSerializer
    queryset = models.Organization.objects.all().order_by('-id')
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.OrganizationFilter
    search_fields = ('$name',)


class ProductViewSet(viewsets.ReadOnlyModelViewSet):
    serializer_class = ProductDetailSerializer
    queryset = models.Product.objects.all().order_by('-id')
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.ProductFilter
    search_fields = ('$name',)


class OrganizationsFromDistrictListView(generics.ListAPIView):
    serializer_class = OrganizationByDistrictListSerializer
    filter_backends = (SearchFilter, )
    search_fields = ('$name',)

    def get_queryset(self):
        queryset = models.Organization.objects.filter(district__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset
