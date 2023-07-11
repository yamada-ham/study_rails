namespace :task_sample do
  desc 'Hello, Rake Task'
  task :hello => :environment do
    system('date >> /var/www/html/study_rails/log/date.log')
  end
end
  