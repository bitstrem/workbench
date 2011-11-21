Workbench::Application.routes.draw do
  devise_for :users

   get "users/new"
   match '/admin', :to => 'pages#admin'
   match '/about',   :to => 'pages#about'
   match '/help',    :to => 'pages#help'
   match '/customer', :to => 'pages#customer'
   match '/tech',   :to => 'pages#tech'
   match '/service',    :to => 'pages#service'
   match '/billing', :to => 'pages#billing'
   root :to => 'pages#home'
end
