a = ["apple", "banana", "!", 1, 12, 30]
print(type(a))

fruits = ["strawberry", "cherry", "guvava"]
fruits.append("orange")
print(fruits)

# Add: .append() , .insert()
#Remove: .remove() , .pop()
#Access: fruits[0] -> first item
#Slice: fruits[1 : 3] -> geta a range
#Sort: .sort()

print(fruits[2])

print(a[-1:6])

student = {
    "name" : "Alice",
    "age" : 20,
    "marks" : 85
}
print(student["name"])

# Real life use case :
# store user profile info in a website 
# Store product details in an e-commerce site

# add/update: student["city"] = "Lomdon"
#Remove: pop("age")

#Tuple : ordered but unchangeble collection in()
# - can store different data type
# - maintains order
# - immutable (items cannot)

age = 18
if age >= 18:
    print("you can vote")
else:
    print("not eligible")

marks = 75
if marks >= 90:
    print("Grade A")
elif marks >= 75:
    print("Grade B")
else:
    print("Grade C")

list = ["apple", "banana", "!", 1, 12, 30, "a", "x"]
for i in list:
   print(i)


count = 0
while(count < 3):
    count = count + 1
    print("hii!")


for num in range(1,6):
    if num ==3:
        break
    print(num)


for num in range(1,6):
    if num ==3:
        continue
    print(num)