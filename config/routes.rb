Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Display all
  get '/articles', to: 'article#index'

  # Create Article
  get '/articles/new', to: 'article#new'

  post '/articles', to: 'article#create'

  # Update

  get '/articles/:id/edit', to: 'article#edit'

  patch '/articles/:id', to: 'article#update'

  # Destroy

  delete '/articles/:id', to: "article#destroy"

  # Display only one.
  get '/articles/:id', to: 'article#show', as: :article
end
