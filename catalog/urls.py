from django.urls import path
from . import views
import debug_toolbar
from django.urls import include
from django.urls import reverse
from django.conf.urls import url
import pdb

urlpatterns = [
    path('', views.index, name='index'),
    path('', include('django.contrib.auth.urls')),
    path('books/', views.BookListView.as_view(), name='books'),
    path('book/(?P<pk>[-\w]+)/renew/', views.renew_book_librarian, name='renew-book-librarian'),
    path('book/<int:pk>', views.BookDetailView.as_view(), name='book-detail'),
    path('authors/', views.AuthorListView.as_view(), name='authors'),
    path('author/<int:pk>', views.AuthorDetailView.as_view(), name='author-detail'),
    path('mybooks/',views.LoanedBooksByUserListView.as_view(), name='my-borrowed'),
    path('borrowed/',views.LoanedBooksAllListView.as_view(), name='all-borrowed'),    
]
urlpatterns += [  
    path('author/create/', views.AuthorCreate.as_view(), name='author_create'),
    url('author/update/', views.AuthorUpdateList, name='author_list_for_update'),
    url('author/delete/', views.AuthorDeleteList, name='author_list_for_delete'),
    url('author/(?P<pk>\d+)/update/', views.AuthorUpdate.as_view(), name='author_update'),
    url('author/(?P<pk>\d+)/delete/', views.AuthorDelete.as_view(), name='author_delete'),
   
]

# pdb.set_trace()



