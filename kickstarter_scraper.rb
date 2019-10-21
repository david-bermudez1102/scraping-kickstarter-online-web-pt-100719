require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = kickstarter.css("li.project.grid_4")
  final_hash = {}

  pprojects.each { |project|
    projects[post.css("h2.bbcard_name strong a").text] = "Hello"
  }
  binding.pry
  projects
end
create_project_hash
