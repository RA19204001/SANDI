//���s�ɑΉ�����
//�^�O�����O����
package info;

public class Conversion{
  //������replace���\�b�h�ŕϊ�����
  public static String conversionText(String text){
    String conversion=text.replace("<","&lt;").replace(">","&gt;").replace("\r\n","<br>");

    return conversion;
  }
}
