package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements RandomAccess, LazyStringList {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyStringList f73771b;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.UnmodifiableLazyStringList$1, reason: invalid class name */
    class AnonymousClass1 implements ListIterator<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ListIterator f73772b;

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f73772b.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f73772b.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return (String) this.f73772b.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f73772b.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return (String) this.f73772b.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f73772b.previousIndex();
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

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.UnmodifiableLazyStringList$2, reason: invalid class name */
    class AnonymousClass2 implements Iterator<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Iterator f73773b;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f73773b.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return (String) this.f73773b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public UnmodifiableLazyStringList(LazyStringList lazyStringList) {
        this.f73771b = lazyStringList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final void E0(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final ByteString H(int i2) {
        return this.f73771b.H(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f73771b.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        anonymousClass2.f73773b = this.f73771b.iterator();
        return anonymousClass2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final List k0() {
        return this.f73771b.k0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.f73772b = this.f73771b.listIterator(i2);
        return anonymousClass1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final UnmodifiableLazyStringList q0() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f73771b.size();
    }
}
