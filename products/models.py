from django.db import models


class District(models.Model):
    """ Районы """
    name = models.CharField(max_length=50, verbose_name='Район города', help_text='Не более 50 символов')

    class Meta:
        verbose_name = 'Район'
        verbose_name_plural = 'Районы'

    def __str__(self):
        return f'{self.name}'


class Category(models.Model):
    """ Категории товаров/услуг """
    name = models.CharField(max_length=50, verbose_name='Категория', help_text='Не более 50 символов')

    class Meta:
        verbose_name = 'Категория'
        verbose_name_plural = 'Категории'

    def __str__(self):
        return f'{self.name}'


class Network(models.Model):
    """ Сеть организаций """
    name = models.CharField(max_length=50, verbose_name='Сеть предприятий', help_text='Не более 50 символов')

    class Meta:
        verbose_name = 'Сеть предприятий'
        verbose_name_plural = 'Сети предприятий'

    def __str__(self):
        return f'{self.name}'


class Organization(models.Model):
    """ Отдельная организация """
    name = models.CharField(max_length=50, verbose_name='Предприятие', help_text='Не более 50 символов')
    description = models.TextField(blank=True, null=True, default='', verbose_name='Описание')
    network = models.ForeignKey(Network, blank=True, null=True,
                                on_delete=models.SET_NULL,
                                verbose_name='Сеть',
                                related_name='organization')
    district = models.ManyToManyField(District, verbose_name='Район',
                                      help_text='Выберете какие районы покрывает предприятие')

    class Meta:
        verbose_name = 'Предприятие'
        verbose_name_plural = 'Предприятия'

    def __str__(self):
        return f'{self.network}: {self.name}'


class Product(models.Model):
    """ Продукты/услуги """
    name = models.CharField(max_length=120, verbose_name='Наименование товара', help_text='Не более 120 символов')
    category = models.ForeignKey(Category, blank=True, null=True,
                                 on_delete=models.CASCADE,
                                 verbose_name='Категория товара',
                                 related_name='product')
    network = models.ForeignKey(Network, blank=True, null=True,
                                on_delete=models.CASCADE,
                                verbose_name='Реализуется в сети',
                                related_name='product')

    class Meta:
        verbose_name = 'Товар'
        verbose_name_plural = 'Товары'

    def __str__(self):
        return f'{self.name}'


class Connector(models.Model):
    """ Вспомогательный класс для задания уникалых цен для разных организаций """
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE, verbose_name='Предприятие',
                                     related_name='connector',
                                     help_text='Выберите сеть предприятия и сохраните, для получения списка предприятий')
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name='Товар', related_name='connector',
                                help_text='Выберите сеть предприятия и сохраните, для получения списка товаров')
    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Цена')

    class Meta:
        verbose_name = 'Товар в представительстве'
        verbose_name_plural = 'Товары в представительстве'

    def __str__(self):
        return f'Организация: {self.organization}\nТовар: {self.product}\nЦена: {self.price}'
