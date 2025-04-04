from .views import *
from django.urls import path, include

app_name = "main"


urlpatterns = [
    path('', IndexPageView.as_view(), name='index'),
    
]