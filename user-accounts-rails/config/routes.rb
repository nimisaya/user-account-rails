Rails.application.routes.draw do

    # # Root path
    # root to: 'pages#home'

    # Create routes for users
    # users     GET    /users(.:format)          users#index
    #           POST   /users(.:format)          users#create
    # new_user  GET    /users/new(.:format)      users#new
    # edit_user GET    /users/:id/edit(.:format) users#edit
    # user      GET    /users/:id(.:format)      users#show
    #           PATCH  /users/:id(.:format)      users#update
    #           PUT    /users/:id(.:format)      users#update
    #           DELETE /users/:id(.:format)      users#destroy
    resources :users

    # Login/logout routes
    get '/login'  => 'session#new'        # showing the login form
    post '/login' => 'session#create'     # form submits to here, performs login, redirects
    delete '/login' => 'session#destroy'  # logout link goes here, perform logout, redirect
  
end
