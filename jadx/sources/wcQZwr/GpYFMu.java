package wcQZwr;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class GpYFMu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GpYFMu f80833a = new GpYFMu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static char[] f80834b;

    public static void b(int i2, String str, String str2) {
        String str3;
        try {
            String strConcat = f("h{H\"").concat(str);
            if (str2.length() <= 4000) {
                Log.println(i2, strConcat, str2);
                return;
            }
            int length = str2.length() / 4000;
            int i3 = 0;
            while (i3 <= length) {
                int i4 = i3 + 1;
                int i5 = i4 * 4000;
                if (i5 >= str2.length()) {
                    str3 = f("z[jl9") + i3 + f("\u0010\u001a") + str2.substring(i3 * 4000);
                } else {
                    str3 = f("z[jl9") + i3 + f("\u0010\u001a") + str2.substring(i3 * 4000, i5);
                }
                Log.println(i2, strConcat, str3);
                i3 = i4;
            }
        } catch (Exception unused) {
        }
    }

    public static void c(String str, String str2, Throwable... thArr) {
        f80833a.a(3, str, str2, thArr);
    }

    public static void d(String str, String str2, Throwable... thArr) {
        f80833a.a(6, str, str2, thArr);
    }

    public static void e(String str, String str2, Throwable... thArr) {
        f80833a.a(4, str, str2, thArr);
    }

    public static /* synthetic */ String f(String str) {
        if (f80834b == null) {
            f80834b = new char[32767];
            int i2 = 3;
            for (int i3 = 0; i3 < 32767; i3++) {
                i2 = ((i2 + (i2 ^ i3)) + 99) % 63;
                f80834b[i3] = (char) i2;
            }
        }
        char[] cArr = new char[str.length()];
        char[] charArray = str.toCharArray();
        for (int i4 = 0; i4 < str.length(); i4++) {
            cArr[i4] = (char) (cArr[i4] + ((char) (charArray[i4] ^ f80834b[i4])));
        }
        return new String(cArr);
    }

    public static void g(String str, String str2, Throwable... thArr) {
        f80833a.a(5, str, str2, thArr);
    }

    public final void a(int i2, String str, String str2, Throwable... thArr) {
        if (str == null) {
            try {
                str = f("doTTFNZ[");
            } catch (Exception unused) {
                return;
            }
        }
        if (str2 == null) {
            str2 = f("DOtt9wh{");
        }
        if (i2 < 3) {
            return;
        }
        if (thArr.length <= 0) {
            b(i2, str, str2);
            return;
        }
        b(i2, str, str2 + '\n' + Log.getStackTraceString(thArr[0]));
    }
}
