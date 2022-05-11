Rails.application.routes.draw do
  resources :photo_sets
  resources :columned_bies do
  collection { post :import }
  end
  resources :photo_bies do
    collection { post :import }
  end
  resources :fees do
    collection { post :import }
  end
  resources :photos
  resources :aquaria do
    collection { post :import }
  end
  resources :creatures do
    collection { post :import }
  end
  resources :category_seconds do
    collection { post :import }
  end
  resources :categories do
    collection { post :import }
  end
  
  get "category/:id/cat2_new", to: "category_seconds#new", as: "second_new"
  get "category_second/:id/creature_new", to:"creatures#new", as: "creature_new"
  get "Maregiment/top", to:"maregiment#top", as:"maregiment"

  #まれまれアクアリウム側のルーティング
  get "MaremareAquarium/top", to: "maremare_aquarium#top", as:"top"
  get "MaremareAquarium/column", to: "maremare_aquarium#column", as:"column"
  get "MaremareAquarium/writer", to: "maremare_aquarium#writer", as:"writer"
  get "MaremareAquarium/information", to: "maremare_aquarium#information", as:"information"

  get "MaremareAquarium/dictionary/:id", to: "maremare_aquarium#dictionary", as:"dictionary"


end
