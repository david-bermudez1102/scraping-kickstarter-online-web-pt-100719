require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = kickstarter.css("li.project.grid_4")
  final_hash = {}

  projects.each { |project|
    final_hash[project.css("h2.bbcard_name strong a").text] = "Hello"
  }
  binding.pry
  final_hash
end
create_project_hash
