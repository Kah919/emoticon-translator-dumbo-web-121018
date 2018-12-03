# require modules here
require 'pry'
require "yaml"

def load_library(file_path)
  # code goes here
  translator = { # hash key should point to the inner hashes
    "get_meaning" => {}, # keys inside should be japanese emojis =>  points to their meaning
    "get_emoticon" => {} # the emoticon keys(english version) => points to japanese equivalents
  }
  YAML.load_file(file_path).each do |meaning, array|
    translator["get_meaning"] = array[1]
    translator["get_emoticon"] = array[0]
  end
  translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
