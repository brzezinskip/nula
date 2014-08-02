namespace :songs do
  desc "Fetch Radio nula xml file"
  task fetch: :environment do |task|
    FetchXml.new.notify()
  end
end
