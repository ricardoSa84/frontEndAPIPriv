Rails.application.routes.draw do

scope module: 'api' do
		namespace :v1 do
		  post 'login' => 'application#login'
		  post 'logout' => 'application#logout'


		  resources :users

		  	resources :schools do
		  		resources :courses
		  end

			resources :schools 
			resources :courses
		  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		end
	end
end

