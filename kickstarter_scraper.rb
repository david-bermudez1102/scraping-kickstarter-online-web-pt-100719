require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}

  kickstarter.each { |post|
    projects[post.css("h2.bbcard_name strong a").text] = "Hello"
  }
  binding.pry
  projects
end
create_project_hash
