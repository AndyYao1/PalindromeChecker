public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(noCapitals(noSpaces(onlyLetters(lines[i]))))==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a = "";
  for(int i = word.length(); i > 0; i--)
    a = a + word.substring(i-1,i);
  return word.equals(a);
  
}
public String reverse(String str)
{
  String a = "";
  for(int i = str.length(); i > 0; i--)
    a = a + str.substring(i-1,i);
  return a;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String a = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i,i+1).equals(" "))
      continue;
    a = a + sWord.substring(i,i+1);
  }
  return a;
}

public String onlyLetters(String sString){
  String a = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      a = a + sString.charAt(i);
  }
  return a;
}

