from django.conf.urls import patterns, include, url
from django.core.urlresolvers import reverse_lazy, reverse
from django.contrib import admin
from django.contrib.auth.views import login, logout_then_login
from Modulos.Registro import views
from Modulos.Registro.class_view import PacienteCreate, PacienteDelete, PacienteUpdate, PacienteList

admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'VacunaT.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^accounts/login/', login, {'template_name':'Plantillas/HTML5/Login.html'},name='login'),
    url(r'^logout/', logout_then_login,name='logout'),
    url(r'^index/', views.index, name='index'),
    url(r'^listado/', PacienteList.as_view(), name='listado'),
    url(r'^ingresarpaciente/', PacienteCreate.as_view(), name='ingresarpaciente'),
    url(r'^editando/(?P<pk>\d+)/$', PacienteUpdate.as_view(), name='editando'),
    url(r'^eliminarpaciente/(?P<pk>\d+)/$', PacienteDelete.as_view(), name='eliminando'),
    url(r'^', views.home, name='home'),
)
