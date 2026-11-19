package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzlz extends AbstractList<String> implements zzjv, RandomAccess {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzjv f31286b;

    public zzlz(zzjv zzjvVar) {
        this.f31286b = zzjvVar;
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final Object g(int i2) {
        return this.f31286b.g(i2);
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final List g0() {
        return this.f31286b.g0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f31286b.get(i2);
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final zzjv h0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        zzmb zzmbVar = new zzmb();
        zzmbVar.f31294b = this.f31286b.iterator();
        return zzmbVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        zzly zzlyVar = new zzly();
        zzlyVar.f31285b = this.f31286b.listIterator(i2);
        return zzlyVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31286b.size();
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final void y1(zzht zzhtVar) {
        throw new UnsupportedOperationException();
    }
}
