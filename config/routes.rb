Rails.application.routes.draw do
  root 'index#index'
  get "index/download" 
  post "contacts" => "contacts#create"
  get '*path' => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
