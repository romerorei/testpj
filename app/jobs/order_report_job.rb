class OrderReportJob < ApplicationJob
  queue_as :default

  def perform(order_id)
    order = Order.find(order_id)
    # Do something later
    OrderMailer.email_to_store(order).deliver_now
  end
end
