"""loclibrary URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView

urlpatterns = [
    path('admin/', admin.site.urls),
]

# Use include() to add URLS from the catalog application and authentication system
from django.urls import include
urlpatterns = [
    path('admin/', admin.site.urls),
]
urlpatterns += [
    path('catalog/', include('catalog.urls')),
]

urlpatterns+= static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

#Add URL maps to redirect the base URL to our application
urlpatterns += [
    path('', RedirectView.as_view(url='/catalog/', permanent=True)),
]

# Add Django site authentication urls (for login, logout, password management)
# Включить такі шляхи:
#    url(r'^accounts/login/$', views.LoginView.as_view(), name='login'), 
# url(r'^accounts/logout/$', views.LogoutView.as_view(), name='logout'), 
# url(r'^accounts/password_change/$', views.PasswordChangeView.as_view(), name='password_change'), 
# url(r'^accounts/password_change/done/$', views.PasswordChangeDoneView.as_view(), name='password_change_done'), 
# url(r'^accounts/password_reset/$', views.PasswordResetView.as_view(), name='password_reset'), 
# url(r'^accounts/password_reset/done/$', views.PasswordResetDoneView.as_view(), name='password_reset_done'), 
# url(r'^accounts/reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$', 
# views.PasswordResetConfirmView.as_view(), name='password_reset_confirm'), 
# url(r'^accounts/reset/done/$', views.PasswordResetCompleteView.as_view(), name='password_reset_complete'), 

urlpatterns += [
    path('accounts/', include('django.contrib.auth.urls')),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        path('__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns


  