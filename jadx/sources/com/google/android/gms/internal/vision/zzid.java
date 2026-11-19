package com.google.android.gms.internal.vision;

import defpackage.n91;

/* JADX INFO: loaded from: classes2.dex */
class zzid extends zzia {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f31193e;

    public zzid(byte[] bArr) {
        this.f31189b = 0;
        bArr.getClass();
        this.f31193e = bArr;
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public byte b(int i2) {
        return this.f31193e[i2];
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzht) && f() == ((zzht) obj).f()) {
            if (f() == 0) {
                return true;
            }
            if (!(obj instanceof zzid)) {
                return obj.equals(this);
            }
            zzid zzidVar = (zzid) obj;
            int i2 = this.f31189b;
            int i3 = zzidVar.f31189b;
            if (i2 == 0 || i3 == 0 || i2 == i3) {
                int iF = f();
                if (iF > zzidVar.f()) {
                    n91.a(iF, f());
                    return false;
                }
                if (iF > zzidVar.f()) {
                    n91.b(59, iF, zzidVar.f());
                    return false;
                }
                byte[] bArr = zzidVar.f31193e;
                int iM = m() + iF;
                int iM2 = m();
                int iM3 = zzidVar.m();
                while (iM2 < iM) {
                    if (this.f31193e[iM2] == bArr[iM3]) {
                        iM2++;
                        iM3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public int f() {
        return this.f31193e.length;
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public byte i(int i2) {
        return this.f31193e[i2];
    }

    public int m() {
        return 0;
    }
}
