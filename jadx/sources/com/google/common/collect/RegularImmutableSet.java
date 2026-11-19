package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableSet<E> extends ImmutableSet<E> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object[] f33716j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final RegularImmutableSet f33717k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f33718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f33719f;
    public final transient Object[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f33720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient int f33721i;

    static {
        Object[] objArr = new Object[0];
        f33716j = objArr;
        f33717k = new RegularImmutableSet(objArr, objArr, 0, 0, 0);
    }

    public RegularImmutableSet(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        this.f33718e = objArr;
        this.f33719f = i2;
        this.g = objArr2;
        this.f33720h = i3;
        this.f33721i = i4;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.g;
            if (objArr.length != 0) {
                int iB = Hashing.b(obj);
                while (true) {
                    int i2 = iB & this.f33720h;
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
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        Object[] objArr2 = this.f33718e;
        int i3 = this.f33721i;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f33719f;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] i() {
        return this.f33718e;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int m() {
        return this.f33721i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int n() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean o() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        return f().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f33721i;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList u() {
        return ImmutableList.q(this.f33721i, this.f33718e);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}
