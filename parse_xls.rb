require 'rubyXL'
require 'json'

SHEET_PATH = '<RELATIVE-PATH-TO-XLSX>'.freeze
SHEET_NAME = '<SHEET-NAME>'.freeze

workbook = RubyXL::Parser.parse(SHEET_PATH)

obj_array = []

(0..14).each do |i|
  caracteristic = {
    name: workbook[SHEET_NAME][0][i].value,
    values: []
  }
  workbook[SHEET_NAME].drop(1).each do |row|
    caracteristic[:values] << row[i].value.to_s unless row[i].nil? || row[i].value.nil? || row[i].value.empty?
  end
  obj_array << caracteristic
end

puts obj_array

File.open('file.json', 'w+') do |f|
  f << obj_array.to_json
end
