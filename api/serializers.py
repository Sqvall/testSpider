from rest_framework import serializers

from products import models


class DistrictSerializer(serializers.ModelSerializer):
    """ Сериализация районов """
    class Meta:
        model = models.District
        fields = ('id', 'name',)


class ProductsForOrganizationSerializer(serializers.ModelSerializer):
    """ Сериализация продуктов для организаций """
    name = serializers.CharField(source='product.name')
    category = serializers.CharField(source='product.category')

    class Meta:
        model = models.Connector
        fields = ('category', 'name', 'price')


class OrganizationForProductsSerializer(serializers.ModelSerializer):
    """ Сериализация организаций для продуктов """
    organization = serializers.CharField(source='organization.name')

    class Meta:
        model = models.Connector
        fields = ('organization', 'price')


class ProductDetailSerializer(serializers.ModelSerializer):
    """ Сериализация для детальной информации о продукте """
    network = serializers.CharField(source='network.name')
    category = serializers.CharField(source='category.name')
    organizations = OrganizationForProductsSerializer(many=True, read_only=True, source='connector')

    class Meta:
        model = models.Product
        fields = ('url', 'id', 'category', 'name', 'network', 'organizations')


class OrganizationDetailSerializer(serializers.ModelSerializer):
    """ Сериализация для детальной информации об организаций """
    network = serializers.CharField(source='network.name')
    products = ProductsForOrganizationSerializer(many=True, read_only=True, source='connector')
    district = DistrictSerializer(many=True)

    class Meta:
        model = models.Organization
        fields = ('url', 'id', 'name', 'network', 'products', 'district')


class OrganizationByDistrictListSerializer(serializers.ModelSerializer):
    """ Сериализация организаций для списка (не включает список районов) """
    network = serializers.CharField(source='network.name')
    products = ProductsForOrganizationSerializer(many=True, read_only=True, source='connector')

    class Meta:
        model = models.Organization
        fields = ('url', 'id', 'name', 'network', 'products')
