 require_relative '../models/address_book.rb'
 
 RSpec.describe AddressBook do  
  context "attributes" do
    ##1
    it "should respond to entries" do
       book = AddressBook.new
       expect(book).to respond_to(:entries)
    end
  end
    ##2
    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end
    ##3
    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq 0
    end

  context "#add_entry" do
    ##4
    it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
       expect(book.entries.size).to eq 1
     end
    ##5
    it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]
 
       expect(new_entry.name).to eq 'Ada Lovelace'
       expect(new_entry.phone_number).to eq '010.012.1815'
       expect(new_entry.email).to eq 'augusta.king@lovelace.com'
    end
  end
 
 end