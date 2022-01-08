users=[
  {username:"bhaskar",password: "password1"},
    {username:"kumar",password: "password2"},
      {username:"singh",password: "password3"},
        {username:"stark",password: "password4"},
]

def auth_user(username,password,list_of_users)
  list_of_users.each do |user_record |
    if  user_record[:username]==username && user_record[:password]==password
      return user_record

    end
  end
  "credentials were not correct"
end

puts "Welcome to the authenticatior"
25.times{print"-"}
puts
puts "this program will take input from the user and compare password"
puts "if password is correct, you will get back the user object"

attempt=1
while attempt<4
  print"username: "
  username= gets.chomp
  print"password: "
  password=gets.chomp
 authentication=auth_user(username,password,users)
 puts authentication


 puts"Press n to quit or any other key to continue: "
 input =gets.chomp.downcase
  break if input== "n"


attempt+=1
end
puts "Attempt exceeded"
