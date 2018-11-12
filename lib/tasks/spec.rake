require 'colorize'

Rake::Task[:spec].clear

desc "Run all spec"
task :spec do
  Rake::Task['spec:controllers'].invoke
  puts "...All unit tests passed...".green
  puts "...Integration tests begin...".green
  Rake::Task['spec:requests'].invoke
  puts "...All unit and integration tests passed...".green
end
