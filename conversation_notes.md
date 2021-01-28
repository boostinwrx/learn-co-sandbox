*Programming as a conversation - Intro*
We call things we say "expression" and the transformation "evaluation"
  Expression: One will "push" an expression, then the expression needs to be evaluated by the other person
Ruby does the same: When expressions are evaluated, they return something
  Given an expression, Ruby will evaluate it, this response is called a return value

---------------------------------+
*Irb*
We run a program thats a "conversation room", in it we send expressions for Ruby to evaluate, after Ruby evaluates an expression, it will send back return values or responses
`
``irb`` key in expression then hit ENTER => Ruby's evaluation of the expression(return value) 

IRB is a "REPL" or Read-Evaluate-Print Loop
  1. Type ruby expression (IRB reads input)
  2. IRB evaluates expression
  3. IRB prints return value as output

The # in Ruby is a comment character

---------------------------------+
*Constant expression*
Expressions consist of constants, variables, and operators

An expression without variables or operators is a CONSTANT EXPRESSION, ie
  ``42``
The constant expression is always the last expression in a complex expression
"We need agreement. Ruby's evaluation of the simple constant expression agrees with ours, and we will build all programming we ever learn from this foundation."

---------------------------------+
*Assignment expression*
Associate an expression's evaluated result (return value) with a 'name'
  We call those names that we associate with the expression's results: variables
Using assignment expression: "assinging a variable"
  Ex. ``lhs = rhs`` 
    Variable name is lhs
      Can never be an expression, it's a "bare word", we introduce it
    Assignment operator is =
    Constant(expression) is rhs
    
Variables are mutable, we can apply multiple assignment expressions to it
  Symbolic Constant, make variable name permenant
    SYMBOLIC_CONSTANTS are written in ALL CAPS

Symbolic constants are called "constants", constants are called "scalar values"

---------------------------------+
*Variable lookup expressions*
To lookup the value of a Variable
  ``variable = value``#=> value

---------------------------------+
*Arithmetic*
Division is different than one might expect
  ``8/3``#=> 2
  If we use integers, Ruby computes the 'big picture'
However if one of the numbers in the expression is a float, Ruby would get the hint that you want a precise answer
  ``8.0/3``#=> 2.6666666666666665

---------------------------------+
*Boolean expression*
Equality Comparison
  To check if two variables are equal we use `==`
    ` 1 == 1 ` #=> true

Inequality Comparison
  To check whether two values are NOT equal, we use `!=` (bang-equal-sign)
  ` 1 != 1 ` #=> false
  ` 1 != 7 ` #=> true

Greater than comparison `>`
  Value to left of operator is greater than value on right
  
Less than comparison `<`
  Value on left of operator is less than the right

Greater-than-or-equal-to comparison `>=`
  Value on left of operator is greater than OR equal to value on right
  
Less-than-or-equal-to `<=`
  Value on left of operator is less than OR equal to value on right
  
Bang INVERTS the truth value
  `!true`  #=> false
  `!false` #=> true

  Can also invert truth value of expression
    `( 1 + 1 == 2 )` #=> true
    `!( 1 + 1 == 2 )` #=> false
  
Invert truth value with `!!` double Bang
  `!!true` #=> true
  `!!false` #=> false

Ruby will treat anything that is FALSE or NIL as y

Join boolean expressions with and `&&`
  Both values of either side of the symbol must evaluate to true or else false
  `true && true` #=> true
  `true && false` #=> false
  
Join boolean expressions with OR `||`
  Double pipe represts OR, for `||` to evaluate as true, only one value on either side must be true
  `false || true` #=> true
  
---------------------------------+  
*Ternary expression*
An example:
  `garment = likely_to_rain ? "galoshes" : "sun hat"  `
  
  `boolean_conditional_value ? "thing_to_return_if_true" : "thing_to_return_if_false" `
  
---------------------------------+

*Working with strings*
Strings are declared with double quotes or single quotes
  greeting = "Hello, folks!"
  
Interpolation,`#{}` ruby plugs in the value of an expression after converting it to a String with "" NOT ''
  `bark_count = 3`
  `dq = "Byron barks #{bark_count} times"`
  #=> "Byron barks 3 times"
  `sq = 'Byron barks #{bark_count} times' `
  #=> "Byron barks #{bark_count} times"
  `
Join strings using `+`
   Example:
    `first_name = "Byronius"`
    `clan_name = "Karbitus"`
    `common_name = "Maris"`
    
    With +
    `first_name + " " + clan_name + " " + common_name`
    #=> "Byronius Karbitus Maris"
     
    Or, with interpolation, like you already know
   ` "#{first_name} #{clan_name} #{common_name}" #=> "Byronius Karbitus Maris"`
   
  ` + `only joins strings when both sides are strings NOT integers
    If you need to do this, use   `to_s` method
