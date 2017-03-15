task default: %w[preview]

desc "Compile beer list"
task :compile do
  sh "ruby generate.rb lists/beer_cider.yaml templates/beer_cider.haml > outfiles/beer.html"
end

desc "Preview beer list in browser"
task :preview => [:compile] do
  sh "open outfiles/beer.html"
end
