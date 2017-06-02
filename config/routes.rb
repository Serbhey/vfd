Rails.application.routes.draw do
  get 'news/index'

  get 'news/new'

  get 'news/create'

  get 'news/update'

  get 'news/edit'

  get 'news/destroy'

  get 'news/show'

  get 'new/index'

  get 'new/new'

  get 'new/create'

  get 'new/update'

  get 'new/edit'

  get 'new/destroy'

  get 'new/show'

  get 'new_controller/index'

  get 'new_controller/new'

  get 'new_controller/create'

  get 'new_controller/update'

  get 'new_controller/edit'

  get 'new_controller/destroy'

  get 'new_controller/show'

  get 'admin_user/index'

  get 'admin_user/new'

  get 'admin_user/create'

  get 'admin_user/update'

  get 'admin_user/edit'

  get 'admin_user/destroy'

  get 'admin_user/show'

  get 'welcome/index'

  get 'welcome/new'

  get 'welcome/create'

  get 'welcome/update'

  get 'welcome/edit'

  get 'welcome/destroy'

  get 'welcome/shoadmin_user'

  devise_for :userrails
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'bukets#index'
  resources :flowers
  resources :bukets
end
