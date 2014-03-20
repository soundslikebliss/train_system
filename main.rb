require 'pg'
require './lib/stops.rb'
require './lib/train_line.rb'
require './lib/train_station.rb'
DB = PG.connect(:dbname => 'train_system')

def main_menu
  puts "-"*40, "Main Menu:\n", "-"*40
  puts "\t1: Passengers\n",
       "\t2: System Operators\n",
       "\t3: Exit System\n\n"
  print "Choose an Option Puny Earthling: "
  choice = gets.chomp
  case choice
  when '1'
    train_info
    main_menu
  when '2'
    system_operators
    main_menu
  when '3'
    puts "Goodbye puny earthly organism!"
  else
    puts "Downloading Virus..."
  end
end



def train_info

  puts "*"*30, "Line and Station Information:\n", "*"*30
  puts "\t1: View Train Lines\n",
       "\t2: View Train Stations\n",
       "\t3: Search for a Train Line\n",
       "\t4: Search for a Train Station\n",
       "\t5: Return to Main Menu\n",
       "\t6: Exit and return to your pitiful life\n"

  choice = gets.chomp
  case choice

  when '1'
    view_all_lines
    main_menu
  when '2'
    view_all_stations
    main_menu
  when '3'
    search_lines
    main_menu
  when '4'
    search_stations
    main_menu
  when '5'
    main_menu
  when '6'
    puts "Pitiful life commencing..."
  else
    puts "Calling the NSA now..."
  end
end





def view_all_lines

  # puts "#"*30, "ALL TRAIN LINES:\n", "#"*30
  # puts "\tType 'red' and hit enter to view all Red Line stops\n",
  #      "\tType 'yellow' and hit enter to view all Yellow Line stops\n",
  #      "\tType 'green' and hit enter to view all Green Line stops\n"
  print "\n\nHere is a list of all train lines:\n\n"



        Train_Line.all.each do |train_line|
          puts "#{train_line.id} : #{train_line.name}"
        end

  # choice = gets.chomp
  # case choice

  # when 'red'

end







def system_operators

  puts "*"*30, "Cosmic Operators:\n", "*"*30
  puts "\t1: View Train Line and Station Information\n",
       "\t2: Edit Train Line and Station Information\n",
       "\t3: Exit Program\n\n"

  choice = gets.chomp
  case choice

  when '1'
    train_info
    main_menu
  when '2'
    train_edit
    main_menu
  when '3'
    puts "What does the fox say?"
  else
    puts "Invalid option! Downloading Stuxnet..."
  end
end



def train_edit
  puts "^"*30, "^"*30
  puts "()"*30, "EDIT TRAIN LINES AND STATIONS:\n", "*"*30
  puts "\t1: Add a Train Line\n",
       "\t2: Add/Edit Train Stations\n",
       "\t3: Search for a Train Line to edit\n",
       "\t4: Search for a Train Station to edit\n"
       "\t5: Return to Main Menu"
       "\t6: Exit and return to your pitiful life"

  choice = gets.chomp
  case choice

  when '1'
    add_a_line
    main_menu
  when '2'
    edit_stations
    main_menu
  when '3'
    operator_search_lines
    main_menu
  when '4'
    operator_search_stations
    main_menu
  when '5'
    main_menu
  when '6'
    puts "Don't you wish that you graduated from Hogwarts?"
  else
    puts "Quiddage game tomorrow! Yay!"
  end

end


def edit_lines
  Train_Line.all
  puts "Please choose the number of the line you would like to edit"
  @id = gets.chomp
  Train_Line.edit(user_input)


end


def add_a_line

  # puts "*"*30, "ADD A TRAIN LINE:\n", "*"*30
  # puts "\nHere is a list of existing train lines. Don't add repeats, bruh.\n"

  Train_Line.all

  puts "Enter the name of the line you would like to add"
  train_line = gets.chomp

  new_line = Train_Line.new({'name' => train_line})
  new_line.save
  Train_Line.all

end















main_menu
