package com.google.android.gms.internal.fido;

import defpackage.fc;
import defpackage.pq0;
import defpackage.r81;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzcz extends zzcf {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f29873e;

    public zzcz(Object obj) {
        this.f29873e = obj;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        objArr[0] = this.f29873e;
        return 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f29873e.equals(obj);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f29873e.hashCode();
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final zzdc i() {
        return new zzcm(this.f29873e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzcm(this.f29873e);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc q() {
        Object[] objArr = {this.f29873e};
        for (int i2 = 0; i2 < 1; i2++) {
            zzdd zzddVar = zzcc.f29848c;
            if (objArr[i2] == null) {
                r81.d(pq0.k(i2, "at index "));
                return null;
            }
        }
        return zzcc.p(1, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return fc.h("[", this.f29873e.toString(), "]");
    }
}
