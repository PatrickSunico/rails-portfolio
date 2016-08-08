Rails.application.routes.draw do


  root to: 'index#index'
  get "index/download" => "index#download"
  get "contacts/new" => "contacts#new"
  post "contacts" => "contacts#create"
  # get '*path' => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
