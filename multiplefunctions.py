class multiplefunction():
    def Subfields():
        print("Sub-fields in AI are:")
        lists = ["Machine learning", "Neural networks", "Vision", "Robotics", "Speech processing", "Natural language processing"]
        for fields in lists:
            print (fields)

    def OddEven():
        num = int(input("Enter a number"))
        if (num%2 == 0):
            print (num, " is Even number")
            numb = num
        else:
            print (num, " is Odd number")
            numb = num
        return numb


    def Eligible():
        gender = input("Your gender:")
        age = int(input("Your age:"))
        if(gender == "Male" and age >= 21):
            print ("Eligible")
            stat = "Eligible"
        elif(gender == "Female" and age >= 18):
            print ("Eligible")
            stat = "Eligible"
        else:
            print ("Not Eligible")
            stat = "Not Eligible"
        return stat

    def percentage():
        sub1 = int(input("Subject1="))
        sub2 = int(input("Subject2="))
        sub3 = int(input("Subject3="))
        sub4 = int(input("Subject4="))
        sub5 = int(input("Subject5="))
        tot = sub1+sub2+sub3+sub4+sub5
        print("Total:",tot)
        percent = round(tot/5,2)
        print("Percentage:", percent)
        return percent   

    def triangle():
        height = int(input("Height:"))
        width = int (input("Width:"))
        aot =  (height*width)/2
        print("Area of triangle:",aot)
      
        height1 = int(input("Height1:"))
        height2 = int(input("Height2:"))
        width1 = int (input("Width1:"))
        pot  = height1+height2+width1
        print("Perimeter of triangle:",pot)
        return pot,aot