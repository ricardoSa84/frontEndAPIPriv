Rails.application.routes.draw do


 #{|params| "/api/" + params[:api] + "_v1"}, via: :all

#match "/api-docs" => redirect(status: 302),  via: [:get]


  resources :disciplines
scope module: 'api' do
		namespace :v1 do

		  	post 'login' => 'api#login'
		  	post 'logout' => 'api#logout'
		  	match 'resetApiToken/:id' => 'users#resetApiToken', via: [:get]
			match 'isUserPassword/:id' => 'users#isUserPassword', via: [:post]

			resources :users

			resources :schools do
				resources :courses
			end

		 	resources :schools do
				resources :rooms
			end

			resources :courses do
				resources :disciplines
			end

  			resources :roles
			resources :schools 
			resources :courses
			resources :degrees
			resources :rooms
			resources :disciplines

			#match "/api-docs" => redirect('/api-docs.json'), via: [:get]


		  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
		end
	end
end

