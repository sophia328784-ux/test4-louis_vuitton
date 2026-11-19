package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzabp extends zzabn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f30349a;

    static {
        String property;
        try {
            property = System.getProperty("line.separator");
            if (!property.matches("\\n|\\r(?:\\n)?")) {
                property = "\n";
            }
        } catch (SecurityException unused) {
        }
        f30349a = property;
    }

    public static int d(int i2, String str) {
        while (i2 < str.length()) {
            int i3 = i2 + 1;
            if (str.charAt(i2) != '%') {
                i2 = i3;
            } else {
                if (i3 >= str.length()) {
                    throw new zzabo(zzabo.c(i2, -1, "trailing unquoted '%' character", str));
                }
                char cCharAt = str.charAt(i3);
                if (cCharAt != '%' && cCharAt != 'n') {
                    return i2;
                }
                i2 += 2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzabn
    public final void a(zzyy zzyyVar) {
        int i2;
        char cCharAt;
        int i3;
        int i4;
        int i5;
        int i6;
        String str = zzyyVar.f30346a.f30302b;
        int iD = d(0, str);
        int i7 = -1;
        int i8 = 0;
        while (iD >= 0) {
            int i9 = iD + 1;
            int i10 = 0;
            int i11 = i9;
            while (true) {
                if (i11 >= str.length()) {
                    throw new zzabo(zzabo.c(iD, -1, "unterminated parameter", str));
                }
                i2 = i11 + 1;
                cCharAt = str.charAt(i11);
                char c2 = (char) (cCharAt - '0');
                if (c2 < '\n') {
                    i10 = (i10 * 10) + c2;
                    if (i10 >= 1000000) {
                        throw zzabo.a(iD, i2, "index too large", str);
                    }
                    i11 = i2;
                }
            }
            if (cCharAt == '$') {
                if (i11 - i9 == 0) {
                    throw zzabo.a(iD, i2, "missing index", str);
                }
                if (str.charAt(i9) == '0') {
                    throw zzabo.a(iD, i2, "index has leading zero", str);
                }
                int i12 = i10 - 1;
                if (i2 == str.length()) {
                    throw new zzabo(zzabo.c(iD, -1, "unterminated parameter", str));
                }
                str.charAt(i2);
                i6 = i8;
                i5 = i11 + 2;
                i3 = i2;
                i4 = i12;
            } else if (cCharAt != '<') {
                int i13 = i8 + 1;
                i3 = i9;
                i4 = i8;
                i5 = i2;
                i6 = i13;
            } else {
                if (i7 == -1) {
                    throw zzabo.a(iD, i2, "invalid relative parameter", str);
                }
                if (i2 == str.length()) {
                    throw new zzabo(zzabo.c(iD, -1, "unterminated parameter", str));
                }
                str.charAt(i2);
                i6 = i8;
                i5 = i11 + 2;
                i3 = i2;
                i4 = i7;
            }
            int i14 = i5 - 1;
            while (true) {
                if (i14 >= str.length()) {
                    throw new zzabo(zzabo.c(iD, -1, "unterminated parameter", str));
                }
                if (((char) ((str.charAt(i14) & (-33)) - 65)) < 26) {
                    break;
                } else {
                    i14++;
                }
            }
            zzabp zzabpVar = this;
            iD = d(zzabpVar.c(zzyyVar, i4, str, iD, i3, i14), str);
            this = zzabpVar;
            i7 = i4;
            i8 = i6;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzabn
    public final void b(int i2, int i3, String str, StringBuilder sb) {
        int i4 = i2;
        while (i2 < i3) {
            int i5 = i2 + 1;
            if (str.charAt(i2) == '%') {
                if (i5 == i3) {
                    break;
                }
                char cCharAt = str.charAt(i5);
                if (cCharAt == '%') {
                    sb.append((CharSequence) str, i4, i5);
                } else if (cCharAt == 'n') {
                    sb.append((CharSequence) str, i4, i2);
                    sb.append(f30349a);
                }
                i4 = i2 + 2;
                i2 = i4;
            }
            i2 = i5;
        }
        if (i4 < i3) {
            sb.append((CharSequence) str, i4, i3);
        }
    }

    public abstract int c(zzyy zzyyVar, int i2, String str, int i3, int i4, int i5);
}
