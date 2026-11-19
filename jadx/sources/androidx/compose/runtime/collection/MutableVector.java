package androidx.compose.runtime.collection;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00060\u0002j\u0002`\u0003:\u0003\n\u000b\fB!\b\u0001\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/collection/MutableVector;", "T", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "content", "", "size", "<init>", "([Ljava/lang/Object;I)V", "VectorListIterator", "MutableVectorList", "SubList", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableVector<T> implements RandomAccess {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f8165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f8166c;
    public int d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;", "T", "", "", "list", "", "index", "<init>", "(Ljava/util/List;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class VectorListIterator<T> implements ListIterator<T>, KMutableListIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f8170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f8171c;

        public VectorListIterator(List<T> list, int i2) {
            this.f8170b = list;
            this.f8171c = i2;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            this.f8170b.add(this.f8171c, obj);
            this.f8171c++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f8171c < this.f8170b.size();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f8171c > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i2 = this.f8171c;
            this.f8171c = i2 + 1;
            return this.f8170b.get(i2);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f8171c;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i2 = this.f8171c - 1;
            this.f8171c = i2;
            return this.f8170b.get(i2);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f8171c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            int i2 = this.f8171c - 1;
            this.f8171c = i2;
            this.f8170b.remove(i2);
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.f8170b.set(this.f8171c, obj);
        }
    }

    public MutableVector(T[] tArr, int i2) {
        this.f8165b = tArr;
        this.d = i2;
    }

    public final void a(int i2, Object obj) {
        int i3 = this.d + 1;
        if (this.f8165b.length < i3) {
            q(i3);
        }
        Object[] objArr = this.f8165b;
        int i4 = this.d;
        if (i2 != i4) {
            System.arraycopy(objArr, i2, objArr, i2 + 1, i4 - i2);
        }
        objArr[i2] = obj;
        this.d++;
    }

    public final void b(Object obj) {
        int i2 = this.d + 1;
        if (this.f8165b.length < i2) {
            q(i2);
        }
        Object[] objArr = this.f8165b;
        int i3 = this.d;
        objArr[i3] = obj;
        this.d = i3 + 1;
    }

    public final void f(int i2, MutableVector mutableVector) {
        int i3 = mutableVector.d;
        if (i3 == 0) {
            return;
        }
        int i4 = this.d + i3;
        if (this.f8165b.length < i4) {
            q(i4);
        }
        Object[] objArr = this.f8165b;
        int i5 = this.d;
        if (i2 != i5) {
            System.arraycopy(objArr, i2, objArr, i2 + i3, i5 - i2);
        }
        System.arraycopy(mutableVector.f8165b, 0, objArr, i2, i3);
        this.d += i3;
    }

    public final void g(int i2, List list) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        int i3 = this.d + size;
        if (this.f8165b.length < i3) {
            q(i3);
        }
        Object[] objArr = this.f8165b;
        int i4 = this.d;
        if (i2 != i4) {
            System.arraycopy(objArr, i2, objArr, i2 + size, i4 - i2);
        }
        int size2 = list.size();
        for (int i5 = 0; i5 < size2; i5++) {
            objArr[i2 + i5] = list.get(i5);
        }
        this.d += size;
    }

    public final boolean h(int i2, Collection collection) {
        int i3 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        int size = collection.size();
        int i4 = this.d + size;
        if (this.f8165b.length < i4) {
            q(i4);
        }
        Object[] objArr = this.f8165b;
        int i5 = this.d;
        if (i2 != i5) {
            System.arraycopy(objArr, i2, objArr, i2 + size, i5 - i2);
        }
        for (T t : collection) {
            int i6 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            objArr[i3 + i2] = t;
            i3 = i6;
        }
        this.d += size;
        return true;
    }

    public final List i() {
        List list = this.f8166c;
        if (list != null) {
            return list;
        }
        MutableVectorList mutableVectorList = new MutableVectorList(this);
        this.f8166c = mutableVectorList;
        return mutableVectorList;
    }

    public final void j() {
        Object[] objArr = this.f8165b;
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.d = 0;
    }

    public final boolean l(Object obj) {
        int i2 = this.d - 1;
        if (i2 >= 0) {
            for (int i3 = 0; !Intrinsics.c(this.f8165b[i3], obj); i3++) {
                if (i3 != i2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int m(Object obj) {
        Object[] objArr = this.f8165b;
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            if (Intrinsics.c(obj, objArr[i3])) {
                return i3;
            }
        }
        return -1;
    }

    public final boolean n(Object obj) {
        int iM = m(obj);
        if (iM < 0) {
            return false;
        }
        o(iM);
        return true;
    }

    public final Object o(int i2) {
        Object[] objArr = this.f8165b;
        Object obj = objArr[i2];
        int i3 = this.d;
        if (i2 != i3 - 1) {
            int i4 = i2 + 1;
            System.arraycopy(objArr, i4, objArr, i2, i3 - i4);
        }
        int i5 = this.d - 1;
        this.d = i5;
        objArr[i5] = null;
        return obj;
    }

    public final void p(int i2, int i3) {
        if (i3 > i2) {
            int i4 = this.d;
            if (i3 < i4) {
                Object[] objArr = this.f8165b;
                System.arraycopy(objArr, i3, objArr, i2, i4 - i3);
            }
            int i5 = this.d;
            int i6 = i5 - (i3 - i2);
            int i7 = i5 - 1;
            if (i6 <= i7) {
                int i8 = i6;
                while (true) {
                    this.f8165b[i8] = null;
                    if (i8 == i7) {
                        break;
                    } else {
                        i8++;
                    }
                }
            }
            this.d = i6;
        }
    }

    public final void q(int i2) {
        Object[] objArr = this.f8165b;
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i2, length * 2)];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        this.f8165b = objArr2;
    }

    public final void r(Comparator comparator) {
        Object[] objArr = this.f8165b;
        int i2 = this.d;
        objArr.getClass();
        comparator.getClass();
        Arrays.sort(objArr, 0, i2, comparator);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;", "T", "", "Landroidx/compose/runtime/collection/MutableVector;", "vector", "<init>", "(Landroidx/compose/runtime/collection/MutableVector;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class MutableVectorList<T> implements List<T>, KMutableList {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MutableVector f8167b;

        public MutableVectorList(MutableVector<T> mutableVector) {
            this.f8167b = mutableVector;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            this.f8167b.b(obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            MutableVector mutableVector = this.f8167b;
            return mutableVector.h(mutableVector.d, collection);
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            this.f8167b.j();
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f8167b.l(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            MutableVector mutableVector = this.f8167b;
            mutableVector.getClass();
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!mutableVector.l(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            MutableVectorKt.a(i2, this);
            return this.f8167b.f8165b[i2];
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            return this.f8167b.m(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return this.f8167b.d == 0;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            MutableVector mutableVector = this.f8167b;
            Object[] objArr = mutableVector.f8165b;
            for (int i2 = mutableVector.d - 1; i2 >= 0; i2--) {
                if (Intrinsics.c(obj, objArr[i2])) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            MutableVectorKt.a(i2, this);
            return this.f8167b.o(i2);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            MutableVector mutableVector = this.f8167b;
            mutableVector.getClass();
            if (collection.isEmpty()) {
                return false;
            }
            int i2 = mutableVector.d;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                mutableVector.n(it.next());
            }
            return i2 != mutableVector.d;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            MutableVector mutableVector = this.f8167b;
            int i2 = mutableVector.d;
            for (int i3 = i2 - 1; -1 < i3; i3--) {
                if (!collection.contains(mutableVector.f8165b[i3])) {
                    mutableVector.o(i3);
                }
            }
            return i2 != mutableVector.d;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            MutableVectorKt.a(i2, this);
            Object[] objArr = this.f8167b.f8165b;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.f8167b.d;
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            MutableVectorKt.b(i2, i3, this);
            return new SubList(this, i2, i3);
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
        public final void add(int i2, Object obj) {
            this.f8167b.a(i2, obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            return new VectorListIterator(this, i2);
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            return this.f8167b.h(i2, collection);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            return this.f8167b.n(obj);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B%\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/collection/MutableVector$SubList;", "T", "", "list", "", "start", "end", "<init>", "(Ljava/util/List;II)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SubList<T> implements List<T>, KMutableList {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f8168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f8169c;
        public int d;

        public SubList(List<T> list, int i2, int i3) {
            this.f8168b = list;
            this.f8169c = i2;
            this.d = i3;
        }

        @Override // java.util.List
        public final void add(int i2, Object obj) {
            this.f8168b.add(i2 + this.f8169c, obj);
            this.d++;
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            this.f8168b.addAll(i2 + this.f8169c, collection);
            int size = collection.size();
            this.d += size;
            return size > 0;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i2 = this.d - 1;
            int i3 = this.f8169c;
            if (i3 <= i2) {
                while (true) {
                    this.f8168b.remove(i2);
                    if (i2 == i3) {
                        break;
                    } else {
                        i2--;
                    }
                }
            }
            this.d = i3;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            int i2 = this.d;
            for (int i3 = this.f8169c; i3 < i2; i3++) {
                if (Intrinsics.c(this.f8168b.get(i3), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            MutableVectorKt.a(i2, this);
            return this.f8168b.get(i2 + this.f8169c);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i2 = this.d;
            int i3 = this.f8169c;
            for (int i4 = i3; i4 < i2; i4++) {
                if (Intrinsics.c(this.f8168b.get(i4), obj)) {
                    return i4 - i3;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return this.d == this.f8169c;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i2 = this.d - 1;
            int i3 = this.f8169c;
            if (i3 > i2) {
                return -1;
            }
            while (!Intrinsics.c(this.f8168b.get(i2), obj)) {
                if (i2 == i3) {
                    return -1;
                }
                i2--;
            }
            return i2 - i3;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i2 = this.d;
            for (int i3 = this.f8169c; i3 < i2; i3++) {
                List list = this.f8168b;
                if (Intrinsics.c(list.get(i3), obj)) {
                    list.remove(i3);
                    this.d--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            int i2 = this.d;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i2 != this.d;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            int i2 = this.d;
            int i3 = i2 - 1;
            int i4 = this.f8169c;
            if (i4 <= i3) {
                while (true) {
                    List list = this.f8168b;
                    if (!collection.contains(list.get(i3))) {
                        list.remove(i3);
                        this.d--;
                    }
                    if (i3 == i4) {
                        break;
                    }
                    i3--;
                }
            }
            return i2 != this.d;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            MutableVectorKt.a(i2, this);
            return this.f8168b.set(i2 + this.f8169c, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.d - this.f8169c;
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            MutableVectorKt.b(i2, i3, this);
            return new SubList(this, i2, i3);
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
        public final ListIterator listIterator(int i2) {
            return new VectorListIterator(this, i2);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i2 = this.d;
            this.d = i2 + 1;
            this.f8168b.add(i2, obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            this.f8168b.addAll(this.d, collection);
            int size = collection.size();
            this.d += size;
            return size > 0;
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            MutableVectorKt.a(i2, this);
            Object objRemove = this.f8168b.remove(i2 + this.f8169c);
            this.d--;
            return objRemove;
        }
    }
}
