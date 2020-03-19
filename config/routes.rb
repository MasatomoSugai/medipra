Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "products#index"
get 'search', to: 'products#search'
get 'samedrugsearch', to: 'products#samedrugsearch'
get 'about_medipra', to: 'products#about_medipra'
get 'contact', to: 'products#contact'

end
