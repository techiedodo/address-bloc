 require_relative '../models/entry.rb'
 

 # #1 Standard first line of RSpec test file
 RSpec.describe Entry do
 # #2 Makes us aware that the specs in the context will test Entry attributes
   context "attributes" do
 # #3 Individual Test 1
     it "should respond to name" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 # #4 Each test ends with one or more expect method, used to declare expectations for the test--pass or fail
       expect(entry).to respond_to(:name)
     end
 
     it "should respond to phone number" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry).to respond_to(:phone_number)
     end
 
     it "should respond to email" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry).to respond_to(:email)
     end
   end

  # #5
    context "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
# #6
       expect(entry.to_s).to eq(expected_string)
     end
   end
 end