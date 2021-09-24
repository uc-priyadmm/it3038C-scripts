# LAB5 ASSIGNMENT "Take a word as input and count how many letters, how many vowels and how many consonants"
#Mayank Mani Priyadarshi
vcount = 0;  
ccount = 0;  
str = input("Enter your value: ")
#Converting to lower case 
str = str.lower();  
for i in range(0,len(str)):   
    #vowel  
    if str[i] in ('a',"e","i","o","u"):  
        vcount = vcount + 1;  
    elif (str[i] >= 'a' and str[i] <= 'z'):  
        ccount = ccount + 1;  
print("Total number of vowel and consonant are" );  
print(vcount);  
print(ccount);  