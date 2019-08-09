from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics, viewsets
from rest_framework.filters import SearchFilter

from api import filters
from .serializers import *


class OrganizationProductListView(generics.ListAPIView):
    serializer_class = ProductsForAgencySerializer
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.AgencyDetailFilter
    search_fields = ('$product__name',)

    def get_queryset(self):
        queryset = ProductForAgency.objects.filter(agency_id__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset


class OrganizationViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Agency.objects.all().order_by('-id')
    serializer_class = AgencyDetailSerializer
    filter_backends = (DjangoFilterBackend, SearchFilter)
    filter_class = filters.AgencyFilter
    search_fields = ('$name',)


class ProductDetailView(generics.RetrieveAPIView):
    serializer_class = ProductDetailSerializer
    queryset = Product.objects.all().order_by('-id')


class OrganizationsFromDistrictListView(generics.ListAPIView):
    serializer_class = AgencyByDistrictListSerializer
    filter_backends = (SearchFilter, )
    search_fields = ('$name',)

    def get_queryset(self):
        queryset = Agency.objects.filter(district__exact=self.request.parser_context['kwargs']['pk']).order_by('-id')
        return queryset
