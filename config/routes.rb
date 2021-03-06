Rails.application.routes.draw do
  root to: 'courses#index'
  devise_for :users

  resources :courses, only: [:show], path: "" do # => TODO: friendly-id
    resources :chapters, only: [:show], path: "" do # => TODO: add simply the name
      resources :items, only: [:show], path: "" # => friendly-id
    end
  end

end


# home: featured
# all courses
# one course: all chapters + progression
# one chapter: all items + progression
# one item: itself => mixed route ?
# => /ruby-on-rails/chapter/1-models/