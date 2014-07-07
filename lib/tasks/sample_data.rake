namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_projects
    make_clients
  end
end
=begin
def sd
  Date.new(Random.new.rand(2010..2011),Random.new.rand(1..12),Random.new.rand(1..30)).strftime("%m-%d-%Y")
end

def dd
  Date.new(Random.new.rand(2011..2012),Random.new.rand(1..12),Random.new.rand(1..30)).strftime("%m-%d-%Y")
end

def ed
  Date.new(Random.new.rand(2011..2012),Random.new.rand(1..12),Random.new.rand(1..30)).strftime("%m-%d-%Y")
end
=end
def make_projects
  30.times do |n|
    Project.create!(name: Faker::Name.name,
                 code: "code-#{n+1}",
                 description: "Description-#{n+1}",
                 billing_type: ["TNM","FIXED"].sample,
                 start_date: "#{rand(1..30).to_s}-#{rand(1..12).to_s}-#{rand(2010..2011).to_s}",
                 deadline_date: "#{rand(1..30).to_s}-#{rand(1..12).to_s}-#{rand(2011..2012).to_s}",
                 end_date: "#{rand(1..30).to_s}-#{rand(1..12).to_s}-#{rand(2011..2012).to_s}",
                 status: ["POC","KICK OFF","COMPLETED"].sample,
                 client_id: [1,2,3,4].sample)
  end
end

def make_clients

    Client.create!(name: "Rishi", city: "Ahmedabad")
    Client.create!(name: "Ravi", city: "Surat")
    Client.create!(name: "Ajay", city: "Rajkot")
    Client.create!(name: "Ankur", city: "Baroda")

end
