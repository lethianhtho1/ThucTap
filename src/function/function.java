package function;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class function {
	
	public static int Rangbuoc(String mail) {
		String mau = "^[a-zA-Z0-9+]{6,15}$";
		Pattern p = Pattern.compile(mau, Pattern.CASE_INSENSITIVE);
		Matcher  m = p.matcher(mail);
		if(m.find())
		{
			return 1;
		}
		return 0;
		
		}
	
	
	
	public static String convertStr(String str) {
		str = str.replace('à', 'a');
		str = str.replace('á', 'a');
		str = str.replace('ạ', 'a');
		str = str.replace('ả', 'a');
		str = str.replace('ã', 'a');
		str = str.replace('â', 'a');
		str = str.replace('ầ', 'a');
		str = str.replace('ấ', 'a');
		str = str.replace('ậ', 'a');
		str = str.replace('ẩ', 'a');
		str = str.replace('ẫ', 'a');
		str = str.replace('ă', 'a');
		str = str.replace('ằ', 'a');
		str = str.replace('ắ', 'a');
		str = str.replace('ẳ', 'a');
		str = str.replace('ẵ', 'a');
		str = str.replace('ặ', 'a');

		str = str.replace('é', 'e');
		str = str.replace('è', 'e');
		str = str.replace('ẻ', 'e');
		str = str.replace('ẽ', 'e');
		str = str.replace('ẹ', 'e');
		str = str.replace('ê', 'e');
		str = str.replace('ế', 'e');
		str = str.replace('ề', 'e');
		str = str.replace('ệ', 'e');
		str = str.replace('ể', 'e');
		str = str.replace('ễ', 'e');

		str = str.replace('í', 'i');
		str = str.replace('ì', 'i');
		str = str.replace('ỉ', 'i');
		str = str.replace('ĩ', 'i');
		str = str.replace('ị', 'i');

		str = str.replace('ó', 'o');
		str = str.replace('ò', 'o');
		str = str.replace('ỏ', 'o');
		str = str.replace('õ', 'o');
		str = str.replace('ọ', 'o');
		str = str.replace('ô', 'o');
		str = str.replace('ố', 'o');
		str = str.replace('ồ', 'o');
		str = str.replace('ổ', 'o');
		str = str.replace('ỗ', 'o');
		str = str.replace('ộ', 'o');
		str = str.replace('ơ', 'o');
		str = str.replace('ớ', 'o');
		str = str.replace('ờ', 'o');
		str = str.replace('ở', 'o');
		str = str.replace('ỡ', 'o');

		str = str.replace('ú', 'u');
		str = str.replace('ù', 'u');
		str = str.replace('ủ', 'u');
		str = str.replace('ũ', 'u');
		str = str.replace('ụ', 'u');
		str = str.replace('ư', 'u');
		str = str.replace('ứ', 'u');
		str = str.replace('ừ', 'u');
		str = str.replace('ử', 'u');
		str = str.replace('ữ', 'u');
		str = str.replace('ự', 'u');

		str = str.replace('ý', 'y');
		str = str.replace('ỳ', 'y');
		str = str.replace('ỷ', 'y');
		str = str.replace('ỹ', 'y');
		str = str.replace('ỵ', 'y');

		str = str.replace('đ', 'd');

		str = str.replace('Á', 'A');
		str = str.replace('À', 'A');
		str = str.replace('Ả', 'A');
		str = str.replace('Ã', 'A');
		str = str.replace('Ạ', 'A');
		str = str.replace('Â', 'A');
		str = str.replace('Ấ', 'A');
		str = str.replace('Ầ', 'A');
		str = str.replace('Ẩ', 'A');
		str = str.replace('Ẫ', 'A');
		str = str.replace('Ậ', 'A');
		str = str.replace('Ă', 'A');
		str = str.replace('Ắ', 'A');
		str = str.replace('Ằ', 'A');
		str = str.replace('Ẳ', 'A');
		str = str.replace('Ẵ', 'A');
		str = str.replace('Ặ', 'A');

		str = str.replace('É', 'E');
		str = str.replace('È', 'E');
		str = str.replace('Ẻ', 'E');
		str = str.replace('Ẽ', 'E');
		str = str.replace('Ẹ', 'E');
		str = str.replace('Ê', 'E');
		str = str.replace('Ế', 'E');
		str = str.replace('Ề', 'E');
		str = str.replace('Ể', 'E');
		str = str.replace('Ễ', 'E');
		str = str.replace('Ệ', 'E');

		str = str.replace('Í', 'I');
		str = str.replace('Ì', 'I');
		str = str.replace('Ỉ', 'I');
		str = str.replace('Ĩ', 'I');
		str = str.replace('Ị', 'I');

		str = str.replace('Ó', 'O');
		str = str.replace('Ò', 'O');
		str = str.replace('Ỏ', 'O');
		str = str.replace('Õ', 'O');
		str = str.replace('Ọ', 'O');
		str = str.replace('Ô', 'O');
		str = str.replace('Ố', 'O');
		str = str.replace('Ồ', 'O');
		str = str.replace('Ổ', 'O');
		str = str.replace('Ỗ', 'O');
		str = str.replace('Ộ', 'O');
		str = str.replace('Ơ', 'O');
		str = str.replace('Ớ', 'O');
		str = str.replace('Ờ', 'O');
		str = str.replace('Ở', 'O');
		str = str.replace('Ỡ', 'O');
		str = str.replace('Ợ', 'O');

		str = str.replace('Ú', 'U');
		str = str.replace('Ù', 'U');
		str = str.replace('Ủ', 'U');
		str = str.replace('Ũ', 'U');
		str = str.replace('Ụ', 'U');
		str = str.replace('Ư', 'U');
		str = str.replace('Ứ', 'U');
		str = str.replace('Ừ', 'U');
		str = str.replace('Ử', 'U');
		str = str.replace('Ữ', 'U');
		str = str.replace('Ự', 'U');

		str = str.replace('Ý', 'Y');
		str = str.replace('Ỳ', 'Y');
		str = str.replace('Ỷ', 'Y');
		str = str.replace('Ỹ', 'Y');
		str = str.replace('Ỵ', 'Y');

		str = str.replace('Đ', 'D');

		str = str.replace('"', '-');
		str = str.replace(',', '-');
		str = str.replace('!', '-');
		str = str.replace('@', '-');
		str = str.replace('#', '-');
		str = str.replace('$', '-');
		str = str.replace('%', '-');
		str = str.replace('^', '-');
		str = str.replace('&', '-');
		str = str.replace('*', '-');
		str = str.replace('(', '-');
		str = str.replace(')', '-');
		str = str.replace('[', '-');
		str = str.replace(']', '-');
		str = str.replace('{', '-');
		str = str.replace('}', '-');
		str = str.replace('<', '-');
		str = str.replace('>', '-');
		str = str.replace('?', '-');
		str = str.replace('/', '-');
		str = str.replace('|', '-');
		str = str.replace('_', '-');
		str = str.replace(' ', '-');
		str = str.replace('.', '-');
		str = str.replace(':', '-');
		str = str.replace('+', '-');
		str = str.replace(';', '-');
		str = str.replace('`', '-');
		str = str.replace("'", "-");

		return str;
	}

	public static String encryptPassword(String password) {
		String sha1 = "";
		try {
			MessageDigest crypt = MessageDigest.getInstance("SHA-1");
			crypt.reset();
			crypt.update(password.getBytes("UTF-8"));
			sha1 = byteToHex(crypt.digest());
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return sha1;
	}

	private static String byteToHex(final byte[] hash) {
		Formatter formatter = new Formatter();
		for (byte b : hash) {
			formatter.format("%02x", b);
		}
		String result = formatter.toString();
		formatter.close();
		return result;
	}
}
