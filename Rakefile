task default: %w[beer]

desc "Compile beer list"
task :compile_beer do
  sh "ruby generate.rb lists/beer_cider.yaml templates/beer_cider.haml > outfiles/beer.html"
end

desc "Preview beer list in browser"
task :beer => [:compile_beer] do
  sh "open outfiles/beer.html"
end

desc "Compile drink list"
task :compile_drinks do
  sh "ruby generate.rb lists/drinks.json templates/drinks.haml > outfiles/drinks.html"
end

desc "Preview drink list in browser"
task :drinks => [:compile_drinks] do
  sh "open outfiles/drinks.html"
end
