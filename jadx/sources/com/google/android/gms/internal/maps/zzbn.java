package com.google.android.gms.internal.maps;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
final class zzbn extends zzbx {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f30282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30283c;

    public zzbn(Object obj) {
        this.f30282b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f30283c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f30283c) {
            b21.x();
            return null;
        }
        this.f30283c = true;
        return this.f30282b;
    }
}
