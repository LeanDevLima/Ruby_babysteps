require 'nokogiri'

html_content = File.read('example.html')

doc = Nokogiri::HTML(html_content)

p_elements = doc.css('p')

if p_elements.empty?
  puts 'Nenhum elemento <p> encontrado.'
else
  p_elements.each do |p_element|
    puts p_element.text
  end
end