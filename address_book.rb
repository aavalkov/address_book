require './lib/contact.rb'
require './lib/email.rb'
require './lib/address.rb'
require './lib/phone.rb'

def main_menu
  current_contact = ""

  puts "Address Book"
  loop do
    puts "Press 'a' to add a contact or 'l' to list your contacts"
    user_choice = gets.chomp

    case user_choice
      when 'a'
        puts "Enter the contact name:"
        name = gets.chomp
        puts "Enter an email address:"
        email = gets.chomp
        puts "Enter a mailing address:"
        address = gets.chomp
        puts "Enter a phone number:"
        phone = gets.chomp

        new_contact = Contact.new(name, email, address, phone)

        puts "#{new_contact.name} was added."
        main_menu
      when 'l'
        puts "The following contacts are in your address book:"
        Contact.contacts.each do |contact|
          puts contact.name
        end
        puts "Press 'e' to edit a contact or 'd' to delete a contact"
        second_choice = gets.chomp
        case second_choice
          when 'e'
            Contact.contacts.each do |contact|
              puts contact.name
            end
            puts "Enter the name of the contact that you would like to edit:"
            edit_name = gets.chomp
            Contact.contacts.each do |contact|
              if edit_name == contact.name
                current_contact = contact
                puts current_contact.name
              end
            end
            puts "Press 'n' to edit the name, 'a' to edit the address, 'e' to edit the email address, or 'p' to edit the phone number"
            edit_decision = gets.chomp
            case edit_decision
              when "n"
                puts "Enter a new name for this contact"
                new_name = gets.chomp
                current_contact.edit_name(new_name)
              when "a"
                puts "Enter a new address for this contact"
                new_address = gets.chomp
                current_contact.edit_address(new_address)
              when "e"
                puts "Enter a new email for this contact"
                new_email = gets.chomp
                current_contact.edit_email(new_email)
              when "p"
                puts "Enter a new phone for this contact"
                new_phone = gets.chomp
                current_contact.edit_phone(new_phone)
            end
          when 'd'
            puts "Enter the name of the contact you'd like to delete:"
            delete_name = gets.chomp
            Contact.delete_contact(delete_name)

            puts "These are the remaining contacts:"
            Contact.contacts.each do |contact|
              puts contact.name
            end
        end
    end
  end
end
main_menu
