require 'launchy'

search = ARGV
abort("Ecris quelque chose que je vais googler!") if ARGV.empty?
Launchy.open("https://www.google.com/search?q=#{search.join("+")}")
