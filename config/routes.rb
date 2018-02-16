Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #default: {format: :json} -> Define o MimeType de comunicação com o servidor
  #constraints: { subdomain: 'api' } -> Define um subdomínio para o namespace
  #path: "/" -> renomeia o path do namespace, o que ficaria host/api/whatever, ficará api.host/whatever
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api'}, path: "/" do
    namespace :v1 do
      resources :tasks
    end
  end
end
