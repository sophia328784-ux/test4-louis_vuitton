package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
final class bj<E> extends ImmutableList<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableList f42269f = new bj(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f42270e;

    public bj(Object[] objArr, int i2) {
        this.d = objArr;
        this.f42270e = i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList, com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int a(int i2, Object[] objArr) {
        Object[] objArr2 = this.d;
        int i3 = this.f42270e;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        Preconditions.b(i2, this.f42270e);
        return this.d[i2];
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final Object[] i() {
        return this.d;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int m() {
        return 0;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int n() {
        return this.f42270e;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f42270e;
    }
}
