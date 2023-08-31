Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # If you have a dedicated config/environments/staging.rb
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Defines the root path route ("/")
  root "root#index"
  post "/", to: "root#create"
  post 'send_email', to: 'notification_mailer#send_email'
end
