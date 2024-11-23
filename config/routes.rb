Rails.application.routes.draw do

  get "lists", to: "lists#index"
  get "lists/:id", to: "lists#show", as: :list

  # create new task, nested under lists
  resources :lists, only:[] do
    resources :tasks, only:[:new, :create]
  end
end
