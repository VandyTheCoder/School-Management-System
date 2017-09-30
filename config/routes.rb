Rails.application.routes.draw do

  scope 'auth' do
    devise_for :parents
    devise_for :teachers
    devise_for :students
    devise_for :users
  end

  resources :users
  resources :parents
  resources :teachers
  resources :exam_categories
  resources :grades

  resources :students
  resources :exams
  resources :courses
  resources :attendances
  resources :classrooms

  root 'dashboard#index'
  
end
