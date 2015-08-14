require_relative "entry.rb"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)
  
    index = 0
    @entries.each do |entry|
  
      if name < entry.name
       break
      end
      index += 1
    end
  
    @entries.insert(index, Entry.new(name, phone, email))
  end

  def remove_entry(name, phone, email)
    @entries.each do |remove|
      if (name == remove.name) && (phone == remove.phone) && (email == remove.email)
        @entries.delete(index, Entry.new(name, phone, email))
      else
        p "Not in system"
      end
      end
  end
end