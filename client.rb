

class Client

  attr_accessor :id, :cookie

  def initialize(id)
    self.id = id
  end

  def visit_server(address)
    Server.send(:find_server_instance, address)
  end

  def send_cookie(address)
  end

  def receive_cookie
  end

end

