Rails.application.routes.draw do

  get 'mission' => "pages#mission"
  post '/' => "pages#splash"

  root to: "pages#splash"
end
