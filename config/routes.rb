Refinery::Core::Engine.routes.draw do
  get '/home', to: 'markdown/home#index'
end
