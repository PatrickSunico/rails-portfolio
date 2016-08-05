Rails.application.routes.draw do

  root to: 'index#index'
  get 'about_section/index' => 'about_section#index'
  get 'about_section/new' => 'about_section#new'
  post 'about_section/create' => 'about_section#create'
  get 'about_section/edit' => 'about_section#edit'
  post 'about_section/update' => 'about_section#update'

  get "index/download" => "index#download"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
