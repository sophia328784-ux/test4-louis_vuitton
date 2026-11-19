package com.google.android.gms.internal.clearcut;

import defpackage.md;
import defpackage.pq0;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzha extends zzfu<zzha> implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f29766c = 0;
    public long d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29767e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f29768f = 0;
    public final String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public zzhb[] f29769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f29770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f29771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f29772k;
    public final String l;
    public zzgy m;
    public final String n;
    public long o;
    public zzgz p;
    public final byte[] q;
    public final String r;
    public int[] s;
    public boolean t;

    public zzha() {
        if (zzhb.f29773e == null) {
            synchronized (zzfy.f29753a) {
                try {
                    if (zzhb.f29773e == null) {
                        zzhb.f29773e = new zzhb[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f29769h = zzhb.f29773e;
        byte[] bArr = zzgb.f29758e;
        this.f29770i = bArr;
        this.f29771j = bArr;
        this.f29772k = "";
        this.l = "";
        this.m = null;
        this.n = "";
        this.o = 180000L;
        this.p = null;
        this.q = bArr;
        this.r = "";
        this.s = zzgb.f29755a;
        this.t = false;
        this.f29754b = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void a(zzfs zzfsVar) throws zzft {
        long j2 = this.f29766c;
        if (j2 != 0) {
            zzfsVar.h(1, 0);
            zzfsVar.j(j2);
        }
        String str = this.f29767e;
        if (str != null && !str.equals("")) {
            zzfsVar.c(2, str);
        }
        zzhb[] zzhbVarArr = this.f29769h;
        if (zzhbVarArr != null && zzhbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzhb[] zzhbVarArr2 = this.f29769h;
                if (i2 >= zzhbVarArr2.length) {
                    break;
                }
                zzhb zzhbVar = zzhbVarArr2[i2];
                if (zzhbVar != null) {
                    zzfsVar.b(3, zzhbVar);
                }
                i2++;
            }
        }
        byte[] bArr = this.f29770i;
        byte[] bArr2 = zzgb.f29758e;
        if (!Arrays.equals(bArr, bArr2)) {
            zzfsVar.d(4, bArr);
        }
        if (!Arrays.equals(this.f29771j, bArr2)) {
            zzfsVar.d(6, this.f29771j);
        }
        zzgy zzgyVar = this.m;
        if (zzgyVar != null) {
            zzfsVar.b(7, zzgyVar);
        }
        String str2 = this.f29772k;
        if (str2 != null && !str2.equals("")) {
            zzfsVar.c(8, str2);
        }
        int i3 = this.f29768f;
        if (i3 != 0) {
            zzfsVar.h(11, 0);
            if (i3 >= 0) {
                zzfsVar.f(i3);
            } else {
                zzfsVar.j(i3);
            }
        }
        String str3 = this.l;
        if (str3 != null && !str3.equals("")) {
            zzfsVar.c(13, str3);
        }
        String str4 = this.n;
        if (str4 != null && !str4.equals("")) {
            zzfsVar.c(14, str4);
        }
        long j3 = this.o;
        if (j3 != 180000) {
            zzfsVar.h(15, 0);
            zzfsVar.j((j3 >> 63) ^ (j3 << 1));
        }
        zzgz zzgzVar = this.p;
        if (zzgzVar != null) {
            zzfsVar.b(16, zzgzVar);
        }
        long j4 = this.d;
        if (j4 != 0) {
            zzfsVar.h(17, 0);
            zzfsVar.j(j4);
        }
        byte[] bArr3 = this.q;
        if (!Arrays.equals(bArr3, bArr2)) {
            zzfsVar.d(18, bArr3);
        }
        int[] iArr = this.s;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.s;
                if (i4 >= iArr2.length) {
                    break;
                }
                int i5 = iArr2[i4];
                zzfsVar.h(20, 0);
                if (i5 >= 0) {
                    zzfsVar.f(i5);
                } else {
                    zzfsVar.j(i5);
                }
                i4++;
            }
        }
        String str5 = this.r;
        if (str5 != null && !str5.equals("")) {
            zzfsVar.c(24, str5);
        }
        boolean z = this.t;
        if (z) {
            zzfsVar.h(25, 0);
            byte b2 = z ? (byte) 1 : (byte) 0;
            ByteBuffer byteBuffer = zzfsVar.f29752a;
            if (!byteBuffer.hasRemaining()) {
                throw new zzft(byteBuffer.position(), byteBuffer.limit());
            }
            byteBuffer.put(b2);
        }
        String str6 = this.g;
        if (str6 == null || str6.equals("")) {
            return;
        }
        zzfsVar.c(26, str6);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int c() {
        int iL;
        int[] iArr;
        String str = this.g;
        String str2 = this.r;
        String str3 = this.n;
        String str4 = this.l;
        String str5 = this.f29772k;
        byte[] bArr = this.f29770i;
        String str6 = this.f29767e;
        long j2 = this.f29766c;
        long j3 = 0;
        int i2 = 0;
        if (j2 != 0) {
            iL = zzfs.k(j2) + zzfs.l(1);
        } else {
            iL = 0;
        }
        char c2 = 2;
        if (str6 != null && !str6.equals("")) {
            iL += zzfs.g(2, str6);
        }
        zzhb[] zzhbVarArr = this.f29769h;
        if (zzhbVarArr != null && zzhbVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzhb[] zzhbVarArr2 = this.f29769h;
                char c3 = c2;
                if (i3 >= zzhbVarArr2.length) {
                    break;
                }
                zzhb zzhbVar = zzhbVarArr2[i3];
                if (zzhbVar != null) {
                    int iL2 = zzfs.l(3);
                    int iC = zzhbVar.c();
                    zzhbVar.f29754b = iC;
                    iL = zzfs.m(iC) + iC + iL2 + iL;
                }
                i3++;
                c2 = c3;
                j3 = j3;
            }
        }
        long j4 = j3;
        byte[] bArr2 = zzgb.f29758e;
        if (!Arrays.equals(bArr, bArr2)) {
            iL = pq0.D(zzfs.m(bArr.length), bArr.length, zzfs.l(4), iL);
        }
        if (!Arrays.equals(this.f29771j, bArr2)) {
            byte[] bArr3 = this.f29771j;
            iL = pq0.D(zzfs.m(bArr3.length), bArr3.length, zzfs.l(6), iL);
        }
        zzgy zzgyVar = this.m;
        if (zzgyVar != null) {
            int iL3 = zzfs.l(7);
            int iC2 = zzgyVar.c();
            zzgyVar.f29754b = iC2;
            iL += zzfs.m(iC2) + iC2 + iL3;
        }
        if (str5 != null && !str5.equals("")) {
            iL += zzfs.g(8, str5);
        }
        int i4 = this.f29768f;
        if (i4 != 0) {
            iL += (i4 >= 0 ? zzfs.m(i4) : 10) + zzfs.l(11);
        }
        if (str4 != null && !str4.equals("")) {
            iL += zzfs.g(13, str4);
        }
        if (str3 != null && !str3.equals("")) {
            iL += zzfs.g(14, str3);
        }
        long j5 = this.o;
        if (j5 != 180000) {
            iL += zzfs.k((j5 >> 63) ^ (j5 << 1)) + zzfs.l(15);
        }
        zzgz zzgzVar = this.p;
        if (zzgzVar != null) {
            int iL4 = zzfs.l(16);
            int iC3 = zzgzVar.c();
            zzgzVar.f29754b = iC3;
            iL += zzfs.m(iC3) + iC3 + iL4;
        }
        long j6 = this.d;
        if (j6 != j4) {
            iL += zzfs.k(j6) + zzfs.l(17);
        }
        if (!Arrays.equals(this.q, bArr2)) {
            byte[] bArr4 = this.q;
            iL = pq0.D(zzfs.m(bArr4.length), bArr4.length, zzfs.l(18), iL);
        }
        int[] iArr2 = this.s;
        if (iArr2 != null && iArr2.length > 0) {
            int iM = 0;
            while (true) {
                iArr = this.s;
                if (i2 >= iArr.length) {
                    break;
                }
                int i5 = iArr[i2];
                iM += i5 >= 0 ? zzfs.m(i5) : 10;
                i2++;
            }
            iL = iL + iM + (iArr.length * 2);
        }
        if (str2 != null && !str2.equals("")) {
            iL += zzfs.g(24, str2);
        }
        if (this.t) {
            iL += zzfs.l(25) + 1;
        }
        return (str == null || str.equals("")) ? iL : zzfs.g(26, str) + iL;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final Object clone() {
        try {
            zzha zzhaVar = (zzha) super.clone();
            zzhb[] zzhbVarArr = this.f29769h;
            if (zzhbVarArr != null && zzhbVarArr.length > 0) {
                zzhaVar.f29769h = new zzhb[zzhbVarArr.length];
                int i2 = 0;
                while (true) {
                    zzhb[] zzhbVarArr2 = this.f29769h;
                    if (i2 >= zzhbVarArr2.length) {
                        break;
                    }
                    zzhb zzhbVar = zzhbVarArr2[i2];
                    if (zzhbVar != null) {
                        zzhaVar.f29769h[i2] = (zzhb) zzhbVar.clone();
                    }
                    i2++;
                }
            }
            zzgy zzgyVar = this.m;
            if (zzgyVar != null) {
                zzhaVar.m = (zzgy) zzgyVar.clone();
            }
            zzgz zzgzVar = this.p;
            if (zzgzVar != null) {
                zzhaVar.p = (zzgz) zzgzVar.clone();
            }
            int[] iArr = this.s;
            if (iArr != null && iArr.length > 0) {
                zzhaVar.s = (int[]) iArr.clone();
            }
            return zzhaVar;
        } catch (CloneNotSupportedException e2) {
            md.h(e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ zzfz clone() {
        return (zzha) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ zzfu clone() {
        return (zzha) clone();
    }

    public final boolean equals(Object obj) {
        boolean zEquals;
        if (obj != this) {
            if (obj instanceof zzha) {
                zzha zzhaVar = (zzha) obj;
                if (this.f29766c == zzhaVar.f29766c && this.d == zzhaVar.d) {
                    String str = zzhaVar.f29767e;
                    String str2 = this.f29767e;
                    if (str2 != null ? str2.equals(str) : str == null) {
                        if (this.f29768f == zzhaVar.f29768f) {
                            String str3 = zzhaVar.g;
                            String str4 = this.g;
                            if (str4 != null ? str4.equals(str3) : str3 == null) {
                                if (zzfy.a(this.f29769h, zzhaVar.f29769h) && Arrays.equals(this.f29770i, zzhaVar.f29770i) && Arrays.equals(this.f29771j, zzhaVar.f29771j)) {
                                    String str5 = zzhaVar.f29772k;
                                    String str6 = this.f29772k;
                                    if (str6 != null ? str6.equals(str5) : str5 == null) {
                                        String str7 = zzhaVar.l;
                                        String str8 = this.l;
                                        if (str8 != null ? str8.equals(str7) : str7 == null) {
                                            zzgy zzgyVar = this.m;
                                            zzgy zzgyVar2 = zzhaVar.m;
                                            if (zzgyVar != null ? zzgyVar.equals(zzgyVar2) : zzgyVar2 == null) {
                                                String str9 = zzhaVar.n;
                                                String str10 = this.n;
                                                if (str10 != null ? str10.equals(str9) : str9 == null) {
                                                    if (this.o == zzhaVar.o) {
                                                        zzgz zzgzVar = this.p;
                                                        zzgz zzgzVar2 = zzhaVar.p;
                                                        if (zzgzVar != null ? zzgzVar.equals(zzgzVar2) : zzgzVar2 == null) {
                                                            if (Arrays.equals(this.q, zzhaVar.q)) {
                                                                String str11 = zzhaVar.r;
                                                                String str12 = this.r;
                                                                if (str12 != null ? str12.equals(str11) : str11 == null) {
                                                                    int[] iArr = this.s;
                                                                    int[] iArr2 = zzhaVar.s;
                                                                    if (iArr == null || iArr.length == 0) {
                                                                        zEquals = iArr2 == null || iArr2.length == 0;
                                                                    } else {
                                                                        zEquals = Arrays.equals(iArr, iArr2);
                                                                    }
                                                                    if (zEquals && this.t == zzhaVar.t) {
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j2 = this.f29766c;
        long j3 = this.d;
        int i2 = (((553293672 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 961;
        int iHashCode = 0;
        String str = this.f29767e;
        int iHashCode2 = (((i2 + (str == null ? 0 : str.hashCode())) * 31) + this.f29768f) * 31;
        String str2 = this.g;
        int iHashCode3 = (Arrays.hashCode(this.f29771j) + ((Arrays.hashCode(this.f29770i) + ((((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 961) + 1237) * 31) + zzfy.b(this.f29769h)) * 31)) * 961)) * 31;
        String str3 = this.f29772k;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.l;
        int iHashCode5 = iHashCode4 + (str4 == null ? 0 : str4.hashCode());
        zzgy zzgyVar = this.m;
        int iHashCode6 = ((iHashCode5 * 31) + (zzgyVar == null ? 0 : zzgyVar.hashCode())) * 31;
        String str5 = this.n;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        long j4 = this.o;
        zzgz zzgzVar = this.p;
        int iHashCode8 = (Arrays.hashCode(this.q) + ((((iHashCode7 + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (zzgzVar == null ? 0 : zzgzVar.hashCode())) * 31)) * 31;
        String str6 = this.r;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 961;
        int[] iArr = this.s;
        if (iArr != null && iArr.length != 0) {
            iHashCode = Arrays.hashCode(iArr);
        }
        return (((iHashCode + iHashCode9) * 29791) + (this.t ? 1231 : 1237)) * 31;
    }
}
