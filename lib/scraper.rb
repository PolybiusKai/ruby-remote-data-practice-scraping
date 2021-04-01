require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
html2 = open("https://flatironschool.com/our-courses/")

doc = Nokogiri::HTML(html)
doc2 = Nokogiri::HTML(html2)

#puts doc.css(".headline-26OIBN").text.strip  
puts doc2.css(".text-4GLMvr")[5].children.first.text
courses = doc2.css(".text-4GLMvr")

def all(courses)
    courses.each do |course|
    puts course.text.strip
    end 
end