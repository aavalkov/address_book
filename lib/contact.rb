class Contact
  @@contacts = []

  def initialize(name, email, address, phone)
    @name = name
    @email = email

    @address = address
    @phone = phone
    @@contacts << self
  end
  def Contact.contacts
    @@contacts
  end
  def Contact.clear
    @@contacts = []
  end
  def name
    @name
  end
  def email
    @email
  end
  def address
    @address
  end
  def phone
    @phone
  end
  def edit_name(new_name)
    @name = new_name
  end
  def edit_email(new_email)
    @email = new_email
  end
  def edit_phone(new_phone)
    @phone = new_phone
  end
   def edit_address(new_address)
    @address = new_address
  end
  def Contact.delete_contact(name)
    @@contacts.each do |contact|
      if contact.name == name
        @@contacts.delete(contact)
      end
    end
  end
end
