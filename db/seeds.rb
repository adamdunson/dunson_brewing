require 'io/console'
puts 'Administrator Account Setup'
print 'Email: '
admin_email = STDIN.gets.chomp
print 'Password: '
admin_password = STDIN.noecho(&:gets).chomp
puts
User.create(email: admin_email, password: admin_password)
