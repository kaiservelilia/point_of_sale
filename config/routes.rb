Rails.application.routes.draw do

root to: "pages#index"
resources :companies

namespace :management do
		resources :item_categories
		resources :item_types
		resources :employees
end

end
