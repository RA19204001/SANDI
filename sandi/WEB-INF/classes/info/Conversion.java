//改行に対応する
//タグを除外する
package info;

public class Conversion{
  //引数をreplaceメソッドで変換する
  public static String conversionText(String text){
    String conversion=text.replace("<","&lt;").replace(">","&gt;").replace("\r\n","<br>");

    return conversion;
  }
}
