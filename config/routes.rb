Rails.application.routes.draw do
  get 'posts/index'

  devise_for :users
  root 'posts#index' 

  # class HomeController
  # root 'home#top'  # This is the assignment in the 1st class.

  # class ArticlesController
  #     articles GET    /articles(.:format)          articles#index
  #              POST   /articles(.:format)          articles#create
  #  new_article GET    /articles/new(.:format)      articles#new
  # edit_article GET    /articles/:id/edit(.:format) articles#edit
  #      article GET    /articles/:id(.:format)      articles#show
  #              PATCH  /articles/:id(.:format)      articles#update
  #              PUT    /articles/:id(.:format)      articles#update
  #              DELETE /articles/:id(.:format)      articles#destroy
  resources :articles

end
