Rails.application.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :simple_comments
  end

  resources :simple_comments
end
