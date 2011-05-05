FeatureTranslator::Application.routes.draw do
  get "pages/index"
  post "pages/index"
  root :to => "pages#index"
end
