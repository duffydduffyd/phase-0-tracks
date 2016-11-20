# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase 

# "zom".<???>
# => “zoom”
"zom".insert(1,"o")
"zom".chars.to_a.insert(2,"o").join

# "enhance".<???>
# => "    enhance    "
"enhance".center(16)
"enhance".prepend("   ")<<"   "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"
"the usual".insert(9, " suspects")
"the usual" + "suspects"


# " suspects".<???>
# => "the usual suspects"
" suspects".prepend("the usual")
"the usual" + " suspects"
" suspects".insert(0,"the usual") 

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".delete "r"
"The case of the disappearing last letter"[0..38]
"The case of the disappearing last letter".tr("r","")
"The case of the disappearing last letter".chop


# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter""
"The mystery of the missing first letter".slice("he mystery of the missing first letter")
"The mystery of the missing first letter".delete("T")
"The mystery of the missing first letter"[1..38]
"The mystery of the missing first letter".tr("T","")


# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze(" ")

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
"z".bytes

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
"How many times does the letter 'a' appear in this string?".count "a"



# Personal Notes from 5.1
# irb(main):021:0> test = "   yayayaydo"
# => "   yayayaydo"
# irb(main):022:0> test.lstrip
# => "yayayaydo"

# ljust(integer, padstr=' ') → new_str
# irb(main):023:0> "a".ljust(5)
# => "a    "

# irb(main):024:0> "a".ljust(200, "Zz")
# => "aZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZzZ"

# irb(main):025:0> poem.empty?
# => false

# irb(main):026:0> poem.include? "hand"
# => true

# irb(main):017:0> print poem
# My toast has flown from my hand
# And my toast has gone to the moon.
# But when I saw it on television
# Planting our flag on Halley's comet,
# More still did I want to eat it.=> nil

# irb(main):056:0> poem << "now"
# => "My honeydew has flown from my hand\nAnd my toast has gone to the moon.\n
# But when I saw it on television\nPlanting our flag on Halley's comet,\n
# More still did I want to eat it.now"

# irb(main):061:0> poem
# => "My honeydew has flown from my hand\nAnd my toast has gone to the moon.\nBut when I saw it on television\nPlanting our flag on Halley's comet,\nMore still did I want to eat it.nownow"

# irb(main):062:0> poem.bytesize
# => 177

# irb(main):063:0> peom.capitalize
# NameError: undefined local variable or method `peom' for main:Object
# Did you mean?  poem
# 	from (irb):63
# 	from /Users/deniseduffy/.rbenv/versions/2.3.0/bin/irb:11:in `<main>'

# irb(main):064:0> poem.capitalize
# => "My honeydew has flown from my hand\nand my toast has gone to the moon.\nbut when i saw it on television\nplanting our flag on halley's comet,\nmore still did i want to eat it.nownow"

# irb(main):065:0> poem
# => "My honeydew has flown from my hand\nAnd my toast has gone to the moon.\nBut when I saw it on television\nPlanting our flag on Halley's comet,\nMore still did I want to eat it.nownow"

# irb(main):066:0> poem.chomp"nownow"
# => "My honeydew has flown from my hand\nAnd my toast has gone to the moon.\nBut when I saw it on television\nPlanting our flag on Halley's comet,\nMore still did I want to eat it."





