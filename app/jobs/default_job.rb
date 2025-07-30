class DefaultJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep(3)
    Rails.logger.info "[DEFAULT] Job executed at #{Time.current}"
  end
end
