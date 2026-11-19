package com.google.android.gms.internal.clearcut;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzeq implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29733b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f29734c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzei f29735e;

    public zzeq(zzei zzeiVar) {
        this.f29735e = zzeiVar;
    }

    public final Iterator a() {
        if (this.d == null) {
            this.d = this.f29735e.d.entrySet().iterator();
        }
        return this.d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f29733b + 1;
        zzei zzeiVar = this.f29735e;
        return i2 < zzeiVar.f29726c.size() || (!zzeiVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f29734c = true;
        int i2 = this.f29733b + 1;
        this.f29733b = i2;
        zzei zzeiVar = this.f29735e;
        return (Map.Entry) (i2 < zzeiVar.f29726c.size() ? zzeiVar.f29726c.get(this.f29733b) : a().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f29734c) {
            md.k("remove() was called before next()");
            return;
        }
        this.f29734c = false;
        int i2 = zzei.f29724h;
        zzei zzeiVar = this.f29735e;
        zzeiVar.g();
        if (this.f29733b >= zzeiVar.f29726c.size()) {
            a().remove();
            return;
        }
        int i3 = this.f29733b;
        this.f29733b = i3 - 1;
        zzeiVar.e(i3);
    }
}
