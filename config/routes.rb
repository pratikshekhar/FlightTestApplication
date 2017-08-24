Rails.application.routes.draw do
  resources :todo_lists do
    collection do
      match 'search' => 'todo_lists#search', via: [:get, :post], as: :search
    end
  end

  root 'todo_lists#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
