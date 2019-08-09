from django_filters.rest_framework import FilterSet, filters

from products.models import Agency, Category, ProductForAgency, NetworkOfEnterprises


class AgencyFilter(FilterSet):
    category = filters.ModelMultipleChoiceFilter(queryset=Category.objects.all(),
                                                 field_name='connector__product__category__name',
                                                 to_field_name='name',
                                                 label='Категория товаров/услуг')
    network = filters.ModelMultipleChoiceFilter(queryset=NetworkOfEnterprises.objects.all(),
                                                field_name='network__name',
                                                to_field_name='name',
                                                label='Сеть организаций')

    class Meta:
        model = Agency
        fields = ['category', 'network']


class AgencyDetailFilter(FilterSet):

    def __init__(self, *args, **kwargs):
        super(AgencyDetailFilter, self).__init__(*args, **kwargs)
        x = kwargs['queryset'][0].agency.pk
        self.filters['category'] = filters.ModelMultipleChoiceFilter(
            queryset=Category.objects.filter(product__connector__agency__id=x).distinct(),
            field_name='product__category__name',
            to_field_name='name', label='Категория товаров/услуг')

    min_price = filters.NumberFilter(field_name='price', lookup_expr='gte', label='Минимальная цена')
    max_price = filters.NumberFilter(field_name='price', lookup_expr='lte', label='Максимальная цена')

    class Meta:
        model = ProductForAgency
        fields = {
            'min_price': 'gte',
            'max_price': 'lte',
        }
