from django.urls import path, include
from rest_framework import routers

from .views import OrganizationsFromDistrictListView, OrganizationViewSet, ProductDetailView, OrganizationProductListView


router = routers.DefaultRouter()
router.register('', OrganizationViewSet)

urlpatterns = [
    path('product/<pk>/', ProductDetailView.as_view(), name='prod_detail'),
    path('organizations/district_id=<pk>/', OrganizationsFromDistrictListView.as_view(), name='org_list'),
    path('organizations/<pk>/product_list/', OrganizationProductListView.as_view(), name='prod_list'),
    path('organizations/', include(router.urls)),
]
