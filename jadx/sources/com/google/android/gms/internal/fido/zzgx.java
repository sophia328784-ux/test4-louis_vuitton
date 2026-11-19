package com.google.android.gms.internal.fido;

import defpackage.az;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.io.ByteArrayInputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgx implements Iterable<Byte>, Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzgx f29900c = new zzgu(zzhc.f29905a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29901b;

    static {
        int i2 = zzgn.f29895a;
    }

    public static int o(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            az.v(n00.m(i2, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i3 < i2) {
            az.v(o60.h(i2, i3, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        az.v(o60.h(i3, i4, "End index: ", " >= "));
        return 0;
    }

    public static zzgx p(int i2, byte[] bArr) {
        o(0, i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return new zzgu(bArr2);
    }

    public abstract byte b(int i2);

    public abstract boolean equals(Object obj);

    public abstract byte f(int i2);

    public abstract int h();

    public final int hashCode() {
        int i2 = this.f29901b;
        if (i2 != 0) {
            return i2;
        }
        int iH = h();
        zzgu zzguVar = (zzgu) this;
        int iR = zzguVar.r();
        byte[] bArr = zzhc.f29905a;
        int i3 = iH;
        for (int i4 = iR; i4 < iR + iH; i4++) {
            i3 = (i3 * 31) + zzguVar.d[i4];
        }
        if (i3 == 0) {
            i3 = 1;
        }
        this.f29901b = i3;
        return i3;
    }

    public abstract void i(int i2, byte[] bArr);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzgo(this);
    }

    public abstract zzgx l(int i2, int i3);

    public abstract ByteArrayInputStream m();

    public abstract ByteBuffer n();

    public final byte[] q() {
        int iH = h();
        if (iH == 0) {
            return zzhc.f29905a;
        }
        byte[] bArr = new byte[iH];
        i(iH, bArr);
        return bArr;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return n00.r(h() <= 50 ? zzhe.a(this) : zzhe.a(l(0, 47)).concat("..."), "\">", fc.r(h(), "<ByteString@", hexString, " size=", " contents=\""));
    }
}
