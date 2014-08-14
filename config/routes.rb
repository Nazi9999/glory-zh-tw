TraditionalChineseWebsite::Application.routes.draw do
  devise_for :users
  namespace :admin do
    root :to => "base#index"
    resources :sixbooks, :except => :show
  end
end
