Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/new' => 'posts#new'
  get 'top' => 'root#top'
  post 'posts'=> 'posts#create'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  get 'posts/:id/show' => 'posts#show', as: 'show_post'
  patch 'posts/:id' => 'posts#update', as: 'post'
  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
end
