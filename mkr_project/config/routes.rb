Rails.application.routes.draw do
  get 'contacts/index'
  get 'posts/index'
  root 'welcome#index'
  get 'about', to: 'welcome#about', as: :about
  get 'welcome/index' => 'welcome#index', :as => 'welcome_index'
  resources :posts
  resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
