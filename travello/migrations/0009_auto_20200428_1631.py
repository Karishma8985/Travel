# Generated by Django 3.0.4 on 2020-04-28 11:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('travello', '0008_pessanger_all_detail'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pessanger_detail',
            name='username',
            field=models.CharField(max_length=10),
        ),
    ]