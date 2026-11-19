package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final RegularImmutableMultiset f33710i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient ObjectCountHashMap f33711f;
    public final transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient ImmutableSet f33712h;

    public final class ElementSet extends IndexedImmutableSet<E> {
        public ElementSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i2) {
            ObjectCountHashMap objectCountHashMap = RegularImmutableMultiset.this.f33711f;
            Preconditions.j(i2, objectCountHashMap.f33687c);
            return objectCountHashMap.f33685a[i2];
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return RegularImmutableMultiset.this.f33711f.f33687c;
        }

        @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f33714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f33715c;

        public SerializedForm(Multiset multiset) {
            ImmutableMultiset immutableMultiset = (ImmutableMultiset) multiset;
            int size = immutableMultiset.x1().size();
            this.f33714b = new Object[size];
            this.f33715c = new int[size];
            int i2 = 0;
            for (Multiset.Entry entry : immutableMultiset.x1()) {
                this.f33714b[i2] = entry.a();
                this.f33715c[i2] = entry.getCount();
                i2++;
            }
        }

        public Object readResolve() {
            Object[] objArr = this.f33714b;
            ImmutableMultiset.Builder builder = new ImmutableMultiset.Builder(objArr.length);
            for (int i2 = 0; i2 < objArr.length; i2++) {
                builder.c(this.f33715c[i2], objArr[i2]);
            }
            return builder.d();
        }
    }

    static {
        ObjectCountHashMap objectCountHashMap = new ObjectCountHashMap();
        objectCountHashMap.d(3);
        f33710i = new RegularImmutableMultiset(objectCountHashMap);
    }

    public RegularImmutableMultiset(ObjectCountHashMap objectCountHashMap) {
        this.f33711f = objectCountHashMap;
        long j2 = 0;
        int i2 = 0;
        while (true) {
            int i3 = objectCountHashMap.f33687c;
            if (i2 >= i3) {
                this.g = Ints.f(j2);
                return;
            } else {
                Preconditions.j(i2, i3);
                j2 += (long) objectCountHashMap.f33686b[i2];
                i2++;
            }
        }
    }

    @Override // com.google.common.collect.Multiset
    public final Set j0() {
        ImmutableSet immutableSet = this.f33712h;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.f33712h = elementSet;
        return elementSet;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean o() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
