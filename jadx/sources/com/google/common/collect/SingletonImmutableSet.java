package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
final class SingletonImmutableSet<E> extends ImmutableSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f33730e;

    public SingletonImmutableSet(Object obj) {
        obj.getClass();
        this.f33730e = obj;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f33730e.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public final ImmutableList f() {
        return ImmutableList.A(this.f33730e);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        objArr[i2] = this.f33730e;
        return i2 + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f33730e.hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean o() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        return new Iterators.SingletonIterator(this.f33730e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f33730e.toString() + ']';
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}
