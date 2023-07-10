class TestJob < ApplicationJob
  queue_as :default

  def perform()
    Rails.logger.debug("job実行!! #{Time.now}");
  end
end
