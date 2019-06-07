Rails.application.routes.draw do
    # LISTS
    get '/lists', to: 'lists#index'
    get '/lists/:id', to: 'lists#show'
    post '/lists', to: 'lists#create'
    put '/lists/:id', to: 'lists#update'
    delete '/lists/:id', to: 'lists#delete'
end
