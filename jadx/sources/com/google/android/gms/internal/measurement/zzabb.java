package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzabb extends AbstractSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzabc f30333c;

    public zzabb(zzabc zzabcVar, int i2) {
        this.f30333c = zzabcVar;
        this.f30332b = i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return Arrays.binarySearch(this.f30333c.f30334b, f(), h(), obj, this.f30332b == -1 ? zzabc.g : zzabe.f30338b) >= 0;
    }

    public final int f() {
        int i2 = this.f30332b;
        if (i2 == -1) {
            return 0;
        }
        return this.f30333c.f30335c[i2];
    }

    public final int h() {
        return this.f30333c.f30335c[this.f30332b + 1];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzaba(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return h() - f();
    }
}
