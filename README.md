# Ceasar
I tried to program the ceasar encryption method with Dart

When thinking about the problem it was obvious to me that the string handaling was a big part to find the solution.
Before starting I search how ceasar algorithm works, for the encryption it only add the key then make sure the new result is in the bounderies of the alphabet therefore we use modulo 26. To Decrypt the cypher you need to substract the key and like encrypting we use modulo 26 so it stays aphabetically correct.
After knowing the formula for ceasar encryption the rest seems just a way of handaling string and transform it from a string to number we can add to a key or substract it. Then we need a way to interpret those numbers back to text form.
