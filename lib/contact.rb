class Contact
  def initialize(name, email, address, phone)
    @name = name
    @email = email
    @address = address
    @phone = phone
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
end
