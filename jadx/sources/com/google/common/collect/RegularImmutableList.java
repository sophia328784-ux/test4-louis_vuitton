package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableList<E> extends ImmutableList<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableList f33698f = new RegularImmutableList(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f33699e;

    public RegularImmutableList(Object[] objArr, int i2) {
        this.d = objArr;
        this.f33699e = i2;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        Preconditions.j(i2, this.f33699e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        Object[] objArr2 = this.d;
        int i3 = this.f33699e;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] i() {
        return this.d;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int m() {
        return this.f33699e;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int n() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f33699e;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}