---------------------------------+
*Statements*
Expressions always return a value, Statements do NOT  

nil means no value, means nothing, not true, not false, its the void

`if result == 2`
  `puts "things match"`
`end` 

Three categories of code Statements
  -Sequence: What code runs in what order?
  -Selection: Given the default order of the sequence, can we deviate from it under certain conditions?
  -Repetition: Given a need to something until a something is true, or until something has happened a certain number of times, can we change the sequence to make something repeat before moving on?

Selection statement
  `favorite_number = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2`
`if favorite_number >= 10`
  `favorite_number = favorite_number + 10`
  `puts "And now your favorite_number is 10 more!"`
`end`
`puts "THE END"`

Repitition statement
  `favorite_number = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2`
  `10.times do`
    `favorite_number = favorite_number + 1`
  `end`
  `puts "And now your favorite_number is 10 more! It is #{favorite_number}"`
  
---------------------------------+
  *Puts and Prints Statements*
Statements that print strings to the screen
  -puts
  -print
  -p
  
puts out-puts-string to the screen, prints string you supply it as well as newline character
  `puts "hi"`
    hi
    => nil
  Put pushed nil to the next line, aka the 'newline' character appended at the end

Print example:
 `print "hi"`
    hi => nil

Force text to new line with newline, `\n`ewline at the end of string given to puts
 `puts "edvard\nMuch"`
   edvard
   Much
    => nil
    
Use `print` statement to print out the given string with no newline(`\n`)

Use `p` statement to send content to screen and return a value instead of nil BUT its a more RAW version of an object, printing ""
 ` p "Hello World"`
 => "Hello World"
 
---------------------------------+
*Default sequence and comments*
Using Selection statements, we make ruby skip over code if boolean evaluation is/is not true

Using repitition statements, we make Ruby stay put on one line and do it over and over until some boolean evaluation is/is not true

Only way to make ruby not see a line without a boolean evaluation is to hide it using comments
`#This is a comment`

---------------------------------+
*if...end and statement modifiers*
example
  `chance_of_rain = 0.2`
 ` if chance_of_rain <= 0.25`
   ` puts "Pack a sun shelter!"`  
  `elsif (chance_of_rain > 0.25 && chance_of_rain < 0.75)`
   ` puts "Pack an umbrella!"`
  `else`
    `puts "Stay home and read Hegel."`
  end
In an if..elsif...else..statement
  if true
  elsif other options
  else false
  
  ---------------------------------+
*Variation on if...elsif...else: Case stat*
Case Selection used to cut down on typing a repetitive if...elsif..else..end
  `case name`
  `when "Alice"` #translated: when name == Alice
    `puts "Hello Alice!"`
    `when "The White Rabbit"`
   ` puts "Don't be late, White Rabbit"`
    `when "The Mad Hatter"`
     ` puts "Welcome to the tea party, Mad Hatter"`
   ` when "The Queen of Hearts"`
     `puts "Please don't chop off my head!"`
   `else `
   ` puts "Whoooo are you?"`
  `end`
How to build a case:
1. Create value Case keyword followed by a value to test
    `case greeting`
2. Create the conditions
    `case greeting`
        `when`
      `"unfriendly_greeting"`
        `when`
      `"friendly_greeting"`
      `end`
3. Add the code to define the behavior
  `greeting="friendly behavior"`
  `case greeting`
        `when`
      `"unfriendly_greeting"`
          `puts "What do you want!?"`
        `when`
      `"friendly_greeting"`
          `puts "Hi! How are  you?"`
      `end`

