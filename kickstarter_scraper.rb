# require libraries/modules here
require 'nokogiri'
require 'pry'

#Projects:
#kickstarter.css("li.project.grid_4")

#Title: 
#project.css("h2.bbcard_name strong a").text

#Image:
#project.css("div.project-thumbnail a img").attribute("src").value

#Description:
#project.css("p.bbcard_blurb").text

#Location: 
#project.css("ul.project-meta span.location-name").text

#Percent:
#project.css("ul.project-stats li.first.funded strong").text

def create_project_hash
  # write your code here
  
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  
  projects = {} 
  
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name stronga").text
    
    projects[title.to_sym] = {
      
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      
      :description => project.css("p.bbcard_blurb").text,
      
      :location
      
      
      
      
    }
  end 
  
  projects 
end

create_project_hash