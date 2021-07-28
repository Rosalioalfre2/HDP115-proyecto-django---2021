# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals
from django.db import models


class Administrador(models.Model):
    codigo = models.IntegerField(db_column='CODIGO', primary_key=True)  # Field name made lowercase.
    contrasena = models.TextField(db_column='CONTRASENA')  # Field name made lowercase.

    def __str__(self):
        return str(self.codigo)

    class Meta:
        managed = False
        db_table = 'ADMINISTRADOR'


class Centrovacunacion(models.Model):
    idcentro = models.IntegerField(db_column='IDCENTRO', primary_key=True)  # Field name made lowercase.
    idmunicipio = models.ForeignKey('Municipio', db_column='IDMUNICIPIO', blank=True, null=True)  # Field name made lowercase.
    ubicacion = models.TextField(db_column='UBICACION')  # Field name made lowercase.

    def __unicode__(self):
        return self.ubicacion

    class Meta:
        managed = False
        db_table = 'CENTROVACUNACION'


class Departamento(models.Model):
    nombredepartamento = models.TextField(db_column='NOMBREDEPARTAMENTO')  # Field name made lowercase.
    iddepartamento = models.IntegerField(db_column='IDDEPARTAMENTO', primary_key=True)  # Field name made lowercase.
    idmunicipio = models.ForeignKey('Municipio', db_column='IDMUNICIPIO', blank=True, null=True)  # Field name made lowercase.

    def __unicode__(self):
        return self.nombredepartamento

    class Meta:
        managed = False
        db_table = 'DEPARTAMENTO'


class Municipio(models.Model):
    nombremunicipio = models.TextField(db_column='NOMBREMUNICIPIO')  # Field name made lowercase.
    idmunicipio = models.IntegerField(db_column='IDMUNICIPIO', primary_key=True)  # Field name made lowercase.
    iddepartamento = models.ForeignKey(Departamento, db_column='IDDEPARTAMENTO', blank=True, null=True)  # Field name made lowercase.
    

    def __unicode__(self):
        return self.nombremunicipio

    class Meta:
        managed = False
        db_table = 'MUNICIPIO'

class Paciente(models.Model):
    nombre = models.CharField(db_column='NOMBRE', max_length =50)  # Field name made lowercase.
    dui = models.IntegerField(db_column='DUI', unique = True, primary_key=True)  # Field name made lowercase.
    edad = models.IntegerField(db_column='EDAD')  # Field name made lowercase.
    genero = [
    ('M', 'Masculino'),
    ('F', 'Femenino')
    ]
    genero = models.CharField(db_column='GENERO', max_length = 11, choices=genero, null = False, blank= False)  # Field name made lowercase.
    idmunicipio = models.ForeignKey(Municipio, db_column='IDMUNICIPIO', blank=True, null=True)  # Field name made lowercase.
    fechaprimeradosis = models.DateField(db_column='FECHAPRIMERADOSIS')  # Field name made lowercase.
    fechasegundadosis = models.DateField(db_column='FECHASEGUNDADOSIS', blank=True, null=True)  # Field name made lowercase.
    codigo = models.ForeignKey(Administrador, db_column='CODIGO', blank=True, null=True)  # Field name made lowercase.


    def __str__(self):
        return str(self.nombre)

    class Meta:
        managed = False
        db_table = 'PACIENTE'


class Vacunacion(models.Model):
    idcentro = models.ForeignKey(Centrovacunacion, db_column='IDCENTRO', blank=True, null=True)  # Field name made lowercase.
    dui = models.ForeignKey(Paciente, db_column='DUI')  # Field name made lowercase.
    dosis = models.IntegerField(db_column='DOSIS')  # Field name made lowercase.
    idvacunacion = models.IntegerField(db_column='IDVACUNACION', primary_key=True)  # Field name made lowercase.
    fecha_aplicacion = models.DateField(db_column='FECHA_APLICACION')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'VACUNACION'

