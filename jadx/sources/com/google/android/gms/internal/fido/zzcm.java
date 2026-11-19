package com.google.android.gms.internal.fido;

import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
final class zzcm extends zzdc {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f29859c = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f29860b;

    public zzcm(Object obj) {
        this.f29860b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29860b != f29859c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.f29860b;
        Object obj2 = f29859c;
        if (obj != obj2) {
            this.f29860b = obj2;
            return obj;
        }
        b21.x();
        return null;
    }
}
