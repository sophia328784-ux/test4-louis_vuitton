package com.google.android.gms.internal.measurement;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzar implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30570b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzas f30571c;

    public zzar(zzas zzasVar) {
        this.f30571c = zzasVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30570b < this.f30571c.f30572b.length();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        zzas zzasVar = this.f30571c;
        String str = zzasVar.f30572b;
        int i2 = this.f30570b;
        if (i2 < str.length()) {
            this.f30570b = i2 + 1;
            return new zzas(String.valueOf(zzasVar.f30572b.charAt(i2)));
        }
        b21.x();
        return null;
    }
}
