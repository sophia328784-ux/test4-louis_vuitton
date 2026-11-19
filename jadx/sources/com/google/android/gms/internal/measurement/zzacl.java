package com.google.android.gms.internal.measurement;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzacl implements zzacn {
    @Override // java.util.Iterator
    public final Object next() {
        zzack zzackVar = (zzack) this;
        int i2 = zzackVar.f30363b;
        if (i2 < zzackVar.f30364c) {
            zzackVar.f30363b = i2 + 1;
            return Byte.valueOf(zzackVar.d.b(i2));
        }
        b21.x();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
