#CMT Assessment by Hamza Khalid
class Square(): #class declaration  
    def __init__(self,side): #constructor checking for 
        side = round(side)
        if side >=1 and side <=10:
            self.side = side
        else:
            raise ValueError('Side length must be between 1 and 10!') #raise an error when side length does not follow perimeters
    def Area(self): #area function declaration
        return self.side**2 #returning side length squared to calculate area
    def Perimeter(self): #perimeter function declaration
            return self.side*4 #returning side length *4 to calculate the perimeter

sq = Square(10.6) #creating an object of class Square to test and assign side length 
print('The square has side lengths of:', sq.side) #printing side length
print('The area of the square is:', sq.Area()) #printing area of the square by calling area function
print('The perimeter of the square is:', sq.Perimeter()) #printing perimeter of the square by calling perimeter function



