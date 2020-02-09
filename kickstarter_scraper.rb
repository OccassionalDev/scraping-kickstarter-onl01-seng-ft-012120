# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  
  binding.pry
  
end

#Projects:
#kickstarter.css("li.project.grid_4")

#Title: 
#project.css("h2.bbcard_name strong a").text

#Image:
#project.css("div.project-thumbnail a img").attribute("src").value

#Description:
#project.css("p.bbcard_blurb").text

#Location: 
#project.css("span.")

