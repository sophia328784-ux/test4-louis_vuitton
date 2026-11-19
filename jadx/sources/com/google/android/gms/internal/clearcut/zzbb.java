package com.google.android.gms.internal.clearcut;

import java.io.Serializable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbb implements Serializable, Iterable<Byte> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzbb f29654c = new zzbi(zzci.f29678b);
    public static final zzbf d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29655b;

    static {
        d = zzaw.a() ? new zzbj() : new zzbd();
    }

    public static zzbb a(int i2, int i3, byte[] bArr) {
        return new zzbi(d.a(i2, i3, bArr));
    }

    public abstract byte b(int i2);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.f29655b;
        if (i2 != 0) {
            return i2;
        }
        int size = size();
        zzbi zzbiVar = (zzbi) this;
        int iF = zzbiVar.f();
        int i3 = size;
        for (int i4 = iF; i4 < iF + size; i4++) {
            i3 = (i3 * 31) + zzbiVar.f29658e[i4];
        }
        if (i3 == 0) {
            i3 = 1;
        }
        this.f29655b = i3;
        return i3;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzbc(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
