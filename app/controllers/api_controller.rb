class ApiController < ApplicationController
  def show
    @response = HTTParty.get("https://api.github.com/users/masonfmatthews/events",
           :headers => {
              "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
              "User-Agent" => "User-Agent"})
  end
end
