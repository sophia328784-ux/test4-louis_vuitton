package com.google.android.gms.internal.vision;

import defpackage.fc;
import defpackage.n00;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzht implements Serializable, Iterable<Byte> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzht f31188c = new zzid(zzjf.f31226b);
    public static final zzhz d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31189b;

    static {
        d = zzhi.a() ? new zzic() : new zzhx();
    }

    public static zzht h(int i2, int i3, byte[] bArr) {
        l(i2, i2 + i3, bArr.length);
        return new zzid(d.a(i2, i3, bArr));
    }

    public static int l(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i2);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i3 < i2) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(i3);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i3);
        sb3.append(" >= ");
        sb3.append(i4);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public abstract byte b(int i2);

    public abstract boolean equals(Object obj);

    public abstract int f();

    public final int hashCode() {
        int i2 = this.f31189b;
        if (i2 != 0) {
            return i2;
        }
        int iF = f();
        zzid zzidVar = (zzid) this;
        int iM = zzidVar.m();
        int i3 = iF;
        for (int i4 = iM; i4 < iM + iF; i4++) {
            i3 = (i3 * 31) + zzidVar.f31193e[i4];
        }
        if (i3 == 0) {
            i3 = 1;
        }
        this.f31189b = i3;
        return i3;
    }

    public abstract byte i(int i2);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzhs(this);
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iF = f();
        if (f() <= 50) {
            strConcat = zzlq.a(this);
        } else {
            zzid zzidVar = (zzid) this;
            int iL = l(0, 47, zzidVar.f());
            strConcat = zzlq.a(iL == 0 ? f31188c : new zzhw(zzidVar.f31193e, zzidVar.m(), iL)).concat("...");
        }
        return n00.r(strConcat, "\">", fc.r(iF, "<ByteString@", hexString, " size=", " contents=\""));
    }
}
