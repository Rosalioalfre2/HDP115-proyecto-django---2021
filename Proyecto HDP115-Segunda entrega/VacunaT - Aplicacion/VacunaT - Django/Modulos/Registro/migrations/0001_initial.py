# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Administrador',
            fields=[
                ('codigo', models.IntegerField(serialize=False, primary_key=True, db_column='CODIGO')),
                ('contrasena', models.TextField(db_column='CONTRASENA')),
            ],
            options={
                'db_table': 'ADMINISTRADOR',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Centrovacunacion',
            fields=[
                ('idcentro', models.IntegerField(serialize=False, primary_key=True, db_column='IDCENTRO')),
                ('ubicacion', models.TextField(db_column='UBICACION')),
            ],
            options={
                'db_table': 'CENTROVACUNACION',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('nombredepartamento', models.TextField(db_column='NOMBREDEPARTAMENTO')),
                ('iddepartamento', models.IntegerField(serialize=False, primary_key=True, db_column='IDDEPARTAMENTO')),
            ],
            options={
                'db_table': 'DEPARTAMENTO',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Municipio',
            fields=[
                ('nombremunicipio', models.TextField(db_column='NOMBREMUNICIPIO')),
                ('idmunicipio', models.IntegerField(serialize=False, primary_key=True, db_column='IDMUNICIPIO')),
            ],
            options={
                'db_table': 'MUNICIPIO',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Paciente',
            fields=[
                ('nombre', models.TextField(db_column='NOMBRE')),
                ('dui', models.IntegerField(serialize=False, primary_key=True, db_column='DUI')),
                ('edad', models.IntegerField(db_column='EDAD')),
                ('genero', models.CharField(max_length=1, db_column='GENERO')),
                ('primeradosis', models.IntegerField(db_column='PRIMERADOSIS')),
                ('fechaprimeradosis', models.DateField(db_column='FECHAPRIMERADOSIS')),
                ('segundadosis', models.IntegerField(null=True, db_column='SEGUNDADOSIS', blank=True)),
                ('fechasegundadosis', models.DateField(null=True, db_column='FECHASEGUNDADOSIS', blank=True)),
            ],
            options={
                'db_table': 'PACIENTE',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Vacunacion',
            fields=[
                ('dosis', models.IntegerField(db_column='DOSIS')),
                ('idvacunacion', models.IntegerField(serialize=False, primary_key=True, db_column='IDVACUNACION')),
                ('fecha_aplicacion', models.DateField(db_column='FECHA_APLICACION')),
            ],
            options={
                'db_table': 'VACUNACION',
                'managed': False,
            },
            bases=(models.Model,),
        ),
    ]
