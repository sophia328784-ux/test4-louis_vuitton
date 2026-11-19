package com.batch.android.c1;

import android.text.TextUtils;
import com.batch.android.e.t;
import java.net.URI;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f22998a = 1024;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f22999b = 256;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f23002f = 64;
    private static final int g = 25;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f23003h = 2048;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f23000c = Pattern.compile("^[^@\\r\\n\\t]+@[A-z0-9\\-\\.]+\\.[A-z0-9]+$");
    private static final Pattern d = Pattern.compile("^\\+[0-9]{1,15}$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f23001e = Pattern.compile("^[a-zA-Z0-9_]{1,30}$");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final List<String> f23004i = Arrays.asList("undefined", "null", "nil", "(null)", "[object object]", "true", "false", "nan", "infinity", "-infinity");

    /* JADX INFO: renamed from: com.batch.android.c1.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0042a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23005a;

        static {
            int[] iArr = new int[b.EnumC0043a.values().length];
            f23005a = iArr;
            try {
                iArr[b.EnumC0043a.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23005a[b.EnumC0043a.INVALID_KEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class b extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final EnumC0043a f23006b;

        /* JADX INFO: renamed from: com.batch.android.c1.a$b$a, reason: collision with other inner class name */
        public enum EnumC0043a {
            INVALID_KEY,
            INVALID_STRING_ITEM,
            NULL_VALUE
        }

        public b(EnumC0043a enumC0043a) {
            this.f23006b = enumC0043a;
        }

        public void a(String str, String str2) {
            int i2 = C0042a.f23005a[this.f23006b.ordinal()];
            if (i2 == 1) {
                t.a(str, "setAttribute cannot be used with a null value. Ignoring attribute '" + str2 + "'");
                return;
            }
            if (i2 != 2) {
                return;
            }
            t.a(str, "Invalid key. Please make sure that the key is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can't be longer than 30 characters. Ignoring attribute '" + str2 + "'.");
        }
    }

    public static boolean a(List<String> list) {
        if (list.size() > 25) {
            return true;
        }
        for (String str : list) {
            if (str.trim().isEmpty() || str.length() > 64) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(URI uri) {
        return uri == null || uri.toString().length() > 2048;
    }

    public static boolean c(String str) {
        if (str != null) {
            return !f23000c.matcher(str).matches() || str.length() > 256;
        }
        return false;
    }

    public static boolean d(String str) {
        return str != null && str.trim().length() < 2;
    }

    public static boolean e(String str) {
        return (str == null || d.matcher(str).matches()) ? false : true;
    }

    public static boolean f(String str) {
        return str != null && str.trim().length() < 2;
    }

    public static boolean g(String str) {
        return str == null || str.length() > 64;
    }

    public static String h(String str) throws b {
        if (TextUtils.isEmpty(str) || !f23001e.matcher(str).matches()) {
            throw new b(b.EnumC0043a.INVALID_KEY);
        }
        return str.toLowerCase(Locale.US);
    }

    public static String i(String str) throws b {
        if (TextUtils.isEmpty(str) || str.length() > 64) {
            throw new b(b.EnumC0043a.INVALID_STRING_ITEM);
        }
        return str.toLowerCase(Locale.US);
    }

    public static boolean b(String str) {
        return str != null && str.trim().length() > 1024;
    }

    public static boolean a(URI uri) {
        return uri == null || uri.getScheme() == null || uri.getAuthority() == null;
    }

    public static boolean a(String str) {
        return str != null && f23004i.contains(str.toLowerCase(Locale.US));
    }

    public static void a(Object obj) throws b {
        if (obj == null) {
            throw new b(b.EnumC0043a.NULL_VALUE);
        }
    }
}
