Rails.application.routes.draw do

  get 'mission' => "pages#mission"
  post 'mission' => "pages#mission"

  root to: "pages#splash"
end
