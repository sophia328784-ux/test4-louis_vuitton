package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class bm<E> extends ImmutableSet<E> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final bm f42280j = new bm(new Object[0], null, 0, 0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f42281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f42282f;
    public final transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f42283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient int f42284i;

    public bm(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        this.f42281e = objArr;
        this.f42282f = objArr2;
        this.g = i3;
        this.f42283h = i2;
        this.f42284i = i4;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int a(int i2, Object[] objArr) {
        Object[] objArr2 = this.f42281e;
        int i3 = this.f42284i;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        Object[] objArr;
        if (obj == null || (objArr = this.f42282f) == null) {
            return false;
        }
        int iB = al.a.b(obj);
        while (true) {
            int i2 = iB & this.g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iB = i2 + 1;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    /* JADX INFO: renamed from: f */
    public final by iterator() {
        return h().listIterator(0);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f42283h;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final Object[] i() {
        return this.f42281e;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return h().listIterator(0);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int m() {
        return 0;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int n() {
        return this.f42284i;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f42284i;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet
    public final ImmutableList z() {
        return ImmutableList.s(this.f42284i, this.f42281e);
    }
}
