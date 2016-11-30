Rails.application.routes.draw do


  resources :rooms
  resources :degrees
scope module: 'api' do
		namespace :v1 do

		  	post 'login' => 'api#login'
		  	post 'logout' => 'api#logout'


			resources :users

			resources :schools do
				resources :courses
			end

		 	resources :schools do
				resources :rooms
			end

  			resources :roles
			resources :schools 
			resources :courses
			resources :rooms
		  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		end
	end
end

