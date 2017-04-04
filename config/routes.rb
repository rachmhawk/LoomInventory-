Rails.application.routes.draw do
  get 'search' => 'search#index', as: 'search'

  #get 'search/index'=> 'items#search', as: 'search/index'

  resources :item_inventories
  resources :items
  resources :fabrics
  resources :products

  get 'search/new'
  #get 'search/Item.search(search)'

  #items.search
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
