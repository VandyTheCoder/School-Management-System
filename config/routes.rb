Rails.application.routes.draw do
  
  scope 'auth' do
    devise_for :parents
    devise_for :teachers
    devise_for :students
  end

  resources :parents
  resources :teachers
  resources :exam_categories
  resources :grades

  resources :students

  root 'dashboard#index'
end
