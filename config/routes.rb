Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Ruta de verificación de estado
  get "up" => "rails/health#show", as: :rails_health_check

  # Rutas estáticas corregidas
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  # Define la ruta raíz de la aplicación
  root "static_pages#home"
end
