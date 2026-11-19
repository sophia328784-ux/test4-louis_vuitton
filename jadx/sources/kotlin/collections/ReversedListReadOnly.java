package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0012\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/collections/ReversedListReadOnly;", "T", "Lkotlin/collections/AbstractList;", "", "delegate", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
class ReversedListReadOnly<T> extends AbstractList<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f71779c;

    /* JADX INFO: renamed from: kotlin.collections.ReversedListReadOnly$listIterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010*\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/collections/ReversedListReadOnly$listIterator$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements ListIterator<Object>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListIterator f71780b;

        public AnonymousClass1(int i2) {
            this.f71780b = ReversedListReadOnly.this.f71779c.listIterator(CollectionsKt__ReversedViewsKt.f(i2, ReversedListReadOnly.this));
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f71780b.hasPrevious();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f71780b.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f71780b.previous();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return (ReversedListReadOnly.this.size() - 1) - this.f71780b.previousIndex();
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            return this.f71780b.next();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return (ReversedListReadOnly.this.size() - 1) - this.f71780b.nextIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public ReversedListReadOnly(List<? extends T> list) {
        list.getClass();
        this.f71779c = list;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF74603e() {
        return this.f71779c.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f71779c.get(CollectionsKt__ReversedViewsKt.e(i2, this));
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new AnonymousClass1(0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new AnonymousClass1(0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        return new AnonymousClass1(i2);
    }
}
