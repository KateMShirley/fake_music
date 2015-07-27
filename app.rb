require 'bundler'
Bundler.require()


get '/' do
  json_index
end

def json_index
  {:name => 'Kate Shirley', :message => 'Welcome to my fake music database! Navigate to /blank_space , /gangnam_style or /kicks to learn more. '}.to_json
end


def song(title, release_year, artist)
  {:name => title.to_s, :release_year => release_year.to_s, :description => artist.to_s}.to_json
end

get '/blank_space' do
  song('blank_space', 2015, 'Taylor Swift')
end

get '/gangnam_style' do
  song('Gangnam Style', 2012, 'Psy')

end

get '/kicks' do
  song('Pumped Up Kicks', 2013, 'Foster the People')
end
