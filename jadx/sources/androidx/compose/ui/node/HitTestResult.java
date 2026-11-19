package androidx.compose.ui.node;

import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.Modifier;
import defpackage.az;
import defpackage.md;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/HitTestResult;", "", "Landroidx/compose/ui/Modifier$Node;", "<init>", "()V", "HitTestResultIterator", "SubList", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HitTestResult implements List<Modifier.Node>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableObjectList f9667b = new MutableObjectList(16);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLongList f9668c = new MutableLongList(16);
    public int d = -1;

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ void add(int i2, Modifier.Node node) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection<? extends Modifier.Node> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ void addFirst(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ void addLast(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.d = -1;
        this.f9667b.k();
        this.f9668c.f3276b = 0;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return (obj instanceof Modifier.Node) && indexOf((Modifier.Node) obj) != -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains((Modifier.Node) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final long f() {
        long jA = HitTestResultKt.a(Float.POSITIVE_INFINITY, false, false);
        int i2 = this.d + 1;
        int i3 = this.f9667b.f3346b - 1;
        if (i2 > i3) {
            return jA;
        }
        while (true) {
            MutableLongList mutableLongList = this.f9668c;
            if (i2 < 0) {
                mutableLongList.getClass();
                break;
            }
            if (i2 >= mutableLongList.f3276b) {
                break;
            }
            long j2 = mutableLongList.f3275a[i2];
            if (DistanceAndFlags.a(j2, jA) < 0) {
                jA = j2;
            }
            if ((DistanceAndFlags.b(jA) < Call.Parameters.DEFAULT_CAMERA_ZOOM && DistanceAndFlags.d(jA)) || i2 == i3) {
                return jA;
            }
            i2++;
        }
        az.v("Index must be between 0 and size");
        return 0L;
    }

    @Override // java.util.List
    public final Modifier.Node get(int i2) {
        Object objB = this.f9667b.b(i2);
        objB.getClass();
        return (Modifier.Node) objB;
    }

    public final void h(int i2, int i3) {
        if (i2 >= i3) {
            return;
        }
        this.f9667b.n(i2, i3);
        MutableLongList mutableLongList = this.f9668c;
        if (i2 >= 0) {
            int i4 = mutableLongList.f3276b;
            if (i2 <= i4 && i3 >= 0 && i3 <= i4) {
                if (i3 < i2) {
                    md.n("The end index must be < start index");
                    return;
                } else {
                    if (i3 != i2) {
                        if (i3 < i4) {
                            long[] jArr = mutableLongList.f3275a;
                            ArraysKt.k(i2, jArr, i3, jArr, i4);
                        }
                        mutableLongList.f3276b -= i3 - i2;
                        return;
                    }
                    return;
                }
            }
        } else {
            mutableLongList.getClass();
        }
        az.v("Index must be between 0 and size");
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Modifier.Node)) {
            return -1;
        }
        Modifier.Node node = (Modifier.Node) obj;
        int size = size() - 1;
        if (size >= 0) {
            int i2 = 0;
            while (!Intrinsics.c(this.f9667b.b(i2), node)) {
                if (i2 != size) {
                    i2++;
                }
            }
            return i2;
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f9667b.d();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Modifier.Node)) {
            return -1;
        }
        Modifier.Node node = (Modifier.Node) obj;
        for (int size = size() - 1; -1 < size; size--) {
            if (Intrinsics.c(this.f9667b.b(size), node)) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator<Modifier.Node> listIterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Modifier.Node remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ Object removeFirst() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ Object removeLast() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final void replaceAll(UnaryOperator<Modifier.Node> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Modifier.Node set(int i2, Modifier.Node node) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f9667b.f3346b;
    }

    @Override // java.util.List
    public final void sort(Comparator<? super Modifier.Node> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List<Modifier.Node> subList(int i2, int i3) {
        return new SubList(i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/HitTestResult$SubList;", "", "Landroidx/compose/ui/Modifier$Node;", "", "minIndex", "maxIndex", "<init>", "(Landroidx/compose/ui/node/HitTestResult;II)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SubList implements List<Modifier.Node>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9673c;

        public SubList(int i2, int i3) {
            this.f9672b = i2;
            this.f9673c = i3;
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ void add(int i2, Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection<? extends Modifier.Node> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ void addFirst(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ void addLast(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            return (obj instanceof Modifier.Node) && indexOf((Modifier.Node) obj) != -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains((Modifier.Node) it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Modifier.Node get(int i2) {
            Object objB = HitTestResult.this.f9667b.b(i2 + this.f9672b);
            objB.getClass();
            return (Modifier.Node) objB;
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            if (!(obj instanceof Modifier.Node)) {
                return -1;
            }
            Modifier.Node node = (Modifier.Node) obj;
            int i2 = this.f9672b;
            int i3 = this.f9673c;
            if (i2 <= i3) {
                int i4 = i2;
                while (!Intrinsics.c(HitTestResult.this.f9667b.b(i4), node)) {
                    if (i4 != i3) {
                        i4++;
                    }
                }
                return i4 - i2;
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return size() == 0;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            int i2 = this.f9672b;
            return HitTestResult.this.new HitTestResultIterator(i2, i2, this.f9673c);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            if (!(obj instanceof Modifier.Node)) {
                return -1;
            }
            Modifier.Node node = (Modifier.Node) obj;
            int i2 = this.f9673c;
            int i3 = this.f9672b;
            if (i3 <= i2) {
                while (!Intrinsics.c(HitTestResult.this.f9667b.b(i2), node)) {
                    if (i2 != i3) {
                        i2--;
                    }
                }
                return i2 - i3;
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator<Modifier.Node> listIterator(int i2) {
            int i3 = this.f9672b;
            int i4 = this.f9673c;
            return HitTestResult.this.new HitTestResultIterator(i2 + i3, i3, i4);
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ Modifier.Node remove(int i2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ Object removeFirst() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ Object removeLast() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final void replaceAll(UnaryOperator<Modifier.Node> unaryOperator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ Modifier.Node set(int i2, Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.f9673c - this.f9672b;
        }

        @Override // java.util.List
        public final void sort(Comparator<? super Modifier.Node> comparator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final List<Modifier.Node> subList(int i2, int i3) {
            int i4 = this.f9672b;
            return HitTestResult.this.new SubList(i2 + i4, i4 + i3);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final ListIterator<Modifier.Node> listIterator() {
            int i2 = this.f9672b;
            return HitTestResult.this.new HitTestResultIterator(i2, i2, this.f9673c);
        }
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final ListIterator<Modifier.Node> listIterator(int i2) {
        return new HitTestResultIterator(this, i2, 0, 0, 6, null);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;", "", "Landroidx/compose/ui/Modifier$Node;", "", "index", "minIndex", "maxIndex", "<init>", "(Landroidx/compose/ui/node/HitTestResult;III)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class HitTestResultIterator implements ListIterator<Modifier.Node>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9670c;
        public final int d;

        public HitTestResultIterator(HitTestResult hitTestResult, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i2, (i5 & 2) != 0 ? 0 : i3, (i5 & 4) != 0 ? hitTestResult.f9667b.f3346b : i4);
        }

        @Override // java.util.ListIterator
        public final /* bridge */ /* synthetic */ void add(Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f9669b < this.d;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f9669b > this.f9670c;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            MutableObjectList mutableObjectList = HitTestResult.this.f9667b;
            int i2 = this.f9669b;
            this.f9669b = i2 + 1;
            Object objB = mutableObjectList.b(i2);
            objB.getClass();
            return (Modifier.Node) objB;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f9669b - this.f9670c;
        }

        @Override // java.util.ListIterator
        public final Modifier.Node previous() {
            MutableObjectList mutableObjectList = HitTestResult.this.f9667b;
            int i2 = this.f9669b - 1;
            this.f9669b = i2;
            Object objB = mutableObjectList.b(i2);
            objB.getClass();
            return (Modifier.Node) objB;
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return (this.f9669b - this.f9670c) - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final /* bridge */ /* synthetic */ void set(Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public HitTestResultIterator(int i2, int i3, int i4) {
            this.f9669b = i2;
            this.f9670c = i3;
            this.d = i4;
        }
    }
}
