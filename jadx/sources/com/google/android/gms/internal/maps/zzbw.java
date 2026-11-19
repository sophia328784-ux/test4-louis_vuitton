package com.google.android.gms.internal.maps;

import defpackage.fc;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzbw extends zzbm {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f30292e;

    public zzbw(Object obj) {
        this.f30292e = obj;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int a(Object[] objArr) {
        objArr[0] = this.f30292e;
        return 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f30292e.equals(obj);
    }

    @Override // com.google.android.gms.internal.maps.zzbm, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f30292e.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzbn(this.f30292e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return fc.h("[", this.f30292e.toString(), "]");
    }
}
