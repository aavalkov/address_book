require 'rspec'
require 'contact'
require 'phone'
require 'email'
require 'address'

describe Contact do
  before do
    Contact.clear
  end

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

    it "saves the contact to a list" do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      Contact.contacts.should eq [db_cooper]
    end
  end
  describe 'edit_name' do
    it 'changes the name of a contact' do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.edit_name("Joe Cooper")
      db_cooper.name.should eq ("Joe Cooper")
    end
  end
  describe 'edit_email' do
    it 'changes the email of a contact' do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.edit_email("dbcooper@dbcooper.io")
      db_cooper.email.should eq ("dbcooper@dbcooper.io")
    end
  end
  describe 'edit_phone' do
    it 'changes the phone number of a contact' do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.edit_phone("5031234567")
      db_cooper.phone.should eq ("5031234567")
    end
  end
  describe 'edit_address' do
    it 'changes the address of a contact' do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      db_cooper.edit_address("Unknown")
      db_cooper.address.should eq ("Unknown")
    end
  end

  describe 'delete_contact' do
    it 'deltets a contact' do
      db_cooper = Contact.new("DB Cooper", "dbcooper@gmail.com",
                    "1234 Forest RD SW Washington", "3601234567")
      Contact.delete_contact("DB Cooper")
      Contact.contacts.should eq []
    end
  end
end

describe Email do
  describe "initialize" do
    it "creates a new email object" do
      new_email = Email.new("dbcooper@dbcooper.io")
      new_email.email.should eq "dbcooper@dbcooper.io"
    end
  end
end

describe Address do
  describe "initialize" do
    it "creates a new address object" do
      new_address = Address.new("Unknown")
      new_address.address.should eq "Unknown"
    end
  end
end

describe Phone do
  describe "initialize" do
    it "creates a new phone object" do
      new_address = Phone.new("5031234567")
      new_address.phone.should eq "5031234567"
    end
  end
end
