package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabo extends RuntimeException {
    public static zzabo a(int i2, int i3, String str, String str2) {
        return new zzabo(c(i2, i3, str, str2));
    }

    public static zzabo b(int i2, String str, String str2) {
        return new zzabo(c(i2, i2 + 1, str, str2));
    }

    public static String c(int i2, int i3, String str, String str2) {
        if (i3 < 0) {
            i3 = str2.length();
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append(": ");
        if (i2 > 8) {
            sb.append("...");
            sb.append((CharSequence) str2, i2 - 5, i2);
        } else {
            sb.append((CharSequence) str2, 0, i2);
        }
        sb.append('[');
        sb.append(str2.substring(i2, i3));
        sb.append(']');
        if (str2.length() - i3 > 8) {
            sb.append((CharSequence) str2, i3, i3 + 5);
            sb.append("...");
        } else {
            sb.append((CharSequence) str2, i3, str2.length());
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
