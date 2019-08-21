from django_filters.rest_framework import FilterSet, filters

from products.models import Organization, Category, Connector, Network, Product


class OrganizationFilter(FilterSet):
    """ Фильтр категорий товаров и сети для общего списка организаций """
    category = filters.ModelMultipleChoiceFilter(queryset=Category.objects.all(),
                                                 field_name='connector__product__category__name',
                                                 to_field_name='name',
                                                 label='Категория товаров/услуг')
    network = filters.ModelMultipleChoiceFilter(queryset=Network.objects.all(),
                                                field_name='network__name',
                                                to_field_name='name',
                                                label='Сеть организаций')

    class Meta:
        model = Organization
        fields = ['category', 'network']


class ProductFilter(FilterSet):
    """ Фильтр категорий товаров, сети, мин. и макс. цены для общего списка товаров """
    category = filters.ModelMultipleChoiceFilter(queryset=Category.objects.all(),
                                                 field_name='connector__product__category__name',
                                                 to_field_name='name',
                                                 label='Категория товаров/услуг')
    network = filters.ModelMultipleChoiceFilter(queryset=Network.objects.all(),
                                                field_name='network__name',
                                                to_field_name='name',
                                                label='Сеть организаций')
    min_price = filters.NumberFilter(field_name='price', lookup_expr='gte', label='Минимальная цена')
    max_price = filters.NumberFilter(field_name='price', lookup_expr='lte', label='Максимальная цена')

    class Meta:
        model = Product
        fields = {
            'min_price': 'gte',
            'max_price': 'lte',
        }


class OrganizationProductFilter(FilterSet):
    """
    Фильтр категорий товаров, мин. и макс. цены для отдельной организации.
    (почучает список категорий доступных в данной организации)
    """
    def __init__(self, *args, **kwargs):
        super(OrganizationProductFilter, self).__init__(*args, **kwargs)
        x = kwargs['queryset'][0].organization.pk
        self.filters['category'] = filters.ModelMultipleChoiceFilter(
            queryset=Category.objects.filter(product__connector__organization__id=x).distinct(),
            field_name='product__category__name',
            to_field_name='name', label='Категория товаров/услуг')

    min_price = filters.NumberFilter(field_name='price', lookup_expr='gte', label='Минимальная цена')
    max_price = filters.NumberFilter(field_name='price', lookup_expr='lte', label='Максимальная цена')

    class Meta:
        model = Connector
        fields = {
            'min_price': 'gte',
            'max_price': 'lte',
        }
