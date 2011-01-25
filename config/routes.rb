WikiSigns::Application.routes.draw do |map|
  # Root
  root :to => "words#index"

  # Words
  resources :words, :except => [:destroy, :edit, :update] do
    collection do
      get 'random'
      post 'new_word'
    end
  end

  
end
