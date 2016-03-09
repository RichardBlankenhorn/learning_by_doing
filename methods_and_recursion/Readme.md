# RuboCop Errors

After reviewing the code for the bottles_of_beer.rb file, I needed to make the following adjustments:

1. The number of lines the method was too long (greater than 10). As a result, I broke down the code in to 3 separate methods.
2. RuboCop prefers string concatenation with \ rather than + or <<. 
3. RoboCop only wanted single quotes for strings with no string interpolation. However, I needed to use double
    quotes if adding a newline(\n).
