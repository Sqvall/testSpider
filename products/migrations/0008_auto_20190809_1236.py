# Generated by Django 2.2.4 on 2019-08-09 09:36

from django.db import migrations


class Migration(migrations.Migration):
    atomic = False

    dependencies = [
        ('products', '0007_auto_20190808_2214'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='ProductForAgency',
            new_name='Connector',
        ),
        migrations.RenameModel(
            old_name='NetworkOfEnterprises',
            new_name='Network',
        ),
    ]