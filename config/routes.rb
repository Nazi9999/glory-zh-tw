TraditionalChineseWebsite::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  namespace :admin do
    root :to => "base#index"
    resources :artists, :except => :show do
      resources :creations, :except => :show
    end
    resources :locations, :except => :show
    resources :sixbooks, :except => :show
    resources :sixbook_categories, :only => [:index, :edit, :update]
    resources :dictionaries, :except => :show do
      resources :games, :except => :show
    end
    resources :users, :except => :show
    resources :questions
    resources :options do
      get :foo, on: :collection
    end
  end
end
