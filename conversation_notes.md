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

