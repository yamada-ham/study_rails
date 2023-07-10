class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.debug("job実行!! #{Time.now}");
  end
end
