namespace :db do
  desc "Fill department configuration table"
  task :dept_config => :environment do
    load File.join(Rails.root, "db", "dept_config.rb")
  end

end
