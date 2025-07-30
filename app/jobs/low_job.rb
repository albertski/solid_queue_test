class LowJob < ApplicationJob
  queue_as :low

  def perform(*args)
    sleep(5)
    Rails.logger.info "[LOW] Job executed at #{Time.current}"
  end
end
