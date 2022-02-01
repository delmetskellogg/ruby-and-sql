# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Contact.all.count} contacts"
# 2. create 1-2 new contacts for each company (they can be made up)
apple = Company.where({name: "Apple"})[0]
values = {  first_name: "David", 
            last_name: "Elmets",
            email: "david.elmets@kellogg.northwestern.edu",
            phone_number: "205-410-1865",
            company_id: apple.id }
david=Contact.new(values)
david.save
puts "There are now #{Contact.all.count} contacts"

new_contact = Contact.new

new_contact.first_name = "Andy"
new_contact.last_name = "Jassy"
new_contact.email = "andy@gmail.com"
new_contact.phone_number = "123-456-7890"

new_contact.save


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "There are now #{Contact.all.count} contacts"
all_contacts = Contact.all
for person in  all_contacts
    puts "#{person.first_name} #{person.last_name} #{person.email}"
end


# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
