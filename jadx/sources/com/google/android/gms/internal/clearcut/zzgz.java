package com.google.android.gms.internal.clearcut;

import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgz extends zzfu<zzgz> implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f29763c = zzgb.f29758e;
    public final String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[][] f29764e = zzgb.d;

    public zzgz() {
        this.f29754b = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void a(zzfs zzfsVar) throws zzft {
        byte[] bArr = zzgb.f29758e;
        byte[] bArr2 = this.f29763c;
        if (!Arrays.equals(bArr2, bArr)) {
            zzfsVar.d(1, bArr2);
        }
        byte[][] bArr3 = this.f29764e;
        if (bArr3 != null && bArr3.length > 0) {
            int i2 = 0;
            while (true) {
                byte[][] bArr4 = this.f29764e;
                if (i2 >= bArr4.length) {
                    break;
                }
                byte[] bArr5 = bArr4[i2];
                if (bArr5 != null) {
                    zzfsVar.d(2, bArr5);
                }
                i2++;
            }
        }
        String str = this.d;
        if (str == null || str.equals("")) {
            return;
        }
        zzfsVar.c(4, str);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int c() {
        int iM;
        byte[] bArr = zzgb.f29758e;
        byte[] bArr2 = this.f29763c;
        int i2 = 0;
        if (Arrays.equals(bArr2, bArr)) {
            iM = 0;
        } else {
            iM = zzfs.m(bArr2.length) + bArr2.length + zzfs.l(1);
        }
        byte[][] bArr3 = this.f29764e;
        if (bArr3 != null && bArr3.length > 0) {
            int iM2 = 0;
            int i3 = 0;
            while (true) {
                byte[][] bArr4 = this.f29764e;
                if (i2 >= bArr4.length) {
                    break;
                }
                byte[] bArr5 = bArr4[i2];
                if (bArr5 != null) {
                    i3++;
                    iM2 = zzfs.m(bArr5.length) + bArr5.length + iM2;
                }
                i2++;
            }
            iM = iM + iM2 + i3;
        }
        String str = this.d;
        return (str == null || str.equals("")) ? iM : zzfs.g(4, str) + iM;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final Object clone() {
        try {
            zzgz zzgzVar = (zzgz) super.clone();
            byte[][] bArr = this.f29764e;
            if (bArr != null && bArr.length > 0) {
                zzgzVar.f29764e = (byte[][]) bArr.clone();
            }
            return zzgzVar;
        } catch (CloneNotSupportedException e2) {
            md.h(e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ zzfz clone() {
        return (zzgz) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ zzfu clone() {
        return (zzgz) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        if (!Arrays.equals(this.f29763c, zzgzVar.f29763c)) {
            return false;
        }
        String str = zzgzVar.d;
        String str2 = this.d;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        byte[][] bArr = this.f29764e;
        byte[][] bArr2 = zzgzVar.f29764e;
        Object obj2 = zzfy.f29753a;
        int length = bArr == null ? 0 : bArr.length;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length || bArr[i2] != null) {
                while (i3 < length2 && bArr2[i3] == null) {
                    i3++;
                }
                boolean z = i2 >= length;
                boolean z2 = i3 >= length2;
                if (z && z2) {
                    return true;
                }
                if (z != z2 || !Arrays.equals(bArr[i2], bArr2[i3])) {
                    return false;
                }
                i2++;
                i3++;
            } else {
                i2++;
            }
        }
    }

    public final int hashCode() {
        int iHashCode = (Arrays.hashCode(this.f29763c) + 553293486) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        byte[][] bArr = this.f29764e;
        Object obj = zzfy.f29753a;
        int length = bArr == null ? 0 : bArr.length;
        int iHashCode3 = 0;
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr2 = bArr[i2];
            if (bArr2 != null) {
                iHashCode3 = Arrays.hashCode(bArr2) + (iHashCode3 * 31);
            }
        }
        return (((iHashCode2 + iHashCode3) * 31) + 1237) * 31;
    }
}
