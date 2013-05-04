CookiesBlog::Application.routes.draw do

  resources :posts, :only => [:index, :show] do
    resources :coments, :only => [:new, :create]
  end
  root :to => 'posts#index'

end
