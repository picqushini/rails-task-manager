Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks

  # # As a user, I can list tasks
  # get '/tasks', to: 'tasks#index'

  # # As a user, I can add a new task (show form)
  # get '/tasks/new', to: 'tasks#new', as: :new_task

  # # As a user, I can view the details of a task
  # get '/tasks/:id', to: 'tasks#show', as: :task

  # # As a user, I can add a new task (submit form)
  # post '/tasks', to: 'tasks#create'

  # # As a user, I can edit a task (see the form)
  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # # As a user, I can edit a task (submit the form)
  # patch '/tasks/:id', to: 'tasks#update'

  # # As a user, I can remove a task
  # delete '/tasks/:id', to: 'tasks#destroy'
end
