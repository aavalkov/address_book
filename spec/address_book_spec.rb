require 'rspec'
require 'contact'
require 'phone'
require 'email'
require 'address'

describe Contact do
  describe "initialize" do
    it "initializes a contact with name" do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.should be_an_instance_of Contact
    end

    it "returns the name of the contact" do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.name.should eq ("DB Cooper")
      db_cooper.email.should eq ("dbcooper@gmail.com")
      db_cooper.address.should eq ("1234 Forest RD SW Washington")
      db_cooper.phone.should eq ("3601234567")
    end
  end
end
