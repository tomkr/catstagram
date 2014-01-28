Catstagram::Application.routes.draw do
  root 'app#index'

  scope '/api' do
    resources :cats
  end
end
