Rails.application.routes.draw do
  # # class HomeController
  # root 'home#top'

  # # class ArticlesController
  # get '/articles' => 'articles#index'
  resources :articles
end
