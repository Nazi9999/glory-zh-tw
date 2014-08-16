TraditionalChineseWebsite::Application.routes.draw do
  devise_for :users
  namespace :admin do
    root :to => "base#index"
    resources :artists, :except => :show
    resources :locations, :except => :show
    resources :sixbooks, :except => :show
    resources :sixbook_categories, :only => [:index, :edit, :update]
  end
end
