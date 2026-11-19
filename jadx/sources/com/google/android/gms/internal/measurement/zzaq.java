package com.google.android.gms.internal.measurement;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaq implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30568b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzas f30569c;

    public zzaq(zzas zzasVar) {
        this.f30569c = zzasVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30568b < this.f30569c.f30572b.length();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        String str = this.f30569c.f30572b;
        int i2 = this.f30568b;
        if (i2 < str.length()) {
            this.f30568b = i2 + 1;
            return new zzas(String.valueOf(i2));
        }
        b21.x();
        return null;
    }
}
