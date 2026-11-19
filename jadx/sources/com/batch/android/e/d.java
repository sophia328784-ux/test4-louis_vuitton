package com.batch.android.e;

import android.util.Base64;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23083a = "RmY5bWJTd2J1U3Jw";

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23084a;

        static {
            int[] iArr = new int[b.values().length];
            f23084a = iArr;
            try {
                iArr[b.EAS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23084a[b.EAS_HEX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23084a[b.EAS_BASE64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23084a[b.EAS_BASE64_GZIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static c a(b bVar, String str) {
        if (bVar == null) {
            return null;
        }
        if (str == null) {
            str = com.batch.android.e.b.c(a());
        }
        int i2 = a.f23084a[bVar.ordinal()];
        if (i2 == 1) {
            return new j(str);
        }
        if (i2 == 2) {
            return new k(str);
        }
        if (i2 == 3) {
            return new h(str);
        }
        if (i2 != 4) {
            return null;
        }
        return new i(str);
    }

    public enum b {
        EAS(2),
        EAS_HEX(3),
        EAS_BASE64(4),
        EAS_BASE64_GZIP(5);


        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f23088b;

        b(int i2) {
            this.f23088b = i2;
        }

        public static b a(int i2) {
            for (b bVar : values()) {
                if (bVar.f23088b == i2) {
                    return bVar;
                }
            }
            return null;
        }

        public int b() {
            return this.f23088b;
        }

        public static b a(String str) {
            try {
                return valueOf(str.toUpperCase(Locale.US));
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static c a(String str, String str2) {
        return a(b.a(str), str2);
    }

    public static c a(int i2) {
        return a(i2, (String) null);
    }

    public static c a(int i2, String str) {
        return a(b.a(i2), str);
    }

    public static c a(b bVar) {
        return a(bVar, (String) null);
    }

    public static c a(String str) {
        return a(str, (String) null);
    }

    private static byte[] a() {
        return com.batch.android.e.b.a(Base64.decode("Rkt2Qg==", 0), Base64.decode(f23083a, 0));
    }
}
