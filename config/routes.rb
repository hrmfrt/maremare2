Rails.application.routes.draw do
  resources :photo_sets
  resources :columned_bies
  resources :photo_bies
  resources :fees
  resources :photos
  resources :aquaria
  resources :creatures
  resources :category_seconds
  resources :categories
  
  get "category/:id/cat2_new", to: "category_seconds#new", as: "second_new"
  get "category_second/:id/creature_new", to:"creatures#new", as: "creature_new"
  get "Maregiment/top", to:"maregiment#top", as:"maregiment"
end
