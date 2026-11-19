package com.google.android.gms.internal.vision;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzhu implements zzhy {
    @Override // java.util.Iterator
    public final Byte next() {
        byte bI;
        zzhs zzhsVar = (zzhs) this;
        int i2 = zzhsVar.f31186b;
        if (i2 < zzhsVar.f31187c) {
            zzhsVar.f31186b = i2 + 1;
            bI = zzhsVar.d.i(i2);
        } else {
            b21.x();
            bI = 0;
        }
        return Byte.valueOf(bI);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
