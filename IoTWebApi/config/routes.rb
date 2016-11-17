Rails.application.routes.draw do

  	resources :schools do
  		resources :courses
	end

	resources :schools 
	resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
