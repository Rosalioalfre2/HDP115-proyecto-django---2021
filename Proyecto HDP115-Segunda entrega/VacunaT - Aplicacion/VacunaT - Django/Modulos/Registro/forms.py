from django import forms
from django.forms import DateField, DateInput, DateTimeField
from .models import Paciente

class PacienteForm(forms.ModelForm):
    
    class Meta:
        model = Paciente
        fields = '__all__'
        labels = {
            'nombre': ('Nombre'),
            'dui': 'DUI',
            'edad': 'Edad',
            'genero': ('Genero'),
            'idmunicipio': ('Municipio de residencia'),
            'fechaprimeradosis': ('Fecha de primera dosis'),
            'fechasegundadosis': ('Fecha de segunda dosis'),
            'codigo' : ('Registrado por')
        }

        widgets = {
            'fechaprimeradosis': forms.DateInput(format='%d/%m/%Y'),
            'fechasegundadosis': forms.DateInput(format='%d/%m/%Y'),
        }
