class Server

  @@server_instances = []
  attr_accessor :address, :session_store

  def initialize(address)
    self.address = address
    self.session_store = {}
    @@server_instances << self
  end

  def self.server_instances
    @@server_instances
  end

  def self.find_server_instance(address)
    @@server_instances.each do |server|
      return true if server.address == address
    end
  end

  def assign_cookie()
  end

  def authenticate_cookie()
  end

end
