Rails.application.routes.draw do
  resources :videos

  devise_for :users, 
    path: '', 
    path_names: { 
      sign_in: 'entrar', 
      sign_out: 'sair', 
      password: 'secret', 
      confirmation: 'verification', 
      unlock: 'unblock', 
      registration: 'novo', 
      sign_up: 'cadastrar' }  

  get "play/:id", controller: "home", action: "play", as: "play"
  put "videos/updateview/:id", controller: "videos", action: "updateview", as: "updateview"
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
