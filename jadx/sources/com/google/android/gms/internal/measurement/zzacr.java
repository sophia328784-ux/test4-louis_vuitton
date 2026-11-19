package com.google.android.gms.internal.measurement;

import defpackage.fc;
import defpackage.n00;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzacr implements Iterable, Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzacr f30367c = new zzacq(zzaed.f30413a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30368b;

    static {
        int i2 = zzacf.f30358a;
    }

    public static zzacr o(int i2, int i3, byte[] bArr) {
        try {
            return p(i2, i3, bArr);
        } catch (zzaeh e2) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e2);
        }
    }

    public static zzacr p(int i2, int i3, byte[] bArr) {
        if (i3 == 0) {
            return f30367c;
        }
        r(i2, i2 + i3, bArr.length);
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return new zzacq(bArr2);
    }

    public static int r(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 21);
            sb.append("Beginning index: ");
            sb.append(i2);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i3 < i2) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 44 + String.valueOf(i3).length());
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(i3);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i3).length() + 15 + String.valueOf(i4).length());
        sb3.append("End index: ");
        sb3.append(i3);
        sb3.append(" >= ");
        sb3.append(i4);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static /* synthetic */ boolean s(int i2, byte[] bArr, int i3, byte[] bArr2, int i4) {
        int i5 = i2 + i4;
        r(i2, i5, bArr.length);
        r(i3, i4 + i3, bArr2.length);
        while (i2 < i5) {
            if (bArr[i2] != bArr2[i3]) {
                return false;
            }
            i2++;
            i3++;
        }
        return true;
    }

    public abstract byte b(int i2);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzacr)) {
            return false;
        }
        zzacr zzacrVar = (zzacr) obj;
        int iF = f();
        if (iF != zzacrVar.f()) {
            return false;
        }
        if (iF == 0) {
            return true;
        }
        int i2 = this.f30368b;
        int i3 = zzacrVar.f30368b;
        if (i2 == 0 || i3 == 0 || i2 == i3) {
            return m(zzacrVar);
        }
        return false;
    }

    public abstract int f();

    public abstract zzacr h(int i2, int i3);

    public final int hashCode() {
        int iN = this.f30368b;
        if (iN == 0) {
            int iF = f();
            iN = n(iF, iF);
            if (iN == 0) {
                iN = 1;
            }
            this.f30368b = iN;
        }
        return iN;
    }

    public abstract void i(int i2, byte[] bArr);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzack(this);
    }

    public abstract void l(zzada zzadaVar);

    public abstract boolean m(zzacr zzacrVar);

    public abstract int n(int i2, int i3);

    public final byte[] q() {
        int iF = f();
        if (iF == 0) {
            return zzaed.f30413a;
        }
        byte[] bArr = new byte[iF];
        i(iF, bArr);
        return bArr;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return n00.r(f() <= 50 ? zzafx.a(q()) : zzafx.a(h(0, 47).q()).concat("..."), "\">", fc.r(f(), "<ByteString@", hexString, " size=", " contents=\""));
    }
}
