from django.urls import path, include
from rest_framework import routers

from .views import OrganizationsFromDistrictListView, OrganizationViewSet, ProductViewSet, OrganizationProductListView


router = routers.DefaultRouter()
router.register('organizations', OrganizationViewSet)
router.register('product', ProductViewSet)

urlpatterns = [
    path('organizations/district_id=<pk>/', OrganizationsFromDistrictListView.as_view(), name='org_list'),
    path('organizations/<pk>/product_list/', OrganizationProductListView.as_view(), name='prod_list'),
    path('', include(router.urls)),
]
