package com.google.android.gms.internal.clearcut;

import defpackage.zy0;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzbc implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29656b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29657c;
    public final /* synthetic */ zzbb d;

    public zzbc(zzbb zzbbVar) {
        this.d = zzbbVar;
        this.f29657c = zzbbVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29656b < this.f29657c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            zzbb zzbbVar = this.d;
            int i2 = this.f29656b;
            this.f29656b = i2 + 1;
            return Byte.valueOf(zzbbVar.b(i2));
        } catch (IndexOutOfBoundsException e2) {
            zy0.c(e2.getMessage());
            return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
