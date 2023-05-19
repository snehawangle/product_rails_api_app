Rails.application.routes.draw do
  scope '/api/version1' do
    resources :products
  end
end