package com.google.android.gms.internal.measurement;

import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes2.dex */
public final class zzza {
    public static final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzza f31109e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f31110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31112c;

    static {
        long jCharAt = 0;
        for (int i2 = 0; i2 < 7; i2++) {
            jCharAt |= (((long) i2) + 1) << ((int) (((long) (" #(+,-0".charAt(i2) - ' ')) * 3));
        }
        d = jCharAt;
        f31109e = new zzza(0, -1, -1);
    }

    public zzza(int i2, int i3, int i4) {
        this.f31110a = i2;
        this.f31111b = i3;
        this.f31112c = i4;
    }

    public static int e(int i2, int i3, String str) {
        if (i2 == i3) {
            throw zzabo.b(i2 - 1, "missing precision", str);
        }
        int i4 = 0;
        for (int i5 = i2; i5 < i3; i5++) {
            char cCharAt = (char) (str.charAt(i5) - '0');
            if (cCharAt >= '\n') {
                throw zzabo.b(i5, "invalid precision character", str);
            }
            i4 = (i4 * 10) + cCharAt;
            if (i4 > 999999) {
                throw zzabo.a(i2, i3, "precision too large", str);
            }
        }
        if (i4 != 0) {
            return i4;
        }
        if (i3 == i2 + 1) {
            return 0;
        }
        throw zzabo.a(i2, i3, "invalid precision", str);
    }

    public final boolean a() {
        return this == f31109e;
    }

    public final boolean b(int i2, boolean z) {
        int i3;
        if (a()) {
            return true;
        }
        int i4 = ~i2;
        int i5 = this.f31110a;
        if ((i4 & i5) != 0) {
            return false;
        }
        if ((!z && this.f31112c != -1) || (i5 & 9) == 9 || (i3 = i5 & 96) == 96) {
            return false;
        }
        return i3 == 0 || this.f31111b != -1;
    }

    public final boolean c() {
        return (this.f31110a & 128) != 0;
    }

    public final void d(StringBuilder sb) {
        if (a()) {
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = this.f31110a & (-129);
            int i4 = 1 << i2;
            if (i4 > i3) {
                break;
            }
            if ((i3 & i4) != 0) {
                sb.append(" #(+,-0".charAt(i2));
            }
            i2++;
        }
        int i5 = this.f31111b;
        if (i5 != -1) {
            sb.append(i5);
        }
        int i6 = this.f31112c;
        if (i6 != -1) {
            sb.append(JwtParser.SEPARATOR_CHAR);
            sb.append(i6);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzza) {
            zzza zzzaVar = (zzza) obj;
            if (zzzaVar.f31110a == this.f31110a && zzzaVar.f31111b == this.f31111b && zzzaVar.f31112c == this.f31112c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f31110a * 31) + this.f31111b) * 31) + this.f31112c;
    }
}
