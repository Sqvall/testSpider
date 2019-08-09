# Generated by Django 2.2.4 on 2019-08-08 19:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0006_auto_20190808_1511'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productforagency',
            name='agency',
            field=models.ForeignKey(help_text='Выберите сеть предприятия и сохраните, для получения списка предприятий', on_delete=django.db.models.deletion.CASCADE, related_name='connector', to='products.Agency', verbose_name='Предприятие'),
        ),
        migrations.AlterField(
            model_name='productforagency',
            name='product',
            field=models.ForeignKey(help_text='Выберите сеть предприятия и сохраните, для получения списка товаров', on_delete=django.db.models.deletion.CASCADE, related_name='connector', to='products.Product', verbose_name='Товар'),
        ),
    ]