Rails.application.routes.draw do

  get 'mission' => "pages#mission"

  root to: "pages#splash"
end
