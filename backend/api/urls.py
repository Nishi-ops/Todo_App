from django.contrib import admin
from django.urls import path
from .views import TodoUpdateDelete, TodoCreate

urlpatterns = [
    path('', TodoCreate.as_view()),
   path('<int:pk>', TodoUpdateDelete.as_view())
   
]
