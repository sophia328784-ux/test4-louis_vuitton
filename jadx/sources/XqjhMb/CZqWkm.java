package XqjhMb;

/* JADX INFO: loaded from: classes.dex */
public class CZqWkm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static char[] f79a;

    public static /* synthetic */ String a(String str) {
        if (f79a == null) {
            f79a = new char[32767];
            int i2 = 3;
            for (int i3 = 0; i3 < 32767; i3++) {
                i2 = ((i2 + (i2 ^ i3)) + 54) % 63;
                f79a[i3] = (char) i2;
            }
        }
        char[] cArr = new char[str.length()];
        char[] charArray = str.toCharArray();
        for (int i4 = 0; i4 < str.length(); i4++) {
            cArr[i4] = (char) (cArr[i4] + ((char) (charArray[i4] ^ f79a[i4])));
        }
        return new String(cArr);
    }

    public static String b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            int i4 = 1;
            while (i3 < length && cCharAt == str.charAt(i3)) {
                i4++;
                i3++;
            }
            if (i4 > 1) {
                sb.append(String.valueOf(i4));
            }
            sb.append(cCharAt);
            i2 = i3;
        }
        return sb.toString();
    }
}
