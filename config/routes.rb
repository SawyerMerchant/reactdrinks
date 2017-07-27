Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #other articles expand on how to secure using json only here
  scope '/api' do
    resources :drinks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
