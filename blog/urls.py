from django.urls import path
from blog import views

app_name = 'blog'

urlpatterns = [
    path('', views.HomeView.as_view(), name='post_list'),
]