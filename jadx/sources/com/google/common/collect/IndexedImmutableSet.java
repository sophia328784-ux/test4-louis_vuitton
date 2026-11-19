package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    public abstract Object get(int i2);

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        return f().h(i2, objArr);
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        return f().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList u() {
        return new ImmutableList<Object>() { // from class: com.google.common.collect.IndexedImmutableSet.1
            @Override // java.util.List
            public final Object get(int i2) {
                return IndexedImmutableSet.this.get(i2);
            }

            @Override // com.google.common.collect.ImmutableCollection
            public final boolean o() {
                return IndexedImmutableSet.this.o();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return IndexedImmutableSet.this.size();
            }

            @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
            public Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}
