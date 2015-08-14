 require_relative '../models/address_book.rb'
 
 RSpec.describe AddressBook do  
  
  let(:book) { AddressBook.new }

  context "attributes" do
    ##1
    it "should respond to entries" do
       expect(book).to respond_to(:entries)
    end
  end
    ##2
    it "should initialize entries as an array" do
      expect(book.entries).to be_a(Array)
    end
    ##3
    it "should initialize entries as empty" do
      expect(book.entries.size).to eq 0
    end

  context "#add_entry" do
    ##4
    it "adds only one entry to the address book" do
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
       expect(book.entries.size).to eq 1
     end
    ##5
    it "adds the correct information to entries" do

       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]
 
       expect(new_entry.name).to eq 'Ada Lovelace'
       expect(new_entry.phone_number).to eq '010.012.1815'
       expect(new_entry.email).to eq 'augusta.king@lovelace.com'
    end
  end

  # Test that AddressBook's .import_from_csv() method is working as expected
   context ".import_from_csv" do
     it "imports the correct number of entries" do
 ##6
       book.import_from_csv("entries.csv")
       book_size = book.entries.size
 
       # Check the size of the entries in AddressBook
       expect(book_size).to eql 5
     end
 
   end
 
 end