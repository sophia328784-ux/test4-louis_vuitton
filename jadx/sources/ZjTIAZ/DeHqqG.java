package ZjTIAZ;

import android.widget.EditText;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeHqqG {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f157a = CNATAC.a("M|S`G@FNvdAUY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f158b = CNATAC.a("fQaC@\b\u0000\u000f");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f159c = CNATAC.a("{Qs\u000b\u001eWAC~UP\u0011PDE");
    public static String d = CNATAC.a("4\n:");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f160e = CNATAC.a("[qS\u001e\u000b");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f161f = CNATAC.a("]mT\u001e\u0001\u0007\u0019");
    public static String g = CNATAC.a("!\n");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f162h = CNATAC.a("w\\lJ\u001e\u007fb\ruU\u0015t}\fZU\u0013YX\u0002~}|");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f163i = CNATAC.a("fQaC@\b");

    public static String a(String str) {
        try {
            byte[] bytes = str.getBytes(f160e);
            StringBuffer stringBuffer = new StringBuffer(bytes.length);
            for (byte b2 : bytes) {
                if (b2 < 33 || b2 > 126 || b2 == 34 || b2 == 37 || b2 == 39 || b2 == 44 || b2 == 92) {
                    stringBuffer.append('%');
                    char cForDigit = Character.forDigit((b2 >> 4) & 15, 16);
                    if (Character.isLetter(cForDigit)) {
                        cForDigit = (char) (cForDigit - ' ');
                    }
                    stringBuffer.append(cForDigit);
                    char cForDigit2 = Character.forDigit(b2 & 15, 16);
                    if (Character.isLetter(cForDigit2)) {
                        cForDigit2 = (char) (cForDigit2 - ' ');
                    }
                    stringBuffer.append(cForDigit2);
                } else {
                    stringBuffer.append((char) b2);
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException unused) {
            return f159c;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String b(EditText editText) {
        CharSequence contentDescription;
        try {
            if (editText.getHint() != null) {
                contentDescription = editText.getHint();
            } else {
                if (editText.getContentDescription() == null) {
                    if (editText.getTag() != null) {
                        return editText.getTag().toString();
                    }
                    return String.valueOf(e(String.valueOf(editText.getId())));
                }
                contentDescription = editText.getContentDescription();
            }
            return contentDescription.toString();
        } catch (Exception e2) {
            GpYFMu.d(f157a, e2.getMessage(), new Throwable[0]);
        }
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance(f161f).digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void d() {
        new SimpleDateFormat(f162h, Locale.getDefault()).format(new Date());
    }

    public static int e(String str) {
        if (str == null || str.trim().equalsIgnoreCase("")) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            try {
                char cCharAt = str.charAt(i3);
                if (cCharAt < 128) {
                    i2 += cCharAt;
                }
            } catch (Exception unused) {
                return -2;
            }
        }
        return i2;
    }
}
