Rails.application.routes.draw do
  scope "projects" do
    get 'balistics' => 'balistics#index'
    get 'quiz' => 'quiz#index'
  end
  post 'balistics/distance_above' => 'balistics#calculate_distance_above'
  root 'home#index'
end
