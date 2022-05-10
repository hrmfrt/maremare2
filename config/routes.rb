Rails.application.routes.draw do
  resources :photo_sets
  resources :columned_bies
  resources :photo_bies
  resources :fees
  resources :photos
  resources :aquaria do
    collection { post :import }
  end
  resources :creatures do
    collection { post :import }
  end
  resources :category_seconds
  resources :categories
  
  get "category/:id/cat2_new", to: "category_seconds#new", as: "second_new"
  get "category_second/:id/creature_new", to:"creatures#new", as: "creature_new"
  get "Maregiment/top", to:"maregiment#top", as:"maregiment"

  #まれまれアクアリウム側のルーティング
  get "MaremareAquarium/top", to: "maremare_aquarium#top", as:"top"
  get "MaremareAquarium/column", to: "maremare_aquarium#column", as:"column"
  get "MaremareAquarium/writer", to: "maremare_aquarium#writer", as:"writer"
  get "MaremareAquarium/information", to: "maremare_aquarium#information", as:"information"

  get "MaremareAquarium/:id", to: "maremare_aquarium#dictionary", as:"dictionary"


end
