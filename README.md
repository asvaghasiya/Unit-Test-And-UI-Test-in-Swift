
#  How to write Unit test and UITest in Swift iOS?

Before writing any tests, it’s important to know the basics. What do you need to test?
Generally, tests should cover:
   
    ▪    Core functionality: Model classes and methods and their interactions with the controller
    ▪    The most common UI workflows
    ▪    Boundary conditions
    ▪    Bug fixes

# Unit Test
Effective unit tests criteria are:
    
    ▪    Fast: Tests should run quickly.
    ▪    Independent/Isolated: Tests should not share state with each other.
    ▪    Repeatable: You should obtain the same results every time you run a test. External data providers or concurrency              issues could cause intermittent failures.
    ▪    Self-validating: Tests should be fully automated. The output should be either “pass” or “fail”, rather than rely on a          programmer’s interpretation of a log file.
    ▪    Timely: Ideally, tests should be written before you write the production code they test (Test-Driven Development).
        
# UI Test
UI testing lets you test interactions with the User interface. UI testing works by finding an app’s UI objects with queries, synthesizing events, and then sending the events to those objects. The API enables you to examine a UI object’s properties and state in order to compare them against the expected state.
