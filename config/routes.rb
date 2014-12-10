PublicTransport::Application.routes.draw do
  resources :employees
  resources :roles
  resources :employee_schedules
  resources :buses
  resources :routes
  resources :stops
  resources :bus_schedules
end
