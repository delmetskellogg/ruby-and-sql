# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:
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

puts "There are now #{Contact.all.count} contacts"
all_contacts = Contact.all
companies = Company.all
for company in companies
    puts company.name
    for contact in company.contacts
        puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end


for person in  all_contacts
    puts "#{person.first_name} #{person.last_name} #{person.company.name} #{person.email}"
end



# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com
