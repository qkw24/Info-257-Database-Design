PublicTransport::Application.routes.draw do
  root to: 'static_pages#index'

  resources :employees
  resources :roles
  resources :employee_schedules
  resources :buses
  resources :routes
  resources :stops
  resources :bus_schedules
  resources :static_pages


end
