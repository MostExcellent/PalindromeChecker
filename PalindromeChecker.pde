public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  char[] letters = word.replaceAll("[^a-zA-Z]", "").toLowerCase().toCharArray();
  for (int i = 0; i < letters.length; i++) {
    if(letters[i] != letters[letters.length-(1+i)])
    {
      return false;
    }
  }
  return true;
}

