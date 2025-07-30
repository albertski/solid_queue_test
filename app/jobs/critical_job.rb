class CriticalJob < ApplicationJob
  queue_as :critical

  def perform(*args)
    sleep(1)
    Rails.logger.info "[CRITICAL] Job executed at #{Time.current}"
  end
end
