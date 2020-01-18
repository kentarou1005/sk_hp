Rails.application.routes.draw do
  resources :myfiles
  get 'blog/index'
  get 'link/index'
  get 'reprint/index'
  get 'studies/index'
  get 'seminar/index'

  resources :lectures, only: [:index, :new, :create] 
  # get 'lecture/index'
  get 'lectures/form'
  # post 'lecture/create'

  resources :studies, only: [:index, :new, :create]

  # get 'lectures/downloadpdf/download'=> 'lectures#downloadpdf'
  get 'myfiles/downloadpdf/:id'=> 'myfiles#downloadpdf' ,as: :donwload_pdf
  
  get 'law_school/index'

  root "main_page#index"
end
