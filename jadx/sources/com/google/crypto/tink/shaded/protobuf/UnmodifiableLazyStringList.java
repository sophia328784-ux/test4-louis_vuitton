package com.google.crypto.tink.shaded.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements LazyStringList, RandomAccess {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyStringList f34262b;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.UnmodifiableLazyStringList$1, reason: invalid class name */
    class AnonymousClass1 implements ListIterator<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ListIterator f34263b;

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f34263b.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f34263b.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return (String) this.f34263b.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f34263b.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return (String) this.f34263b.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f34263b.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.UnmodifiableLazyStringList$2, reason: invalid class name */
    class AnonymousClass2 implements Iterator<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Iterator f34264b;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f34264b.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return (String) this.f34264b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public UnmodifiableLazyStringList(LazyStringList lazyStringList) {
        this.f34262b = lazyStringList;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final void A1(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final Object L1(int i2) {
        return this.f34262b.L1(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f34262b.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        anonymousClass2.f34264b = this.f34262b.iterator();
        return anonymousClass2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final List k0() {
        return this.f34262b.k0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.f34263b = this.f34262b.listIterator(i2);
        return anonymousClass1;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.LazyStringList
    public final LazyStringList q0() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34262b.size();
    }
}
