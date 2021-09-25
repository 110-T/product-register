Rails.application.routes.draw do
  # localhost:3000にアクセスするとproductsに飛ぶようにする
  root 'products#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
