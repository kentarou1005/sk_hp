Rails.application.routes.draw do
  root "main_page#index"

  resources :myfiles

  resources :blog, only: [:index]

  resources :link, only: [:index]

  resources :seminar, only: [:index]

  resources :law_school, only: [:index]

  resources :lectures, only: [:index, :new, :create] 

  resources :studies, only: [:index, :create, :destory] 

  resources :reprint, only: [:index, :create, :destory] 
  get "reprint/list"

  # get 'blog/index'
  # get 'link/index'
  # get 'reprint/index'

  # get 'studies/index'
  delete 'studies/:id' => 'studies#destroy'
  delete 'reprint/:id' => 'reprint#destroy'
  # delete 'studies/destroy'

  # get 'seminar/index'
  # get 'law_school/index'
  

  # get 'lectures/downloadpdf/download'=> 'lectures#downloadpdf'
  # get 'myfiles/downloadpdf/:id'=> 'myfiles#downloadpdf' ,as: :donwload_pdf
  
  # get 'law_school/index'

  # get 'law_school', :to => 'law_school/index'



  # devise

  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions'   
  # } 
  
  # devise_scope :user do
  #   get "user/:id", :to => "users/registrations#detail"
  #   get "signup", :to => "users/registrations#new"
  #   get "login", :to => "users/sessions#new"
  #   get "logout", :to => "users/sessions#destroy"
  # end
  
end
