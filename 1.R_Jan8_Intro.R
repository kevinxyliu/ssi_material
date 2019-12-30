#Introduction to R 
#SOSC 13200
#Winter 2018
#Dr. Lauren K. Perez

#This is an R script that you have opened in R Studio. R scripts are generally .R files. 
  #For your assignments, we will be using R Markdown.  These will be .rmd files and will also show up here.

#Anything that has a pound sign in the front and shows up in green is a "comment."
  #Comments don't execute any functions.
  #You can use them for notes to yourself, to remind yourself what you are doing or why. (Here, you may also want 
    #to use them to answer some of the thought questions or make additional notes as you figure things out.)
  #You can also use the hashtag before functions that you do not want to run to "comment them out."
    #Commenting out code that isn't working can be a good way to try to diagnose and fix the problem without deleting work!

#Try adding a new comment to the block at the top that adds your own name.  
  #Remember the hashtag and check that it shows up in green.
  
#Now highlight everything above this and click "Run" at the top-right of this window. 
  #Everything should print below in the "Console" window below.  Check that your name prints, too. 
    #The console is where your output from scripts will show up.  
    #You can also type directly in the console, which can be useful for testing script. We will try this below. 

#First, we will learn how to just print text.  
  #You can do this from a script.  Highlight the line below (or this whole paragraph) and click "run."
    print("Welcome to SOSC 13200")
  #You can also do this in the console below.  Go to where the cursor is, copy and paste the line above, and hit 'enter.'
  #Now print your name, both here and in the console. 
  #Next, let's try purposely making a mistake.  Run the line below. 
    print("It's not very cold outside"
  #See how it has a plus sign?  It is waiting for you to finish.  If you see that happen when you thought you'd finished, you likely forgot something.
    #You can hit "escape" to get out of the plus sign.  Do that now. 
  #Fix the line above so that it prints correctly
  
#You can think of the things (variables, datasets, etc.) that you use in R as objects
  #You use "functions" to do things to these objects  
  #Functions are always followed immediately by parentheses, and the object you want to perform the function on goes inside the parentheses
  #In other words, they take the form function(object)
  #We have already used one function.  What was it?  What objects did we feed it?
  #Note that some functions only work on certain types of objects.  For example, we cannot take the mean (average) of a character (word) object.
    
#The environment, in the top right, shows you what objects are currently created and loaded.  It is currently empty. 
  #Note that there is another tab behind it, called the History.  Click on that to see a history of what we've done so far. 
  #Then come back to the environment. 

#The bottom right has a number of tabs that may be helpful and are pretty self-explanatory.  Take note of the "help" tab, and use it! 
#In addition to searching for something in the help tab, you can also type a search term into the console if you precede it with a question mark
#For example, if you wanted help with the print function, you could type "?print" into the console.  Try it. It should show up in the help tab.

#You can also use R as a calculator.  Run the two lines of code below.  Where do the results show up?
  4+5
  54*58
  #Try subtracting something on your own.  Do it both here and in the console. 
  #Next, try division (use a "/" as the operator) and exponentiation (use a "^" as the operator)
  #Try at least one more complicated mathematical expression, using parentheses and multiple operations.
  
#Now let's try creating some character objects (word-based objects).  Run the line below. 
  song <- "Yellow Submarine"
  #Check that it shows up in the environment. Song is the object, and we have assigned content to that object. 
  #You could assign new content to that object, which would overwrite the existing content. 
  #Create another object called "goodsong" with the name of a song you like. 
  #You can also create objects using an "=" sign.  Create a "badsong" object using this method.  (This method is generally frowned upon, though.)
  #What happens if you run the line below?
    song
  #What other function would get you the same result?  Use that function to get the same outcome. 
    
#As mentioned above, what you can do to the object depends on its type.  
    #To determine what type of object you have, we can use the "class()" function. Try the next line, which applies the class() function to the "song" object.
      class(song)
    #Now check the class of your "goodsong" and "badsong" objects. 
  
#One of the things that we can do to character objects is substring() them, or select a smaller string. Try the line below.
    substr(song, 1, 6)
  #This printed a substring that consists of just the first word.  Note, it did not change the original object. 
      #There are two ways to check that it did not change the song object.  Can you think of them both? 
      #It did this by telling R that we wanted characters 1 through 6 of our original string.  In other words, the first six letters.
      #The additional information (that you want characters 1 through 6) that you give the function are called "arguments."
  #Use the substring function to get a substring that is just the word "Submarine."
    
#Again, as mentioned above, there are some functions you cannot perform on character objects.  Run the line below. 
    mean(song)
    #What happened?  It is not logical to take the mean of a word, so R won't do it. 
    
#All functions require at least one argument.  The arguments are what goes in the parentheses. 
    #In the command "print(song)", "print()" is the function and "song" is the only argument. 
    #In the "substr(song, 1, 6)" command, "substr()" is the function and "song", "1", and "6" (the object, the start character index position, and the stop character index position) are the arguments. 
    #All of the arguments go between the parentheses, separated by commas. You will learn what arguments you need for different functions. 
  
#You can use functions to create new objects.  So far we have just been printing the results of our functions in the console.
    #Run the line below.  Look for the new object in the environment. 
      shortsong <- substr(song, 1, 6)
    #Create a new object, "shortgood," that is the first word or syllable of your goodsong object. 
    #Next, reassign the value of shortsong to be the first word or syllable of your badsong object. 
    #Note, you have now lost the original "Yellow" content of shortsong. Make sure to think before you reassign objects. 
      #However, this is also a reason to do things from a script, rather than in the console.  
      #If you realized you needed that "Yellow" value back, you could just scroll up and rerun the code to get it back. 

#Think back to the handout on naming things in R.  What naming convention do you think I tend to use, based on what I've had you name things so far?
      #If you would prefer to use a different naming convention, you may rename these (or just use it in the future)
            
#Another type of object is a vector. A vector is a series of components of the same basic type. 
  #Run the line of code below to create a vector. 
    x1 <- c(2, 3, 4, 5, 6)
    #Check the class of the x1 object
    #Now run the line of code below. 
    x2 <- c(2:6)
    #Look at the output in the environment. One thing is the same about x1 and one thing is different.  (Use print() and class() if you're not sure.)
    #With many things in R, you will find that there are multiple ways to do the same or similar things. 
    #Now try creating a couple of vectors on your own. 
    
#You can also use index values to access a certain position component of a vector.
    #Similar to how we counted the letter positions in our song names, you would now count the position of your vector's components.
    #What number is the first position of vector x1? What number is fourth?  Run the lines of code below to check. 
      x1[1]
      x1[4]
    #Now let's try reassigning a number in one of our vectors.  What do you think the line of code below will do?  Then try it. 
      x1[3] <- 8
      #If it isn't clear from the console, try printing the vector or look at it in the environment. 
    #Next, reassign the second component in vector x1 so that it is your favorite number. 
      
#Another type of object is a matrix.  The plural is "matrices." 
    #Matrices are rectangular arrays of numbers and symbols. (We'll see this in a second.)
    #Matrices are often denoted with bold, uppercase letters
    #Matrices are size RxC (rows and columns)
    #To create a matrix, run the following lines of code.  Look for it to appear in your environment. 
      X <- cbind(x1,x2)
    #There are a couple of ways you can view matrix X.  First, try printing it. 
    #Next, in the environment, click on the little grid on the right-hand side. 
    #Now let's try creating another matrix.  Look at the line of code below.  What is different from the line above? 
    #What do you think is going to happen?  Run the code to find out (and view/print it if you're still not sure).
      Y <- rbind(x1,x2)
    #Now that you see the difference, can you guess what the "c" and "r" stand for? (Hint: the words are in this section)
      #Look at the environment, where it says for X "num [1:5, 1:2]" and for Y "num [1:2, 1:5]"
      #What do you think the numbers in brackets are telling us?
      
#Indexing/Accessing matrices
    #Matrices are accessed: "X[r,c]", where "r" is the row index and "c" is the column index. 
      #You can leave one empty for all columns or all rows: "X[r,]" or "X[,c]"
      #Try the following line of code:
        X[5,2]
      #What happens if you flip those numbers?
      #Write code to print your favorite number that you added earlier. 
      #Now write code to print your favorite number from the Y matrix.
      #Next, try printing just the first row of the X matrix
      #Then try printing just the second column of the Y matrix
    #We can also get the dimensions of a matrix using the dim() function.  Run the line below. 
      dim(X)
      #This will also work for data frames, which we will get to below
    #Write a line of code to get the dimensions of the Y matrix. 
      
#Packages
    #R comes with many functions built in, but users can also write packages to add additional functions. 
    #You have to install a package the first time you use it, and after that you have to load it for each script in which you use it.
    #First, let's try loading a package by running the code below. 
      library(haven)
      #This is generally all you will have to do.  If it worked without an error, you already have "haven" installed. 
      #If not, or for any package you need to install in the future, you would use the function: install.packages("")
    #If you got an error loading "haven", run the line of code below, and then load the package. 
      install.packages("haven")
    #It is often a good idea to load all your packages at the start of a script, even if that means adding them into the top later on.
      #This makes it easy to go back and look later to see what packages you're using in a script.
    #Installing packages is one of the only things I will encourage you to do via the console rather than a script, since you only need to do it once.
    #Some other packages you might use frequently are dplyr, xtable, and stargazer.  Try installing one (or all) of these now. 
      
# Datasets
    #Datasets in R are opened by creating a dataframe object and assigning the content to it.
    #In this sense, when we are working with a dataframe in R we are not changing the original dataset, contained in a file.
      #Instead, we are working with the dataframe object created within the R working memory 
      #This point is absolutely crucial to understand.
      #We can delete, rename, change contents, and many other things, but those changes will not endure unless we save the dataset.
      #WHICH MEANS... you will not break anything. Try, try, try.
      #It also means, if you open the dataset later without saving it, your changes will not be there.
      #However, they could always be redone by running the script from last time, which you should ALWAYS save.

# Speaking of trying...
    #Much of what you will do in R will take time and can be frustrating
    #What is more frustrating is to try the same wrong solution several times, or to have deleted a right solution
    #Which is why saving your scripts and having a log of the commands and code you used for a particular problem is very important
    #And remember to comment your code, so you know what you did and why you did it
      
#Filepaths
    #In order to open data files, you will need to know the file path to where your data is saved
      #On a mac, find the file in finder, right/two finger click and then press option.  While you are holding down the option button, 
        #the normal "copy filename" option will switch to "copy filename as path."  If you click on the copy as path option, you can paste 
        #that into R. 
      #On a PC, find the file in Windows Explorer.  Hold the shift key down and right-cklick the file.  If you are holding down shift, 
        #an option will appear that says "copy as path."  If you click that, you can paste that into R.
      #Find a file and try pasting the filepath below.  Make sure to add it as a comment. 
      
#Importing datasets
    #Different datasets will be imported differently
    #To open a .csv datafile: dataname <- read.csv(<path>/filename.csv)
    #To open an excel datafile: (in two lines)
      #require(xlsx)
      #read.xlsx("<path>/filename.xlsx", sheetName = "Sheet1")
    #Stata data files (.dta): data <- read_dta("<path>/filename.dta") (this requires the haven package)
      
#College Scorecard Data
    #For class we will be using the dataset "CollegeScorecard1415_forR.dta" available on Canvas
    #Download it into a folder designed for R for this class
    #Identify the path of the folder 
    #You should also save this R script to that folder
    #Now fill the file path in where it says <path> and run the line below to open the data.  This uses the haven package.
      data <- read_dta("<path>/CollegeScorecard1415_forR.dta")
    #An object called data should appear in your environment.  Click the grid (or type "View(data)") to view the data.
    #Look for the University of Chicago.  Which of the variables can you make sense of?
  
#Setting a working directory
    #As you probably noticed while opening the file, having to write file paths can be obnoxious
    #You can globally set the working directory in R
    #If you do so, everytime that R has to look for files (or save files), the go-to place will be the working directory
    #Fill in the path you want to use for this class below and run the code.  This should be the R folder you just created.
      setwd("<path>")
    #Now, to test it out, run the line of code:
      data2 <- read_dta("CollegeScorecard1415_forR.dta")
    #Another object called `data2` should appear in the environment
      
#Some relevant commands for variables and dataframes.  Run the lines below and check that you can figure out what they do. 
    names(data)
    dim(data)
    class(data)
    
#Basic data types - variables within a dataframe can also be these types
    #Numerical
    #Integers
    #Logical (Boolean)
    #Characters
    #Factors
    
#Cleaning variables
    #Most datasets will have variables that are not quite useful for statistical analysis
    #Cleaning the data is a crucial part of the job
    #Start by looking at the variables
    #Make sure missing values are marked as missing
    #Make sure values are meaningful
    
#Example: Admissions Rate Variable ("admn_rate")
    #First check the class of the admissions rate variable.  
      #Hint: To do this, you call the variable object by telling R it is in the data object, like this: data$adm_rate
    #We can see that the variable is "character" class. This is because missing values are coded as "NULL," which R reads as a character string.
    #R codes missing data as 'NA'.  To replace the missing data, run the following line of code.
      data$adm_rate[which(data$adm_rate == "NULL")] <- NA
      #Think of this as saying that in our dataset ("data") and the variable/column for admission rate ("adm_rate"), we want to take all of those
        #values of admission rate *which* are currently equivalent to "NULL" and replace them with NA
      #You have to include data$adm_rate twice because sometimes you will want to change the value of one variable based on the values of another variable
        #For example, we might create a new variable called "selective," which initially takes a value of 0 for all observations.
        #Then we might want to change those schools below a certain admission rate to be coded as 1 for our "selective" variable
        #This code would look like this: data$selective[which(data$adm_rate < .3)] <- 1
    #Now fix the missing values for sat_avg.  You can check these in the view tab. 
    #Then we can transform it to numeric.  Run the line below.  Then check the class again. 
      data$adm_rate <- as.numeric(data$adm_rate)
      #Note, if you wanted to keep the original adm_rate variable for some reason, you could create a new variable instead
      #This would look something like data$adm_rate_num <- as.numeric(data$adm_rate)
    #Do this for sat_avg as well.
      
    #Now we can check some of the summary statistics of adm_rate. Run the line below, 
      summary(data$adm_rate)
    #From the table we can see that there is at least one university with an admissions rate of 0.
      #To check which ones, run the following line of code. 
        data[which(data$adm_rate == 0), 2]
        #This line of code is similar to how we printed certain objects from our matrices, above. 
        #Remember that we indexed the object by saying matrix[row,column]
        #So this code is saying that we want the rows for which adm_rate==0 and then we want the second column, which is school name. 
      #This one does the same thing - run it to see. 
        data$instnm[which(data$adm_rate == 0)]
        #This line of code calls the instition name column directly, and tells it to only print those for which adm_rate==0
      #What to do?  We could think that they are a mistake and delete them.  Run the line below to do this on data2.
        data2 <- data[which(data$adm_rate != 0), ]
        #This code selects all rows which do not equal (!=) 0, and all columns (by not listing a column index)
        #View this, and note that it also deletes all the NA ones. 
      #Or we could assume this is rounding down, and keep the variables.

# Create new variables
    #Create a variable to indicate a very selective institution
        data$selective <- 0 #this sets every observation to 0
        data$selective[which(data$adm_rate < 0.3)] <- 1 #this replaces those with an admission rate less than .3 to 1
          #At this point, there is a problem.  All of those that we just set to NA for admission rate are coded as 0 instead of NA.
        data$selective[which(is.na(data$adm_rate))] <- NA #this recodes all values that are missing for admission rate to be missing for selective
        table(data$selective)
    
    #Now try the same thing for colleges that have particularly high SAT averages
        
# Create new variables 2
    #This is a different way to create the same variable, and is more efficient, since it can do in one line what we did in three above
        data$selective2 <- ifelse(data$adm_rate < 0.3, 1, 0)
          #This line of codes says that if adm_rate in data is < .3, make the value of selective 1, else (otherwise) make it 0
        table(data$selective2)
        
    #Now try creating another high SAT average variable using this method
        
# Transform variables
    #The admission rate variable is currently between 0 and 1.  If you wanted to scale it between 0 and 100, you could run the following code:
        data$adm_rate_pct <- 100 * (data$adm_rate)
    #You can do any mathematical operations like this. 
    #To check what it looks like, use the summary() function again.
        
# Renaming variables
    #If you want to rename all of the variables in a dataset (or items in vector), you can create a vector of the new names and assign it 
        #This would take the form names(data) <- ("name1", "name2", "name3", ..., "nameX") for as many items as there are
        #However, this only works if you want to rename everything.  If you just did something like names(data) <- c("idno") to rename the 
          #first variable in our college scorecard data, you would lose the names for all of the other variables (they would all be NA)
    #To rename just one variable, you can do it by name or by index number
        #To rename by index number, it would take the form names(data)[#] <- "newname"
          #For example, we might want to rename the "stabbr" variable, since that might be harder to remember than "state"
          names(data)[4] <- "state"
              #This code tells R to look in the vector of names called by the names() function on the data frame.  
              #Then it tells it to assign the value "state" to the 4th object in that vector
        #To rename by name, the code takes the form names(data)[names(data) == "oldname"] <- "newname"
          #For example, you might find "idno" an easier name to remember than "opeid6"
          names(data)[names(data) == "opeid6"] <- "idno"
              #This code tells R to again look in the vector of names called by the names() function on the data frame.
              #Then it tells it to look for whichever item in that vector equals "opeid6"
              #Then it assigns the value of "idno" to that item
              #Both of these forms take the form names(data)[item we want] <- "newname", but they are two different ways of telling R which item we want. 
      #Try renaming another two variables, one each way.  Check that it worked correctly in the data viewer or by using the names() function.
          
        
#Since we will be working with the college scorecard data in most classes, you may want to start a new R script with code for cleaning the data.
  #This could include the code to set the NULL values to NA and to make the variables numeric.  
  #Then, the next time you need that code, you can just copy and paste it in rather than doing it all over again. 
  #You can do this now.
  #The same idea applies for the code for cleaning the data we will use for homework. 
        
# Setting up R
    #Check the objects in the environment on the menu at the right
    #To delete objects you use the rm() function.  Run the code below.
        rm(badsong)
    #Try deleting data2.
    #To clean the whole environment: rm(list=ls(all=TRUE))
    #To clean the whole environment, you can also click that little broom at the top. 
        
# Help in R
    # ? + the function  eg. "?plot"
    # help(function)
    # "??" + function
    # Add CRAN + google search term
    # Add [r] + google search term
    # Go to datacamp.com, stackoverflow
        
    # How to ask for help
      #Isolate one issue, work on each issue at a time
      #Try to make the mistake happen in as few lines of code as possible
      #Read the warnings
        
# Codes and coding rules
    #Name, date and purpose of the code script
    #Comment your chunks
    #Clean your code
        
# Help for an assignment or exercise
    #Programming can be very frustrating at first. Breathe.
    #First, look for help online.  Someone else has probably had the same problem. 
    #Then ask for help from your classmates/friends
    #Then ask me for help or post to the online office hours
    #Remember to write down what did you try,  why you think it didn't work, and what you did to look for help online
        
#Good luck! 
        
    


