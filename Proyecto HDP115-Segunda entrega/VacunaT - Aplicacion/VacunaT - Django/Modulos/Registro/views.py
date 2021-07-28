from django.shortcuts import render, redirect
from django.core.urlresolvers import reverse
from django.http import HttpResponse
from django.db.models import Count
from django.shortcuts import render_to_response
from .models import Paciente, Departamento
from django.template import RequestContext
from .forms import PacienteForm
# Create your views here.

def login(request):
	return render(request,"Plantillas/HTML5/Login.html")

def index(request):
	return render(request,"Plantillas/HTML5/index.html")

def home(request):

	listaPaciente = Paciente.objects.all()
	ahuachapanm = Paciente.objects.filter(idmunicipio__gte = 1, idmunicipio__lte = 12, genero = 'M').count()
	ahuachapanf = Paciente.objects.filter(idmunicipio__gte = 1, idmunicipio__lte = 12, genero = 'F').count()

	cabanasm = Paciente.objects.filter(idmunicipio__gte = 13, idmunicipio__lte = 21, genero = 'M').count()
	cabanasf = Paciente.objects.filter(idmunicipio__gte = 13, idmunicipio__lte = 21, genero = 'F').count()	

	chalatenangom = Paciente.objects.filter(idmunicipio__gte = 22, idmunicipio__lte = 54, genero = 'M').count()
	chalatenangof = Paciente.objects.filter(idmunicipio__gte = 22, idmunicipio__lte = 54, genero = 'F').count()

	cuscatlanm = Paciente.objects.filter(idmunicipio__gte = 55, idmunicipio__lte = 70, genero = 'M').count()
	cuscatlanf = Paciente.objects.filter(idmunicipio__gte = 55, idmunicipio__lte = 70, genero = 'F').count()

	libertadm = Paciente.objects.filter(idmunicipio__gte = 71, idmunicipio__lte = 92, genero = 'M').count()
	libertadf = Paciente.objects.filter(idmunicipio__gte = 71, idmunicipio__lte = 92, genero = 'F').count()

	pazm = Paciente.objects.filter(idmunicipio__gte = 93, idmunicipio__lte = 114, genero = 'M').count()
	pazf = Paciente.objects.filter(idmunicipio__gte = 93, idmunicipio__lte = 114, genero = 'F').count()

	unionm = Paciente.objects.filter(idmunicipio__gte = 115, idmunicipio__lte = 132, genero = 'M').count()
	unionf = Paciente.objects.filter(idmunicipio__gte = 115, idmunicipio__lte = 132, genero = 'F').count()

	morazanm = Paciente.objects.filter(idmunicipio__gte = 133, idmunicipio__lte = 158, genero = 'M').count()
	morazanf = Paciente.objects.filter(idmunicipio__gte = 133, idmunicipio__lte = 158, genero = 'F').count()

	miguelm = Paciente.objects.filter(idmunicipio__gte = 159, idmunicipio__lte = 178, genero = 'M').count()
	miguelf = Paciente.objects.filter(idmunicipio__gte = 159, idmunicipio__lte = 178, genero = 'F').count()

	salvadorm = Paciente.objects.filter(idmunicipio__gte = 179, idmunicipio__lte = 197, genero = 'M').count()
	salvadorf = Paciente.objects.filter(idmunicipio__gte = 179, idmunicipio__lte = 197, genero = 'F').count()

	vicentem = Paciente.objects.filter(idmunicipio__gte = 198, idmunicipio__lte = 210, genero = 'M').count()
	vicentef = Paciente.objects.filter(idmunicipio__gte = 198, idmunicipio__lte = 210, genero = 'F').count()

	anam = Paciente.objects.filter(idmunicipio__gte = 211, idmunicipio__lte = 223, genero = 'M').count()
	anaf = Paciente.objects.filter(idmunicipio__gte = 211, idmunicipio__lte = 223, genero = 'F').count()

	sonsonatem = Paciente.objects.filter(idmunicipio__gte = 224, idmunicipio__lte = 239, genero = 'M').count()
	sonsonatef = Paciente.objects.filter(idmunicipio__gte = 224, idmunicipio__lte = 239, genero = 'F').count()

	usulutanm = Paciente.objects.filter(idmunicipio__gte = 240, idmunicipio__lte = 262, genero = 'M').count()
	usulutanf = Paciente.objects.filter(idmunicipio__gte = 240, idmunicipio__lte = 262, genero = 'F').count()

	pacientesf = Paciente.objects.filter(genero = 'F').count()
	pacientesm = Paciente.objects.filter(genero = 'M').count()

	paciente1dosis = Paciente.objects.all().count()
	paciente2dosis = Paciente.objects.filter(fechasegundadosis__gte = '0001-01-01').count()

	totalVacunas = paciente1dosis + paciente2dosis

	contexto = {
		'listaPaciente':listaPaciente,

		'ahuachapanm':ahuachapanm,
		'ahuachapanf':ahuachapanf,

		'cabanasf':cabanasf,
		'cabanasm':cabanasm,

		'chalatenangof':chalatenangof,
		'chalatenangom':chalatenangom,

		'cuscatlanf':cuscatlanf,
		'cuscatlanm':cuscatlanm,

		'libertadf':libertadf,
		'libertadm':libertadm,

		'pazf':pazf,
		'pazm':pazm,

		'unionf':unionf,
		'unionm':unionm,

		'morazanf':morazanf,
		'morazanm':morazanm,

		'miguelf':miguelf,
		'miguelm':miguelm,

		'salvadorf':salvadorf,
		'salvadorm':salvadorm,

		'vicentef':vicentef,
		'vicentem':vicentem,

		'anaf':anaf,
		'anam':anam,

		'sonsonatef':sonsonatef,
		'sonsonatem':sonsonatem,

		'usulutanf':usulutanf,
		'usulutanm':usulutanm,

		'pacientesm':pacientesm,
		'pacientesf':pacientesf,

		'paciente1dosis':paciente1dosis,
		'paciente2dosis':paciente2dosis,

		'totalVacunas':totalVacunas,

	}
	return render(request,"Plantillas/HTML5/home.html",contexto)
		

