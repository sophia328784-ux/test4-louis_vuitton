package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfa extends AbstractList<String> implements zzcx, RandomAccess {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzcx f29741b;

    public zzfa(zzcx zzcxVar) {
        this.f29741b = zzcxVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    public final zzcx K1() {
        return this;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    public final List X0() {
        return this.f29741b.X0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f29741b.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        zzfc zzfcVar = new zzfc();
        zzfcVar.f29743b = this.f29741b.iterator();
        return zzfcVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        zzfb zzfbVar = new zzfb();
        zzfbVar.f29742b = this.f29741b.listIterator(i2);
        return zzfbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29741b.size();
    }
}
