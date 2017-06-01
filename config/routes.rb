Rails.application.routes.draw do
  resources :semesters, shallow: true do
    resources :courses
  end
end
