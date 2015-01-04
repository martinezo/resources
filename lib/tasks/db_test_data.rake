namespace :db do
  desc "Create sample data"
  task :test_data => :environment do
    load File.join(Rails.root, "db", "test_data.rb")
  end

end
