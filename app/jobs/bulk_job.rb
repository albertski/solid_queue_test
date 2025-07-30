class BulkJob < ApplicationJob
  queue_as :bulk

  def perform(*args)
    sleep(5)
    Rails.logger.info "[BULK] Job executed at #{Time.current}"
  end
end
