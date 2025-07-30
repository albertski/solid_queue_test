class HighJob < ApplicationJob
  queue_as :high

  def perform(*args)
    sleep(2)
    Rails.logger.info "[HIGH] Job executed at #{Time.current}"
  end
end
