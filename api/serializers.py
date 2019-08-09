from rest_framework import serializers

from products.models import *


class DistrictSerializer(serializers.ModelSerializer):
    """
    Сериализация районов
    """
    class Meta:
        model = District
        fields = ('id', 'name',)


class ProductsForAgencySerializer(serializers.ModelSerializer):
    """
    Сериализация продуктов для заведений(организаций)
    """
    name = serializers.CharField(source='product.name')
    category = serializers.CharField(source='product.category')

    class Meta:
        model = ProductForAgency
        fields = ('category', 'name', 'price')


class AgencyForProductsSerializer(serializers.ModelSerializer):
    """
    Сериализация заведений для продуктов
    """
    organization = serializers.CharField(source='agency')

    class Meta:
        model = ProductForAgency
        fields = ('organization', 'price')


class ProductDetailSerializer(serializers.ModelSerializer):
    """
    Сериализация для детальной информации о продукте
    """
    network = serializers.CharField(source='network.name')
    category = serializers.CharField(source='category.name')
    organizations = AgencyForProductsSerializer(many=True, read_only=True, source='connector')

    class Meta:
        model = Product
        fields = ('id', 'category', 'name', 'network', 'organizations')


class AgencyDetailSerializer(serializers.ModelSerializer):
    """
    Сериализация для детальной информации о заведении (организации)
    """
    network = serializers.CharField(source='network.name')
    products = ProductsForAgencySerializer(many=True, read_only=True, source='connector')
    district = DistrictSerializer(many=True)

    class Meta:
        model = Agency
        fields = ('url', 'id', 'name', 'network', 'products', 'district')


class AgencyByDistrictListSerializer(serializers.ModelSerializer):
    """
    Сериализация заведений (организаций) для списка (не включает список районов)
    """
    network = serializers.CharField(source='network.name')
    products = ProductsForAgencySerializer(many=True, read_only=True, source='connector')

    class Meta:
        model = Agency
        fields = ('url', 'id', 'name', 'network', 'products')
