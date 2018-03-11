Rails.application.routes.draw do
  root 'sites#index'
  resources :sites
  get '/:short_path', to: 'sites#goto_origin_url'
end
