package com.google.android.gms.internal.fido;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzgq implements zzgs {
    @Override // java.util.Iterator
    public final Object next() {
        byte bF;
        zzgo zzgoVar = (zzgo) this;
        int i2 = zzgoVar.f29896b;
        if (i2 < zzgoVar.f29897c) {
            zzgoVar.f29896b = i2 + 1;
            bF = zzgoVar.d.f(i2);
        } else {
            b21.x();
            bF = 0;
        }
        return Byte.valueOf(bF);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
