# Framer Workshop
This repo contains curriculum from a four-day workshop run by Shana Hu at Pinterest in December 2017. The curriculum is designed for people with little to no experience in Framer and programming, although it is scaffolded in a way to allow more experienced prototypers also attend.


## Format  
The Workshop is split into two tracks: *Intro to Framer* and *More with Framer*.  

*Intro to Framer* takes the first two days, and covers the basics of programming and Framer.

*More with Framer* is the latter two days and builds on the first track. The focus for this second track features lessons where Framer really starts to shine, meaning students will learn concepts like loops, dictionaries, and making API calls.  

Each day features two lessons and suggested lab exercises. Students are encouraged to focus on the material and apply their own take on the examples. I recommend allowing for plenty of free work time on the first day in particular and encouraging students to build something of their own from scratch. This way, they'll get plenty of practice applying the two basic concepts of events and states.

## Curriculum  
The Workshop curriculum is as follows:

### Day 1: *Intro to Framer I* - Getting Started  
**Goals** 
- Understand events and states
- Set up and import a Sketch file
- Systematically debug your own code  

**Lesson 1**  
- Slides: Intro to Framer  
- Slides: Intro to Programming  

**Lab 1**  
- Concept review
    - Write out in pseudocode five different types of events present in apps and what properties they change  
- Build your own simple interaction or flow with Framer's design editor or Sketch  

**Lesson 2: Board Picker**
- Concepts covered
    - Sketch file importing
    - Events
    - States 

**Lab 2**  
- Customize your board picker (add confirmation, etc)  
- Play with inputs and outputs by exploring sliders  


### Day 2: *Intro to Framer II* - Animations
**Goals** 
- Set up a scroll view  
- Know how and when to use an if/else conditional statement  
- Feel comfortable reading through Framer's documentation  

**Lesson 3: Header modulation on scroll**  
- Concepts covered
    - ScrollComponents
    - Conditionals: If/else
    - Utils.modulate()  

**Lab 3**  
- Concept review 
    - Identify 3 behaviors in an app that could use a conditional statement. Write out the behavior modeled by those in pseudocode  
    - Identify some interactions that could use Utils.modulate  
- Add some more conditions into the header example

**Lesson 4: Grid to Closeup**
- Concepts covered
  - Parent/child layer relationships
  - Relative positioning based on parent or screen
  - “visible” vs “opacity”

**Lab 4**  
- Build on grid to closeup
    - Make the back button + animation work


### Day 3: *More to Framer I* - Scability and Full Interactivity
**Goals** 
- Know how and when to use a for loop
- Know how and when to use a object/dictionary

**Lesson 5: Three-column grid**  
- Concepts covered
  - For loops
  - Arrays/Lists
  - Scope
  - Global vs local variables
  - Helper functions

**Lab 5**  
- Concept review  
  - With a partner, identify five different layouts or components in an app that can be created dynamically with a loop. 
  - Pick one layout to recreate in Framer  
- Apply your knowledge  
  - Make all the options in the board picker example work  
  - Make Grid to Closeup work for any Pin! (Change 2 lines of code)  

**Lesson 6: Tabs**
- Concepts covered  
  - New data struction: the dictionary (sometimes called object or hashmap)  
- Tabs example  

**Lab 6**  
- Build a masonry grid


### Day 4: *More to Framer II* - Designing with Data  
**Goals** 
- Explain what an API is to someone  
- Be able to iterate through JSON data  
- Identify when code can be cleaned up  

**Lesson 7: APIs**  
- Slides: Intro to APIs  
- Building a masonry grid with JSON data  

**Lab 7**  
- Concept review  
  - Explain an API to someone. What are some examples of APIs out in the wild?
  - Make your own JSON file with several layers of nesting and parse our the data you need

**Lesson 8: Using the Pinterest API**
- Concepts covered
  - Reading the Pinterest API documentation
  - Generating an access token
  - Making an API call

**Lab 8**  
- Build your own prototype that puts together some of the concepts learned
- 1:1 code reviews
