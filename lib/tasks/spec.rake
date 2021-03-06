begin
  require 'colorize'
  require 'rspec/core/rake_task'

  Rake::Task[:spec].clear

  namespace :spec do
    RSpec::Core::RakeTask.new(:unit) do |t|
      t.pattern = 'spec/unit/**/*_spec.rb'
    end

    RSpec::Core::RakeTask.new(:functional) do |t|
      t.pattern = 'spec/functional/**/*_spec.rb'
    end
  end

  desc "Run all spec"
  task :spec do
    Rake::Task['spec:unit'].invoke
    puts "...All unit tests passed...".green
    puts "...Functional tests begin...".green

    Rake::Task['spec:functional'].invoke
    puts "...All unit and functional tests passed...".green
  end
  
  rescue LoadError
end
