namespace :dev do

  task :fake => :environment do
    User.destroy_all
    user = User.create :name => "noelsaga", :sex => true, :birth => Date.today - 26.year, :email => "admin@noelsaga.net", :password => "88527788", :description => "King of the world!"
  end
  
end