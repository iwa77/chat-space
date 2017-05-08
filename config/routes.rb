Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#index'
  resources :groups, only:[:new, :edit, :show, :create,  :update] do
    resources :messages, only: [:index, :new]
  end
end

