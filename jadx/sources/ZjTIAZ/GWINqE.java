package ZjTIAZ;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GWINqE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f191a = 7423;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f192b = 6406;

    static {
        CNATAC.a("#\u00149\u0001\u001f\u001f\u0016\u0014=\u001c\u0004\u000e\u0004");
        CNATAC.a("#\u00149\u0001\u001f\u001f\u0016\u0014=\u001c\u0004\u000e\u0005\u001a");
    }

    public static String a(Exception exc) {
        int i2;
        String stackTraceString = Log.getStackTraceString(exc);
        if (stackTraceString == null) {
            return stackTraceString;
        }
        int length = stackTraceString.length();
        if ((f192b ^ 6406) != 0) {
            while (true) {
                i2 = f192b;
                int i3 = i2 + 26;
                if (i3 == 72) {
                    f192b = (i2 * 3706) + i2;
                } else {
                    if (i3 == 249) {
                        break;
                    }
                    if (i3 == 322) {
                        do {
                            f192b = (f192b % 126) >> 29;
                        } while (f191a > 7422);
                        while (true) {
                            int i4 = f191a;
                            if (i4 + 78 == 8) {
                                f191a = ((i4 >> 42) ^ 4953) % 123;
                            }
                        }
                    } else if (i3 != 434) {
                    }
                }
                f192b = ((f192b >> 26) >> 104) ^ 3651;
                break;
            }
            f192b = (f192b * 10057) + i2;
        }
        return length > 500 ? stackTraceString.substring(0, 500) : stackTraceString;
    }

    public static void b(Exception exc) {
        try {
            if (XbALEN.b().length() < 5000) {
                String str = XbALEN.b() + ";" + DeHqqG.a(a(exc));
                synchronized (XbALEN.class) {
                    XbALEN.f314a = str;
                }
            }
        } catch (Exception unused) {
        }
    }
}
