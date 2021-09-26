Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  resources :publishers # resources 複数存在するリソースに使用する
  resource :profile, only: %i{show edit update}
end
