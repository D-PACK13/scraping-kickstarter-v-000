require 'nokogiri'
require 'pry'

+def create_project_hash
-kickstarter = Nokogiri::HTML(html)	+  html = File.read('fixtures/kickstarter.html')
-	+  kickstarter = Nokogiri::HTML(html)
-projects = {}	+
-	+  projects = {}
-kickstarter.css("li.project.grid_4").each do |project|	+
-  title = project.css("h2.bbcard_name strong a").text.to_sym	+  kickstarter.css("li.project.grid_4").each do |project|
-  projects[title] = {	+    title = project.css("h2.bbcard_name strong a").text
-    :image_link => project.css("div.project-thumbnail a img").attribute("src").value,	+    projects[title] = {
-    :description => project.css("p.bbcard_blurb").text,	+      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
-    :location => project.css("ul.project-meta span.location-name").text,	+      :description => project.css("p.bbcard_blurb").text,
-    :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i	+      :location => project.css("ul.project-meta span.location-name").text,
-  }	+      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
+    }
+  end
 end	 end

