require "./client"
require "./server"

describe Server do
  address = 12345
  subject = Server.new(address)

  describe "#initialize" do

    it "creates a server with an address" do
      subject.address.should == address
      subject.session_store.should == {}
    end

    it "stores the server instance" do
      Server.server_instances[0].should == subject
    end

  end

  describe "@@find_server_instance" do
    it "returns a server instance based on the address" do
      server = Server.find_server_instance(12345)
      server.should == true
    end


  end

end
