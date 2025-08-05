class CleanUpJob < ApplicationJob
  queue_as :low

  def perform(*args)
    Rails.logger.info "[LOW] Cleaned up at #{Time.current}"
  end
end
