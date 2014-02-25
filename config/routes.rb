Catstagram::Application.routes.draw do
  root 'app#index'

  scope '/api' do
    resources :cats
  end

  get '/*cats', to: 'app#index'
end
