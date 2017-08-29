Rails.application.routes.draw do
  get 'posts/index'

  devise_for :users
  root 'articles#new'

  # For devise7s sign_out activation 
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :articles

  #                   Prefix Verb   URI Pattern                    Controller#Action
  #              posts_index GET    /posts/index(.:format)         posts#index
  #         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
  #             user_session POST   /users/sign_in(.:format)       devise/sessions#create
  #     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
  #        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
  #       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
  #            user_password PATCH  /users/password(.:format)      devise/passwords#update
  #                          PUT    /users/password(.:format)      devise/passwords#update
  #                          POST   /users/password(.:format)      devise/passwords#create
  # cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
  #    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  #   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
  #        user_registration PATCH  /users(.:format)               devise/registrations#update
  #                          PUT    /users(.:format)               devise/registrations#update
  #                          DELETE /users(.:format)               devise/registrations#destroy
  #                          POST   /users(.:format)               devise/registrations#create
  #                     root GET    /                              articles#new
  #           users_sign_out GET    /users/sign_out(.:format)      devise/sessions#destroy
  #                 articles GET    /articles(.:format)            articles#index
  #                          POST   /articles(.:format)            articles#create
  #              new_article GET    /articles/new(.:format)        articles#new
  #             edit_article GET    /articles/:id/edit(.:format)   articles#edit
  #                  article GET    /articles/:id(.:format)        articles#show
  #                          PATCH  /articles/:id(.:format)        articles#update
  #                          PUT    /articles/:id(.:format)        articles#update
  #                          DELETE /articles/:id(.:format)        articles#destroy
end
