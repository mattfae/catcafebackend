Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :patrons
  resources :accessories
  resources :cat_breeds
  resources :accessory_sponsorships
  resources :cat_breed_sponsorships

end
