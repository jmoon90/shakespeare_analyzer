require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

@macbeth = 0
@banquo = 0
@angus = 0
@duncan = 0
xml = Nokogiri::XML(open('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml'))
xml.xpath("//ACT").each do |node|
  node.xpath('//SPEECH').each do |speech|
    if speech.xpath('//SPEAKER')
      speech
    end
   #@macbeth += 1 if array.children[0].to_s.include?("MACBETH")
   #@banquo += 1 if array.children[0].to_s.include?("BANQUO")
   #@angus += 1 if array.children[0].to_s.include?("ANGUS")
   #@duncan += 1 if array.children[0].to_s.include?("DUNCAN")
  end
end


puts "We found Macbeth #{@macbeth} times"
puts "We found Banquo #{@banquo} times"
puts "We found Angus #{@angus} times"
puts "We found Duncan #{@duncan} times"



