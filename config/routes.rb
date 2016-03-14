Rails.application.routes.draw do

root to: "pages#index"


namespace :management do
		resources :item_categories
		resources :item_types
		resources :employees
		resources :items
		resources :companies
end

end
