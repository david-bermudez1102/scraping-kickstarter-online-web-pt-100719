require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = nokogiri::HTML(html)
  projects = {}

  kickstarter.each { |post|
    projects[post.css("h2.bbcard_name strong a").text] = "Hello"
  }
end
