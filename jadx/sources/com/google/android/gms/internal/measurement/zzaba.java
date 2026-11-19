package com.google.android.gms.internal.measurement;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaba implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30330b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzabb f30331c;

    public zzaba(zzabb zzabbVar) {
        this.f30331c = zzabbVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f30330b;
        zzabb zzabbVar = this.f30331c;
        return i2 < zzabbVar.h() - zzabbVar.f();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f30330b;
        zzabb zzabbVar = this.f30331c;
        if (i2 >= zzabbVar.h() - zzabbVar.f()) {
            b21.x();
            return null;
        }
        zzabc zzabcVar = zzabbVar.f30333c;
        Object obj = zzabcVar.f30334b[zzabbVar.f() + i2];
        this.f30330b = i2 + 1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
