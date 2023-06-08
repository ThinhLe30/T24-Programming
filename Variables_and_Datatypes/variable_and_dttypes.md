# 2. Variables and Data Types

## 2.1 Variables

- No keyword for declaration of variable
- By default all variables have infinite size (limited by memory and customizing)

## 2.2 Data Types
- Supported types are:
    - Strings
    - Numbers
    - Dynamic Arrays
    - Dimensional Arrays
    
    ### 2.2.1 Strings
    
    **Definition:**
    
    There are 3 ways of defining strings:
    
    - Single quote: name = ‘brooklyn’
    - Double quote: name = “brooklyn”
    - backslashes: name = \brooklyn\
    
    **String operations:**
    
    - String concatenation: use colon **:**
        
        ex: first_name = “brooklyn”
        
        last_name = “lee”
        
        full_name = first_name : “ ” : last_name
        
        → Brooklyn lee
        
    
    **String slicing: *note: index of string of T24 started on 1.**
    
    - 3 types of slicing: name = “brooklyn”
    - explanation of indexing:
    
    | b | r | o | o | k | l | y | n |
    | --- | --- | --- | --- | --- | --- | --- | --- |
    | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
    
    | b | r | o | o | k | l | y | n |
    | --- | --- | --- | --- | --- | --- | --- | --- |
    | -8 | -7 | -6 | -5 | -4 | -3 | -2 | -1 |
    - name[1,4] = broo ***1:start index, 4: number of characters want to slice**
    - name[5] = brook ***5:start index and select all from index**
    - name[-5,5] = oklyn ***1:start index negative, 5: number of characters want to slice**
    
    ### Built-in functions to work with strings
    
    Below are some samples of how to manipulate strings using some built-in functions
    
    `name = "John Smith"
    CRT LEFT(4)             ;* John
    CRT RIGHT(5)            ;* Smith
    CRT UPCASE(name)        ;* JOHN SMITH
    CRT DOWNCASE("Value")   ;* value
    CRT LEN(name)           ;* 10
    CRT STR('A', 3)         ;* AAA`
    
    ### 2.2.2 Arrays
    - Like Arrays in another language
    - Access:
    arrays<1>
    * note: Array in T-24 start in the index 1
    ### 2.2.3 Dimension Arrays
    - Like Matrix and Vector in another languages
    - Access:
    arrays<r,c>
    ### 2.2.4 Numbers
    - Like numbers in another languages
