Rails.application.routes.draw do
	get "/", to: "articles#index", as: "root"
  	get 'homepage/home'

  	resources 'pages'
  	get 'about', to: 'pages#about'

  	resources 'articles'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
