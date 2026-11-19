package JeZnOD;

/* JADX INFO: loaded from: classes2.dex */
public class ZpOInL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static char[] f26a;

    static {
        a("ku\u007f");
        a("ku\u007f\u001f\\jO$RJCm\u0014RCGNPVP");
    }

    public static /* synthetic */ String a(String str) {
        if (f26a == null) {
            f26a = new char[32767];
            int i2 = 3;
            for (int i3 = 0; i3 < 32767; i3++) {
                i2 = ((i2 + (i2 ^ i3)) + 114) % 63;
                f26a[i3] = (char) i2;
            }
        }
        char[] cArr = new char[str.length()];
        char[] charArray = str.toCharArray();
        for (int i4 = 0; i4 < str.length(); i4++) {
            cArr[i4] = (char) (cArr[i4] + ((char) (charArray[i4] ^ f26a[i4])));
        }
        return new String(cArr);
    }
}
