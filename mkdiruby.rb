# Gem required
require 'pry'
require 'les gems'


# ===================> BEGINNING OF PROGRAM <===================

def check_if_user_gave_input
    abort("Please right the name of the folder after the name of your first ruby file to create") if ARGV.empty?
end

def get_folder_name
    return folder_name = ARGV.first
end

#Création d'un dossier qui porte le nom de l'ARGV de l'utilisateur
def create_folder(name)
    Dir.mkdir("/PROGRAMME_THP/#{name}")
    puts "Ok dossier projet créé"
end

#Création du Gemfile avec les gems de THP

#Création du Dossier lib avec le fichier ruby
def lib_creation
    Dir.mkdir("/PROGRAMME_THP/#{name}/lib")
end

#Création du rpec
def rspec
    system("rspec --init")
end

#Création des fichiers
def setup_file_creation(project_name)

    #initialisation des fichiers
    README = File.open("PROGRAMME_THP/#{project_name}/README.md", "w")
    Gemfile = File.open("PROGRAMME_THP/#{project_name}/Gemfile.md", "w")
    gitignore = File.open("PROGRAMME_THP/#{project_name}/.gitignore", "w")
    env = File.open("PROGRAMME_THP/#{project_name}/.env", "w")

    #remplissage des fichiers
    README.puts "Voici le projet #{project_name}"
    Gemfile.puts "'source ""https://rubygems.org'"
    Gemfile.puts "'ruby '2.5.1'"
    Gemfile.puts "'gem 'rubocop'"
    Gemfile.puts "'gem 'rspec'"
    Gemfile.puts "'gem 'nokogiri'"
    Gemfile.puts "'gem 'launchy'"


end




# =====================> END OF PROGRAM <=======================


def perform
    check_if_user_gave_input
    x = get_folder_name
    create_folder(x)
    setup_file_creation(x)
    rspec
    lib_creation
end

perform
