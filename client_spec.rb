require "./client"
require "./server"

describe Client do
  id = 20
  subject = Client.new(20)

  describe "#initialization" do

    it "creates a client with an id" do
      id = 12345
      subject = Client.new(id)
      subject.id.should == id
    end

  end

  describe "#visit_server" do

    it "visits a server" do
      address = 12345
      server = Server.new(address)
      subject.visit_server(address).should == true
    end

  end

end


