contact_list = [] 

def ask(question, kind="string")
  print question + " "
  answer= gets.chomp
  answer= answer.to_i if kind === "number"
  return answer
  
end

def add_contact
  contact = {"name" => "", "phone_numbers" => []}
  contact["name"] = ask("whats is the persone name?")
  
  answer =""
  while answer !="n"
    answer= ask("do you want to add a phone number? (y/n)")
    if answer == "y"
      phone=ask("enter a phone number:")
      contact["phone_numbers"].push(phone)
    end
  end
end  

answer=""
contact_list = [] 
while answer !="n"
  contact_list.push(add_contact())
  answer= ask("add another? (y/n)")
end

puts "---"

contact_list.each do |contact|
  puts "name: #{contact["name"]}"
  if contact["phone_numbers"].size>0

    contact["phone_numbers"].each do |phone_number|
    puts "phone: #{phone_number}"
    end

  end
  puts "-------\n"
end