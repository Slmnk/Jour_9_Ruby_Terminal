def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end


def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(name)
  Dir.mkdir(name)
end


def perform
  check_if_user_gave_input
  create_folder(get_folder_name)
end

perform


file = File.open("PROGRAMME_THP/Jour_9_Ruby_Terminal/Gemfile", "droits")
file = File.open("PROGRAMME_THP/Jour_9_Ruby_Terminal/fichier.extension", "droits")

file = File.open("PROGRAMME_THP/Jour_9_Ruby_Terminal/Gemfile", "w+")
file.puts("source "https://rubygems.org"
ruby '2.5.1'
gem 'rspec'
gem 'pry'
gem 'rubocop'
gem 'dotenv'")file.close

file = File.open("PROGRAMME_THP/Jour_9_Ruby_Terminal/.env", "w+")
file.close
