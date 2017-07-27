module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
  

    def connect
    end

    def disconnect
    end


  end
  protected

    def find_verified_user
      if verified_user = requets.env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end
    

end
