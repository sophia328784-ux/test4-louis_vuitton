package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/collections/ReversedList;", "T", "Lkotlin/collections/AbstractMutableList;", "", "delegate", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ReversedList<T> extends AbstractMutableList<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f71776b;

    /* JADX INFO: renamed from: kotlin.collections.ReversedList$listIterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010+\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/collections/ReversedList$listIterator$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements ListIterator<Object>, KMutableListIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListIterator f71777b;

        public AnonymousClass1(int i2) {
            this.f71777b = ReversedList.this.f71776b.listIterator(CollectionsKt__ReversedViewsKt.f(i2, ReversedList.this));
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            ListIterator listIterator = this.f71777b;
            listIterator.add(obj);
            listIterator.previous();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f71777b.hasPrevious();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f71777b.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f71777b.previous();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return (ReversedList.this.size() - 1) - this.f71777b.previousIndex();
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            return this.f71777b.next();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return (ReversedList.this.size() - 1) - this.f71777b.nextIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            this.f71777b.remove();
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.f71777b.set(obj);
        }
    }

    public ReversedList(List<T> list) {
        list.getClass();
        this.f71776b = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        this.f71776b.add(CollectionsKt__ReversedViewsKt.f(i2, this), obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f71776b.clear();
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f */
    public final int getF74615i() {
        return this.f71776b.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f71776b.get(CollectionsKt__ReversedViewsKt.e(i2, this));
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object h(int i2) {
        return this.f71776b.remove(CollectionsKt__ReversedViewsKt.e(i2, this));
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new AnonymousClass1(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new AnonymousClass1(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        return this.f71776b.set(CollectionsKt__ReversedViewsKt.e(i2, this), obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        return new AnonymousClass1(i2);
    }
}