For simple values, use ternary. For an if with an else and maybe an elsif use an if. For multiple cases, use a case statement.

---------------------------------+
*Repetition of the While Statement*
The reverse of selection is Repetition, while...do...end 

Basic structure
  `while (condition expression) do`
  #stuff to do
  `end`
Infinite loop:
  `while true do`
    `puts "say this forever..."`
  `end`
    say this forever...
    say this forever...
    say this forever...
    say this forever...
    ...

Terminate while...do...end Loop Naturally
  `count = 0` # A bit of data defined outside the loop
  `while count < 3 do` # A Boolean expression using the bit of data
   ` puts "I am the #{count}, I love to count!"` # Work
  `count = count + 1` # A bit of work that moves the bit of data closer to being false
  `end`

Shorthand
  `count += 1` takes value of count, adds one,  then reassign the result to the count (`count = count +1`)

Terminate Loop with break statement
  `magic_exit_number =7`
  `count = 0`
  `while count < 10 do`
    `break if count == magic_exit_number`
    `puts "I am the #{count}, I love to count!"` # Work
    `count = count + 1`
  `end`

---------------------------------+
*Variations on the while...do...end Loop*
Use integer.times to execute a loop n-times
Example of some code running three times:
 ` n = 2`
  `count = 0`
  `while count <= n do`
    `puts "I ran."`
    `count = count + 1` 
  `end`
  Another Example
    `3.times do`
      `puts "I ran."`
    `end`
    
Use loop to create an infinite loop
  `count = 0`
 ` n = 3`
 ` loop do`
    `break if count >= n`
   ` puts "I ran."`
   ` count += 1`
  `end`
  This could be duplicated with while do end
  `count = 0`
 ` n = 3`
  `while true do`
    `break if count >= n`
    `puts "I ran."`
    `count += 1`
  `end`

Use until to repeat, until is the inverse of a while Loop
  A while executes the block of code while the conditional expression is true.
  
  An until will execute a block until a specific condition is true.
  `counter = 0`
  `until counter == 20`
    `puts "The current number is less than 20."`
    `counter += 1`
  `end`
      -Counter starts at 0, if it is not true that the counter == 20 , the program will execute the code om the block
      -In the block, we `puts` a phrase and increment the counter by 1
      -Then program will go back to the top of the until loop, check if the counter is == 20, if thats not true, then the program will continue , if it does == 20 , it will break the loop
      
---------------------------------+
*Defining Methods*
Demonstrating Abstraction with Methods
  Instead of:
  `message = "Hello World!"`
  `puts message`
  `puts message`
  `puts message`
  `puts message`
  `puts message`
  We could use a method:
  `def say_hello_world_five_times`
    `message = "Hello World!"`
    `puts message`
    `puts message`
   ` puts message`
    `puts message`
   ` puts message`
  `end`

DRY means "Dont Repeat Yourself"
   "turns out the only significant predictor of fewer bugs is...fewer lines of code!"

Structure of a Method:
  `def say_hello_world`   #This is called the method signature, 'greeting'
    `puts "Hello World!"` #Body or methods implementation, the code that runs
  `end`
    -The mame of a method should suggest what the method does, seperated by _ 
    -Once you begin the method defiition w/ `def` keyword, all following lines until `end` keyword are methods body or implementation; which runs when method is called
      TIP:A good practice is to define the method and then immediately close it with end before writing the body.
    All this defines the method, it does not run it
---------------------------------+
*Methods and arguments*

Method that accepts arguments
  `def greeting_a_person(name)`
    `"Hello" #{name}"`
    `end`
  Arguments that are passed into methods create new local variables that can be used within the scope of a method, we call these local variables: parameters.

Method that accepts two arguments
  `def greeting_programmer(name, language)`
    `puts "Hello, #{name}. We heard you are a great #{language} programmer."`
  `end`
    The arity of this is two as it expects two arguments
Difference between arguments and parameters:
  `def greeting(parameter)`
    `puts "Hello, #{parameter}!"`
  `end`
  
  `greeting(argument)` when calling the method, its an argument
