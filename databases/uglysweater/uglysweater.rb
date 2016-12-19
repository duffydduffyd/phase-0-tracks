# UGLY SWEATER CHECKER:
# LOGS YOUR UGLY SWEATER AND MAKE SURE YOU ARE NOT IN DANGER OF 
# SOMEONE ELSE WEARING THE SAME SWEATER TO A UGLY SWEATER PARTY

# REQUIRE GEMS, SURPRISE OUTPUT ON THE SCREEN MATCHING THE COLOR OF YOUR SWEATER 
require "sqlite3"
require "colorate"

# CREATE SQLITE3 DATABASE TO LIST SWEATER ATTRIBUTES AND TAKE IN USER SWEATER DETAILS

uglydb = SQLite3::Database.new("uglysweater.db")    

# CREATE: COLORS TABLE, PATTERNS TABLE, OBJECTS TABLE, PICTURES TABLE, SAYINGS TABLE 

create_colors_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS colors (
	id INTEGER PRIMARY KEY,
	color VARCHAR(255)
	)
SQL

create_objects_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS objects (
id INTEGER PRIMARY KEY,
object VARCHAR(255)
)
SQL


create_pictures_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS pictures (
id INTEGER PRIMARY KEY,
picture VARCHAR(255)
)
SQL


create_patterns_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS patterns (
id INTEGER PRIMARY KEY,
pattern VARCHAR(255)
)
SQL


create_sayings_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS sayings (
id INTEGER PRIMARY KEY,	
saying VARCHAR(255)
)
SQL


# CREATE: MAIN NAMES TABLE 

create_names_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS names (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
size VARCHAR(255),
color_id INT,
pattern_id INT,
object_id INT,
picture_id INT,
saying_id INT,
foreign key (color_id) references colors(id),
foreign key (pattern_id) references patterns(id),
foreign key (object_id) references object(id),
foreign key (picture_id) references pictures(id),
foreign key (saying_id) references sayings(id)
)
SQL


# CREATE THE STRUCTURE OF THESE TABLES IN RUBY
uglydb.execute(create_colors_table_cmd)
uglydb.execute(create_objects_table_cmd)
uglydb.execute(create_pictures_table_cmd)
uglydb.execute(create_patterns_table_cmd)
uglydb.execute(create_sayings_table_cmd)
uglydb.execute(create_names_table_cmd)




# FILL IN THESE ATTRIBUTES TABLES IN RUBY


uglydb.execute ("INSERT INTO colors (color) VALUES ('red')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('green')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('yellow')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('magenta')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('white')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('blue')")
uglydb.execute ("INSERT INTO colors (color) VALUES ('cyan')")

uglydb.execute ("INSERT INTO objects (object) VALUES ('christmas balls')")
uglydb.execute ("INSERT INTO objects (object) VALUES ('christmas trees')")
uglydb.execute ("INSERT INTO objects (object) VALUES ('antlers')")
uglydb.execute ("INSERT INTO objects (object) VALUES ('menorah')")
uglydb.execute ("INSERT INTO objects (object) VALUES ('bows')")
uglydb.execute ("INSERT INTO objects (object) VALUES ('puffy balls')")

uglydb.execute ("INSERT INTO pictures (picture) VALUES ('reindeer')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('football logo')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('kittens')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('dinosaurs')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('snowflakes')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('gingerbread man')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('putin on a reindeer')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('fake ties')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('storm troupers')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('dogs')")
uglydb.execute ("INSERT INTO pictures (picture) VALUES ('christmas trees')")

uglydb.execute ("INSERT INTO patterns (pattern) VALUES ('checked')")
uglydb.execute ("INSERT INTO patterns (pattern) VALUES ('plaid')")
uglydb.execute ("INSERT INTO patterns (pattern) VALUES ('argyle')")

uglydb.execute ("INSERT INTO sayings (saying) VALUES ('Christmas bytes')")
uglydb.execute ("INSERT INTO sayings (saying) VALUES ('2016 Sucked')")
uglydb.execute ("INSERT INTO sayings (saying) VALUES ('Let it Snow')")
uglydb.execute ("INSERT INTO sayings (saying) VALUES ('Ho Ho Ho')")
uglydb.execute ("INSERT INTO sayings (saying) VALUES ('Merry Christmas')")

# # INSERT ONE NAME AND SWEATER DETAILS INTO NAMES TABLE FOR TESTING PURPOSES, THIS WORKS
uglydb.execute ("INSERT INTO names (name, size, color_id, pattern_id, object_id, picture_id, saying_id) VALUES ('Amy Ainsworth', 'small', 1, 2, 1, 2, 1)")


