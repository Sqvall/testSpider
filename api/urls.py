from django.urls import path, include
from rest_framework import routers

from . import views


class TestSpider(routers.APIRootView):
    """
    **All only GET method.**
    \nСписок всех организаций: ```url:/api/organizations/```
    \nСписок всех товаров/услуг: ```url:/api/product/```
    \nСписок организаций в учётом предварительно выбранного района: ```url:/api/organizations/district_<district_id>/```
    \nСписок товаров/услуг в отдельной организации: ```url:/api/organizations/<organization_id>/product_list/```
    \nДетальная информация по организации: ```url:/api/organizations/<organization_id>/```
    \nДетальная информация по товару/услуге: ```url:/api/product/<product_id>/```
    """
    pass


class DocumentedRouter(routers.DefaultRouter):
    APIRootView = TestSpider


router = DocumentedRouter()
router.register('organizations', views.OrganizationViewSet)
router.register('product', views.ProductViewSet)

urlpatterns = [
    path('organizations/district_<pk>/', views.OrganizationsFromDistrictListView.as_view()),
    path('organizations/<pk>/product_list/', views.OrganizationProductListView.as_view()),
    path('', include(router.urls)),
]
