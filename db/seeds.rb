require 'ffaker' 
require 'factory_girl'

FactoryGirl.definition_file_paths = [
  File.join(Padrino.root, 'test', 'factories')
]
FactoryGirl.find_definitions

FactoryGirl.create_list(:page, 12)
