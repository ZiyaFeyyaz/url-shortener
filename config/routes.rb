Rails.application.routes.draw do
  root 'sites#index'
  get '/:short_path', to: 'sites#goto_origin_url'
  get '/sites/generate_short_path', to: 'sites#generate_short_path'
  resources :sites
end
