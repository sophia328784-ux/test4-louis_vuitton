package com.google.android.gms.internal.fido;

import defpackage.md;
import defpackage.o60;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
class zzgu extends zzgt {
    public final byte[] d;

    public zzgu(byte[] bArr) {
        this.f29901b = 0;
        bArr.getClass();
        this.d = bArr;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public byte b(int i2) {
        return this.d[i2];
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgx) && h() == ((zzgx) obj).h()) {
            if (h() == 0) {
                return true;
            }
            if (!(obj instanceof zzgu)) {
                return obj.equals(this);
            }
            zzgu zzguVar = (zzgu) obj;
            int i2 = this.f29901b;
            int i3 = zzguVar.f29901b;
            if (i2 == 0 || i3 == 0 || i2 == i3) {
                int iH = h();
                if (iH > zzguVar.h()) {
                    throw new IllegalArgumentException("Length too large: " + iH + h());
                }
                if (iH > zzguVar.h()) {
                    md.n(o60.h(iH, zzguVar.h(), "Ran off end of other: 0, ", ", "));
                    return false;
                }
                byte[] bArr = zzguVar.d;
                int iR = r() + iH;
                int iR2 = r();
                int iR3 = zzguVar.r();
                while (iR2 < iR) {
                    if (this.d[iR2] == bArr[iR3]) {
                        iR2++;
                        iR3++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public byte f(int i2) {
        return this.d[i2];
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public int h() {
        return this.d.length;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public void i(int i2, byte[] bArr) {
        System.arraycopy(this.d, 0, bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final zzgx l(int i2, int i3) {
        int iO = zzgx.o(i2, i3, h());
        if (iO == 0) {
            return zzgx.f29900c;
        }
        return new zzgr(this.d, r() + i2, iO);
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final ByteArrayInputStream m() {
        return new ByteArrayInputStream(this.d, r(), h());
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final ByteBuffer n() {
        return ByteBuffer.wrap(this.d, r(), h()).asReadOnlyBuffer();
    }

    public int r() {
        return 0;
    }
}
