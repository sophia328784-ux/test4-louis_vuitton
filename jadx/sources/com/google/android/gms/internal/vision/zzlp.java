package com.google.android.gms.internal.vision;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzlp implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31277b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31278c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlh f31279e;

    public zzlp(zzlh zzlhVar) {
        this.f31279e = zzlhVar;
    }

    public final Iterator a() {
        if (this.d == null) {
            this.d = this.f31279e.d.entrySet().iterator();
        }
        return this.d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f31277b + 1;
        zzlh zzlhVar = this.f31279e;
        return i2 < zzlhVar.f31269c.size() || (!zzlhVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f31278c = true;
        int i2 = this.f31277b + 1;
        this.f31277b = i2;
        zzlh zzlhVar = this.f31279e;
        return i2 < zzlhVar.f31269c.size() ? (Map.Entry) zzlhVar.f31269c.get(this.f31277b) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f31278c) {
            md.k("remove() was called before next()");
            return;
        }
        this.f31278c = false;
        int i2 = zzlh.f31267h;
        zzlh zzlhVar = this.f31279e;
        zzlhVar.g();
        if (this.f31277b >= zzlhVar.f31269c.size()) {
            a().remove();
            return;
        }
        int i3 = this.f31277b;
        this.f31277b = i3 - 1;
        zzlhVar.e(i3);
    }
}
