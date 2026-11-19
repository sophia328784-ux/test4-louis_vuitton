package com.google.android.gms.internal.clearcut;

import defpackage.n91;

/* JADX INFO: loaded from: classes2.dex */
class zzbi extends zzbh {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f29658e;

    public zzbi(byte[] bArr) {
        this.f29655b = 0;
        this.f29658e = bArr;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public byte b(int i2) {
        return this.f29658e[i2];
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzbb) && size() == ((zzbb) obj).size()) {
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof zzbi)) {
                return obj.equals(this);
            }
            zzbi zzbiVar = (zzbi) obj;
            int i2 = this.f29655b;
            int i3 = zzbiVar.f29655b;
            if (i2 == 0 || i3 == 0 || i2 == i3) {
                int size = size();
                if (size > zzbiVar.size()) {
                    n91.a(size, size());
                    return false;
                }
                if (size > zzbiVar.size()) {
                    n91.b(59, size, zzbiVar.size());
                    return false;
                }
                byte[] bArr = zzbiVar.f29658e;
                int iF = f() + size;
                int iF2 = f();
                int iF3 = zzbiVar.f();
                while (iF2 < iF) {
                    if (this.f29658e[iF2] == bArr[iF3]) {
                        iF2++;
                        iF3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int f() {
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public int size() {
        return this.f29658e.length;
    }
}
