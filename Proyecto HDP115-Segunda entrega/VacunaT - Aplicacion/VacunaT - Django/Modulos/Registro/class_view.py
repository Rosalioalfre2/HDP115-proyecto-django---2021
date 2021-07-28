from django.shortcuts import render, redirect
from django.core.urlresolvers import reverse_lazy
from django.views.generic import CreateView, DeleteView, UpdateView, ListView
from .forms import PacienteForm
from .models import Paciente

class PacienteList(ListView):
	model = Paciente
	template_name = 'Plantillas/HTML5/listado.html'
	success_url = reverse_lazy('index')

class PacienteCreate(CreateView):
	model = Paciente
	form_class = PacienteForm
	template_name = 'Plantillas/HTML5/ingresarpaciente.html'
	success_url = reverse_lazy('index')

class PacienteUpdate(UpdateView):
	model = Paciente
	form_class = PacienteForm
	template_name = 'Plantillas/HTML5/editando.html'
	success_url = reverse_lazy('index')

class PacienteDelete(DeleteView):
	model = Paciente
	template_name = 'Plantillas/HTML5/verificacion.html'
	success_url = reverse_lazy('index')
