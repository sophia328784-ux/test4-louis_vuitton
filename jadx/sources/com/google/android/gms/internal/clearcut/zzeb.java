package com.google.android.gms.internal.clearcut;

import defpackage.ct0;
import java.util.AbstractList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzeb<E> extends zzav<E> {
    public static final zzeb d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f29707c;

    static {
        zzeb zzebVar = new zzeb(new ArrayList(10));
        d = zzebVar;
        zzebVar.f29648b = false;
    }

    public zzeb(ArrayList arrayList) {
        this.f29707c = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        f();
        this.f29707c.add(i2, obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f29707c.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        Object objRemove = this.f29707c.remove(i2);
        ((AbstractList) this).modCount++;
        return objRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        Object obj2 = this.f29707c.set(i2, obj);
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29707c.size();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    public final zzcn v0(int i2) {
        ArrayList arrayList = this.f29707c;
        if (i2 < arrayList.size()) {
            ct0.c();
            return null;
        }
        ArrayList arrayList2 = new ArrayList(i2);
        arrayList2.addAll(arrayList);
        return new zzeb(arrayList2);
    }
}
