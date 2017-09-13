Rails.application.routes.draw do
  scope 'auth' do
    devise_for :parents
    devise_for :teachers
  end

  resources :parents
  resources :teachers

  root 'dashboard#index'
end
