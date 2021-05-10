Rails.application.routes.draw do
  root to: "posts#index"
  get '/new', to: 'posts#new', as: 'posts'
  post '/new', to: 'posts#create'
  get '/:id', to: 'posts#show', as: "show"
  get "/:id/edit", to: 'posts#edit', as: "edit"
  patch '/:id/edit', to: 'posts#update'
  delete '/:id', to: 'posts#destroy', as: "delete"
end
