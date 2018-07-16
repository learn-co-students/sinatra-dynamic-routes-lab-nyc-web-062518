require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{:name.reverse}"
    response.status = 200
  end

end
