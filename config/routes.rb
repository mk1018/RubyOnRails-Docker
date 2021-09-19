Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/hello', to: 'test#hello'

  Rails.application.routes.draw do
    resources :my_address
    resources :public_address
  end

end
