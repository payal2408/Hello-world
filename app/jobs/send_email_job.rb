class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(demo)
     @demo = demo
    ExampleMailer.sample_email(@demo).deliver_later
  end
end