# ADD NAME AND SIZE TO THE TABLE
puts "What is your name?"
sweater_owner_name = gets.chomp

puts "What is your size?"
sweater_owner_size = gets.chomp

# ITERATE THROUG THE TABLES TO SHOW USER WHAT IS THERE

# ITERATE THROUGH THE COLORS TABLE
color_array= uglydb.execute ("SELECT * FROM colors")

color_array.each do |x|
	puts x
	puts ("----")
end

# ASK THE USER FOR THE COLOR OF THEIR SWEATER
puts "Which number is the color of your sweater?"
sweater_color = gets.chomp

# ITERATE THROUGH THE OBJECT TABLE
objects_array= uglydb.execute ("SELECT * FROM objects")

objects_array.each do |x|
	puts x
	puts ("----")
end

# ASK THE USER FOR ANY OBJECTS ON THEIR SWEATER
puts "Are there any 3D objects on your sweater? If so, which number?"
sweater_object = gets.chomp


# ITERATE THROUGH THE PICTURES TABLE
pictures_array= uglydb.execute ("SELECT * FROM pictures")

pictures_array.each do |x|
	puts x
	puts ("----")
end

# ASK THE USER FOR ANY PICTURES ON THEIR SWEATER
puts "Are there any pictures on your sweater? Which one? Pick a number."
sweater_picture = gets.chomp

# ITERATE THROUGH THE PATTERNS TABLE
patterns_array= uglydb.execute ("SELECT * FROM patterns")

patterns_array.each do |x|
	puts x
	puts ("----")
end

# ASK THE USER FOR ANY PATTERNS ON THEIR SWEATER
puts "Are there any patterns on your sweater? Which one? Pick a number."
sweater_pattern = gets.chomp

# ITERATE THROUGH THE SAYINGS TABLE
sayings_array= uglydb.execute ("SELECT * FROM sayings")

sayings_array.each do |x|
	puts x
	puts ("----")
end

# ASK THE USER FOR ANY SAYINGS ON THEIR SWEATER
puts "Are there any sayings on your sweater? Which one? Pick a number."
sweater_saying = gets.chomp


# RETURN THE SWEATER ATTRIBUTES TO THE CONSOLE USING THE SAME COLOR AS THE COLOR OF THEIR SWEATER
# SAMPLE, THIS WORKS
puts Colorate.green("Your sweater is green.")

# THIS DOESN'T WORK FOR SOME REASON
 if sweater_color == 1 
 	puts Colorate.red("Your sweater is red.")
 elsif sweater_color == 2
 	puts Colorate.green("Your sweater is green.")
 elsif sweater_color == 3 
 	puts Colorate.yellow("Your sweater is yellow.")
 elsif sweater_color == 4
 	puts Colorate.magenta("Your sweater is magenta.")		 	
 elsif sweater_color == 5
 	puts Colorate.white("Your sweater is white.")	
 elsif sweater_color == 6
 	puts Colorate.blue("Your sweater is blue.")	
 else sweater_color == 7
 	puts Colorate.cyan("Your sweater is cyan.")	
 end	

# ADD THE SWEATERS INTO DATABASE, THIS IS NOT WORKING
# uglydb.execute ("INSERT INTO names (name, size, color_id, pattern_id, object_id, picture_id, saying_id) VALUES (#{sweater_owner_name}, #{sweater_owner_size}, #{sweater_color}, #{sweater_pattern}, #{sweater_object}, #{sweater_picture}, #{sweater_saying})")

# ADD THE SWEATERS INTO DATABASE, THIS IS NOT WORKING BUT DOES NOT THROW AN ERROR
def create_sweater(uglydb, sweater_owner_name, sweater_owner_size, sweater_color, sweater_pattern, sweater_object, sweater_picture, sweater_saying)
  uglydb.execute("INSERT INTO names (name, size, color_id, pattern_id, object_id, picture_id, saying_id) VALUES (?, ?, ?, ?, ?, ?, ?)", [sweater_owner_name, sweater_owner_size, sweater_color, sweater_pattern, sweater_object, sweater_picture, sweater_saying])
end


# COMPARE CURRENT ENTRY TO SWEATERS ENTRIES
# ITERATE THROUGH LINES OF THE TABLE, COMPARE ID 1 WITH ID 2..TO THE END OF THE TABLE, 
# THEN COMPARE LINE 2 WITH LINE 3..TO THE END OF THE TABLE. 
# THERE MUST BE AN BETTER WAY THAN THIS. 


# IF SWEATER IS THE SAME AS OTHER SWEATER THEN ALERT USER













