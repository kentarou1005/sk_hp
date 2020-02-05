Rails.application.routes.draw do
  devise_for :users
  resources :myfiles
  get 'blog/index'
  get 'link/index'
  get 'reprint/index'
  get 'studies/index'
  get 'seminar/index'
  get 'law_school/index'
  resources :lectures, only: [:index, :new, :create] 
  # get 'lecture/index'
  get 'lectures/form'
  # post 'lecture/create'

  resources :studies, only: [:index, :new, :create]

  # get 'lectures/downloadpdf/download'=> 'lectures#downloadpdf'
  get 'myfiles/downloadpdf/:id'=> 'myfiles#downloadpdf' ,as: :donwload_pdf
  
  # get 'law_school/index'

  # get 'law_school', :to => 'law_school/index'

  root "main_page#index"


  # devise

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
end
