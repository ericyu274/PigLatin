public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
    for(int i = 0; i<sWord.length(); i++){
    if(sWord.charAt(i)=='a'||sWord.charAt(i)=='e'||sWord.charAt(i)=='i'||sWord.charAt(i)=='o'||sWord.charAt(i)=='u'){
      return i;
    }
  }
  return -1;
}


public String pigLatin(String sWord){
  if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == 1 && sWord.charAt(0) != 'q'){
    return sWord.substring(1)+sWord.charAt(0)+"ay";
  }
  else if(findFirstVowel(sWord) == 2 && sWord.charAt(0) != 'q'){
    return sWord.substring(2)+sWord.substring(0,2)+"ay";
  }
  else if(findFirstVowel(sWord) == 1 && sWord.substring(0,2).equals("qu")){
    return sWord.substring(2)+sWord.substring(0,2)+"ay";
  }
  else if(findFirstVowel(sWord) == 3 && sWord.charAt(0) != 'q'){
    return sWord.substring(3)+sWord.substring(0,3)+"ay";
  }
  else if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
