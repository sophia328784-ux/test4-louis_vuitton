package com.perfectcorp.thirdparty.com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
final class bn<E> extends ImmutableSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f42285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient int f42286f;

    public bn(Object obj) {
        obj.getClass();
        this.f42285e = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final int a(int i2, Object[] objArr) {
        objArr[i2] = this.f42285e;
        return i2 + 1;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.f42285e.equals(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    /* JADX INFO: renamed from: f */
    public final by iterator() {
        az azVar = new az();
        azVar.f42259c = this.f42285e;
        return azVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i2 = this.f42286f;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f42285e.hashCode();
        this.f42286f = iHashCode;
        return iHashCode;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f42285e.toString() + ']';
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet
    public final boolean x() {
        return this.f42286f != 0;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet
    public final ImmutableList z() {
        return ImmutableList.z(this.f42285e);
    }

    public bn(Object obj, int i2) {
        this.f42285e = obj;
        this.f42286f = i2;
    }
}
