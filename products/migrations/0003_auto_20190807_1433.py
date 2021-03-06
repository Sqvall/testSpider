# Generated by Django 2.2.4 on 2019-08-07 11:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_auto_20190807_1413'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='productforagency',
            options={'verbose_name': 'Товар в представительстве', 'verbose_name_plural': 'Товары в представительстве'},
        ),
        migrations.AlterField(
            model_name='product',
            name='network',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='product', to='products.NetworkOfEnterprises', verbose_name='Реализуется в сети'),
        ),
        migrations.AlterField(
            model_name='productforagency',
            name='product',
            field=models.ForeignKey(limit_choices_to={'network': 'Табрис'}, on_delete=django.db.models.deletion.CASCADE, to='products.Product'),
        ),
    ]
