# Generated by Django 2.2.4 on 2019-08-07 12:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_auto_20190807_1433'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productforagency',
            name='product',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='products.Product'),
        ),
    ]
