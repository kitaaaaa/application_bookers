Rails.application.routes.draw do
  root to: 'root#top' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'root#top'
  get 'books' => 'books#main'

  post 'books' => 'books#create'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update'

  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit_book' => 'books#edit', as: 'edit_book'
  delete 'books/:id/destroy_book' => 'books#destroy', as: 'destroy_book'
end
