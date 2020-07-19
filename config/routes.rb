Rails.application.routes.draw do

  get 'estudiantes/index'
  get 'estudiantes/show'
  get 'estudiantes/new'
  get 'estudiantes/edit'
  resources :docentes
  resources :estudiantes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
