## Email Parser Program:::
  # takes email, splits it into multiple variations and dumps it into excel file

require "net/https"
require "uri"

verified = 0
numerous_emails = []

#how can you clean this section up? 
#add middle initial

while verified < 1
    puts "first name, please:"
    firstname = gets.chomp
    puts "last name, please:"
    lastname = gets.chomp
    puts "address, please:"
    address = gets.chomp
    puts "Email Address is: " + "#{firstname}" + "#{lastname}" + "#{address}"
    puts "Please verify this is correct (Y/N)"
    verify = gets.chomp
  if verify == 'y'
    puts "we will now parse string and send a file to your desktop..."
    verified += 1
  elsif verify != 'y'
  	puts "lets try again.."
  end
end


# Slicing and dicing, can this be done with regex? 
#how can this be done more efficently? 


numerous_emails << (lastname + address)
numerous_emails << (firstname + address)
numerous_emails << (firstname + lastname + address)
numerous_emails << (firstname[0] + lastname + address)
numerous_emails << (firstname + lastname[0] + address)
numerous_emails << (firstname[0] + lastname[0] + address)

 puts numerous_emails


#could you check the value agains full Contact? bonus points...

# email_file = File.new("emails.txt", "w")
# email_file.puts numerous_emails
# email_file.close

#Get request

# uri = URI.parse('https://api.fullcontact.com/v2/person.json?email=erikgrueter@gmail.com&apiKey=4f8a9af700f5899a')
# http = Net::HTTP.new(uri.host, uri.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(uri.request_uri)

# response = http.request(request)
# puts response.body
# response["header-here"] # All headers are lowercase







