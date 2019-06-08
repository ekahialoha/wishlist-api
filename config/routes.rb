Rails.application.routes.draw do
    # LISTS
    get '/lists', to: 'lists#index'
    get '/lists/random', to: 'lists#random'
    get '/lists/:id', to: 'lists#show'
    post '/lists', to: 'lists#create'
    put '/lists/:id', to: 'lists#update'
    delete '/lists/:id', to: 'lists#delete'


    # ITEMS
    post '/items', to: 'items#create'
    put '/items/:id', to: 'items#update'
    delete '/items/:id', to: 'items#delete'
end
