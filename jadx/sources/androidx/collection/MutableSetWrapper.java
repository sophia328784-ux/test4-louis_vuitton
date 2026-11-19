package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableSet;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/MutableSetWrapper;", "E", "Landroidx/collection/SetWrapper;", "", "Landroidx/collection/MutableScatterSet;", "parent", "<init>", "(Landroidx/collection/MutableScatterSet;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class MutableSetWrapper<E> extends SetWrapper<E> implements Set<E>, KMutableSet {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableScatterSet f3325c;

    /* JADX INFO: renamed from: androidx.collection.MutableSetWrapper$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010)\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/collection/MutableSetWrapper$iterator$1", "", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<Object>, KMutableIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3326b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f3327c;

        public AnonymousClass1() {
            this.f3327c = SequencesKt.o(new MutableSetWrapper$iterator$1$iterator$1(MutableSetWrapper.this, this, null));
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3327c.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            return this.f3327c.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i2 = this.f3326b;
            if (i2 != -1) {
                MutableSetWrapper.this.f3325c.n(i2);
                this.f3326b = -1;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper(MutableScatterSet<E> mutableScatterSet) {
        super(mutableScatterSet);
        mutableScatterSet.getClass();
        this.f3325c = mutableScatterSet;
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        return this.f3325c.d(obj);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        MutableScatterSet mutableScatterSet = this.f3325c;
        mutableScatterSet.getClass();
        int i2 = mutableScatterSet.d;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            mutableScatterSet.l(it.next());
        }
        return i2 != mutableScatterSet.d;
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final void clear() {
        this.f3325c.f();
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new AnonymousClass1();
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return this.f3325c.m(obj);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Collection collection2 = collection;
        MutableScatterSet mutableScatterSet = this.f3325c;
        mutableScatterSet.getClass();
        collection2.getClass();
        int i2 = mutableScatterSet.d;
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            mutableScatterSet.j(it.next());
        }
        return i2 != mutableScatterSet.d;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0059 A[LOOP:0: B:5:0x001a->B:17:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x005c A[EDGE_INSN: B:24:0x005c->B:18:0x005c BREAK  A[LOOP:0: B:5:0x001a->B:17:0x0059], SYNTHETIC] */
    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        MutableScatterSet mutableScatterSet = this.f3325c;
        mutableScatterSet.getClass();
        collection.getClass();
        Object[] objArr = mutableScatterSet.f3368b;
        int i2 = mutableScatterSet.d;
        long[] jArr = mutableScatterSet.f3367a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j2 = jArr[i3];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i3 != length) {
                        break;
                        break;
                    }
                    i3++;
                } else {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j2) < 128) {
                            int i6 = (i3 << 3) + i5;
                            if (!CollectionsKt.u(collection, objArr[i6])) {
                                mutableScatterSet.n(i6);
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                    if (i3 != length) {
                        break;
                    }
                    i3++;
                }
            }
        }
        return i2 != mutableScatterSet.d;
    }
}
