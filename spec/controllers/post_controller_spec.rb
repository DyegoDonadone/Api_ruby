ENV['RAILS_ENV'] ||= 'development'
require_relative '../../config/environment'
require_relative '../spec_helper'

RSpec.describe "Model Posts -", :type => :request do
  it 'Busca posts' do
     post = Post.all

     i = post.count
   end
end

#------------------------------------------------------
RSpec.describe "API -", :type => :request do

  it 'Dados Json URL' do
    url = 'http://10.1.1.31:3000/api/v1/posts'
    request = RestClient.get(url, headers)
    JSON.parse(request.body)
    
  end
end

RSpec.describe "API-A -", :type => :request do

  it 'Dados Json URL' do
    url = 'http://10.1.1.31:3000/api/v1/posts?id=_a'
    request = RestClient.get(url, headers)
    JSON.parse(request.body)
  end
end

def headers
  {
    'Accept': 'application/json',
    'Content-type': 'application/json',
    'ACCOUNT_ID': @account_id,
    #'Authorization': "Basic #{authorization_hash}:X"
  }
end
#---------------------------------------------------------
RSpec.describe "Model User", :type => :request do
  it 'Busca user' do
     user = User.all

     i = user.count

   end
end
#-----------------------------------------------------------
