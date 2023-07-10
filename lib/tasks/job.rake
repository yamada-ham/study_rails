namespace :job do
  desc "TODO"
  task test: :environment do
    puts "rake test!!!";
    TestJob.perform_now
  end

end
