package com.google.android.gms.internal.gtm;

import defpackage.fc;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzll extends zzlh {
    public final transient Object d;

    public zzll(Object obj) {
        this.d = obj;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int a(Object[] objArr) {
        objArr[0] = this.d;
        return 1;
    }

    @Override // com.google.android.gms.internal.gtm.zzld, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.equals(obj);
    }

    @Override // com.google.android.gms.internal.gtm.zzlh, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzli(this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return fc.h("[", this.d.toString(), "]");
    }
}
