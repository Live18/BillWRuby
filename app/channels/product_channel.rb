class ProductChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "product_channel" commented out for 6.14
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def listen (data)
    stop_all_streams
    stream_for data["product_id"]
  end

end
