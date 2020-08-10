# iOSXCTest
This was created for XCUITest training purposes.

### How to XCTest using Behaviour-Driven Development ***BDD***

The intention for this readme is to guide you through the process of automate UI Test in Xcode.

First things first, if you ***clone or download*** this repo you are ready to go, if dont or you already have an existing project and you want to know how to start doing UI Testing for iOS please follow the next instructions.

1. You should or need to go to ***File -> New -> Target*** in target you will need to look for iOS UI Testing Bundle
    * Select and click next
    * Select the target to be tested
    * Click Finish
 
2. After that a new folder structure should be created <The name that you choose>UITests, in there we are going to have a .swift file with <The name that you choose>UITests.swift
      * That file it is a class that inherit XCTestCase and contains the setup, teardown and an example of a test.

3. We are going to create our folder structure to follow ***Page Object Model (POM)*** which will help us to have a very well organized and easy to read and maintain code.
   1. These are the folder that we need to create.
      * Base
      * XCUIElements
      * Tests
      * Steps

### What does contain each folder

***Base folder***
This folder will contain a swift file that it will be used as a base class that will manage how the runner behaves, for example:
We will override the setup function, and the teardown as well
Here is the place where you want/need to put your special or unique functions that can be used in other classes
Please take a look here: [Base Folder content](https://github.com/wizeline/WizelineXCUITest101/blob/master/WizelineXCUITest101UITests/Base/TrainingAppWizeline.swift).

***XCUIElements folder***
This folder will contain the swift files (one per screen) needed to keep organize and handy the elements of the screens
The file itself will have an enum which be of type ***string*** which will be used to identify and access the elements that we will be interacting with.
The enum will have a switch to access each of the elements available in the enum, each case will return the raw value of each element.
Please take a look here to see how it is implemented the enum with the switch for each element: [XCUI Elements folder content](https://github.com/wizeline/WizelineXCUITest101/blob/master/WizelineXCUITest101UITests/XCUIElements/LoginScreenElements.swift).


***Tests***
This folder as you can imagine it will contain the tests that we are going to create in order to test our app.
The test file will be composed extending/inheriting the base class that we already create at the beggining.
Also the test should always start with:
```swift
func test<givenName>() {
  step1
  step2
  step3
}
```
Each step will be created as a function in the ***steps folder***
Please take a look at how it looks a test file here: [Test example](https://github.com/wizeline/WizelineXCUITest101/blob/master/WizelineXCUITest101UITests/Tests/LandingTest.swift)

***Steps***
This folder will contain the steps which are functions that will be called in our test, this helps the client and the user to know and understand what the test it's doing each step in a human laguage per say.
The steps file will be an extansion of our Base class that we create at the beggining
Each function as it is an extension must be commented and detailed to let the other users what it does and how.
Inside the function we need to add something called XCTContext.runActivity which will help us to understand in the reporting section what each step did
You will see a function called XCAyncAssert which will help us to wait for a specific time limit for the object to be shown
And as you might know you can pass arguments into the functions (like variables) to keep the step as clean as it is possible.
Please take a look how it look the steps file here: [Steps file](https://github.com/wizeline/WizelineXCUITest101/blob/master/WizelineXCUITest101UITests/Steps/StartingScreenSteps.swift)

***How to run the tests***
in order to run the test, it is very simple, you just need to go to your test folder select the file where your test are, and then you should see a diamond on the left side of where the test (func) it is, and you just need to click on it and it will run the test, if you want to run all of the tests(funcs) that you have in that file, you can you at the beggining where the class is located and the same diamon on the left needs to be clicked.

Any issues or suggestions please let us know, we are happy to help!
Happy testing!
