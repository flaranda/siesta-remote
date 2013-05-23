SiestaRemote::Application.routes.draw do
  root to: "remote#show"
  post '/pusher/auth' => 'pusher#auth'
end
