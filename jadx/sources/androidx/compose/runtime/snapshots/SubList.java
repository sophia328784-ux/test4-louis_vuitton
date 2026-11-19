package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import defpackage.v7;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/snapshots/SubList;", "T", "", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "parentList", "", "fromIndex", "toIndex", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SubList<T> implements List<T>, KMutableList {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateList f8540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8541c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8542e;

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SubList$listIterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010+\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/runtime/snapshots/SubList$listIterator$1", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class AnonymousClass1 implements ListIterator<Object>, KMutableListIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$IntRef f8543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SubList f8544c;

        public AnonymousClass1(Ref$IntRef ref$IntRef, SubList subList) {
            this.f8543b = ref$IntRef;
            this.f8544c = subList;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new IllegalStateException("Cannot modify a state list through an iterator");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f8543b.f71919b < this.f8544c.f8542e - 1;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f8543b.f71919b >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            Ref$IntRef ref$IntRef = this.f8543b;
            int i2 = ref$IntRef.f71919b + 1;
            SubList subList = this.f8544c;
            SnapshotStateListKt.a(i2, subList.f8542e);
            ref$IntRef.f71919b = i2;
            return subList.get(i2);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f8543b.f71919b + 1;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            Ref$IntRef ref$IntRef = this.f8543b;
            int i2 = ref$IntRef.f71919b;
            SubList subList = this.f8544c;
            SnapshotStateListKt.a(i2, subList.f8542e);
            ref$IntRef.f71919b = i2 - 1;
            return subList.get(i2);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f8543b.f71919b;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new IllegalStateException("Cannot modify a state list through an iterator");
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new IllegalStateException("Cannot modify a state list through an iterator");
        }
    }

    public SubList(SnapshotStateList<T> snapshotStateList, int i2, int i3) {
        this.f8540b = snapshotStateList;
        this.f8541c = i2;
        this.d = SnapshotStateListKt.d(snapshotStateList);
        this.f8542e = i3 - i2;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        f();
        int i2 = this.f8541c + this.f8542e;
        SnapshotStateList snapshotStateList = this.f8540b;
        snapshotStateList.add(i2, obj);
        this.f8542e++;
        this.d = SnapshotStateListKt.d(snapshotStateList);
        return true;
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        f();
        int i3 = i2 + this.f8541c;
        SnapshotStateList snapshotStateList = this.f8540b;
        boolean zAddAll = snapshotStateList.addAll(i3, collection);
        if (zAddAll) {
            this.f8542e = collection.size() + this.f8542e;
            this.d = SnapshotStateListKt.d(snapshotStateList);
        }
        return zAddAll;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        if (this.f8542e > 0) {
            f();
            int i2 = this.f8542e;
            int i3 = this.f8541c;
            SnapshotStateList snapshotStateList = this.f8540b;
            snapshotStateList.a(i3, i2 + i3);
            this.f8542e = 0;
            this.d = SnapshotStateListKt.d(snapshotStateList);
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        if (SnapshotStateListKt.d(this.f8540b) == this.d) {
            return;
        }
        v7.c();
    }

    @Override // java.util.List
    public final Object get(int i2) {
        f();
        SnapshotStateListKt.a(i2, this.f8542e);
        return this.f8540b.get(this.f8541c + i2);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        f();
        int i2 = this.f8542e;
        int i3 = this.f8541c;
        Iterator<Integer> it = RangesKt.j(i3, i2 + i3).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (Intrinsics.c(obj, this.f8540b.get(iNextInt))) {
                return iNextInt - i3;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f8542e == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        f();
        int i2 = this.f8542e;
        int i3 = this.f8541c;
        for (int i4 = (i2 + i3) - 1; i4 >= i3; i4--) {
            if (Intrinsics.c(obj, this.f8540b.get(i4))) {
                return i4 - i3;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i2) {
        f();
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.f71919b = i2 - 1;
        return new AnonymousClass1(ref$IntRef, this);
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        f();
        int i3 = this.f8541c + i2;
        SnapshotStateList snapshotStateList = this.f8540b;
        Object objRemove = snapshotStateList.remove(i3);
        this.f8542e--;
        this.d = SnapshotStateListKt.d(snapshotStateList);
        return objRemove;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i2;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        f();
        SnapshotStateList snapshotStateList = this.f8540b;
        int i3 = this.f8541c;
        int i4 = this.f8542e + i3;
        int size = snapshotStateList.size();
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = snapshotStateList.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentVectorBuilder persistentVectorBuilderBuilder = persistentList.builder();
            persistentVectorBuilderBuilder.subList(i3, i4).retainAll(collection);
            PersistentList persistentListI = persistentVectorBuilderBuilder.i();
            if (Intrinsics.c(persistentListI, persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = snapshotStateList.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, snapshotStateList, snapshotI), i2, persistentListI, true);
            }
            SnapshotKt.m(snapshotI, snapshotStateList);
        } while (!zB);
        int size2 = size - snapshotStateList.size();
        if (size2 > 0) {
            this.d = SnapshotStateListKt.d(this.f8540b);
            this.f8542e -= size2;
        }
        return size2 > 0;
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        SnapshotStateListKt.a(i2, this.f8542e);
        f();
        int i3 = i2 + this.f8541c;
        SnapshotStateList snapshotStateList = this.f8540b;
        Object obj2 = snapshotStateList.set(i3, obj);
        this.d = SnapshotStateListKt.d(snapshotStateList);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f8542e;
    }

    @Override // java.util.List
    public final List subList(int i2, int i3) {
        if (!(i2 >= 0 && i2 <= i3 && i3 <= this.f8542e)) {
            PreconditionsKt.a("fromIndex or toIndex are out of bounds");
        }
        f();
        int i4 = this.f8541c;
        return new SubList(this.f8540b, i2 + i4, i3 + i4);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        f();
        int i3 = this.f8541c + i2;
        SnapshotStateList snapshotStateList = this.f8540b;
        snapshotStateList.add(i3, obj);
        this.f8542e++;
        this.d = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        return addAll(this.f8542e, collection);
    }
}
