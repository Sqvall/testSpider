# Generated by Django 2.2.4 on 2019-08-09 10:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0009_auto_20190809_1301'),
    ]

    operations = [
        migrations.AlterField(
            model_name='organization',
            name='network',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='organization', to='products.Network', verbose_name='Сеть'),
        ),
    ]