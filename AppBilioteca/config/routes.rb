Rails.application.routes.draw do
  resources :prestamos do
    resources :libros do
      resources :autors
    end
  end
  resources :libros
  resources :clientes
  resources :autors do
    resources :libros
  end
end
