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
    
    test
    test