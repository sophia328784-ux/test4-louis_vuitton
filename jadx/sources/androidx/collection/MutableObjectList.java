package androidx.collection;

import defpackage.fc;
import defpackage.no0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003\u0007\b\tB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Landroidx/collection/MutableObjectList;", "E", "Landroidx/collection/ObjectList;", "", "initialCapacity", "<init>", "(I)V", "MutableObjectListIterator", "ObjectListMutableList", "SubList", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableObjectList<E> extends ObjectList<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ObjectListMutableList f3307c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/collection/MutableObjectList$MutableObjectListIterator;", "T", "", "", "list", "", "index", "<init>", "(Ljava/util/List;I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class MutableObjectListIterator<T> implements ListIterator<T>, KMutableListIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f3308b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3309c;

        public MutableObjectListIterator(List<T> list, int i2) {
            list.getClass();
            this.f3308b = list;
            this.f3309c = i2 - 1;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            int i2 = this.f3309c + 1;
            this.f3309c = i2;
            this.f3308b.add(i2, obj);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f3309c < this.f3308b.size() - 1;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f3309c >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i2 = this.f3309c + 1;
            this.f3309c = i2;
            return this.f3308b.get(i2);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f3309c + 1;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i2 = this.f3309c;
            this.f3309c = i2 - 1;
            return this.f3308b.get(i2);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f3309c;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            this.f3308b.remove(this.f3309c);
            this.f3309c--;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.f3308b.set(this.f3309c, obj);
        }
    }

    public /* synthetic */ MutableObjectList(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 16 : i2);
    }

    public final void g(Object obj) {
        int i2 = this.f3346b + 1;
        Object[] objArr = this.f3345a;
        if (objArr.length < i2) {
            o(i2, objArr);
        }
        Object[] objArr2 = this.f3345a;
        int i3 = this.f3346b;
        objArr2[i3] = obj;
        this.f3346b = i3 + 1;
    }

    public final void h(ObjectList objectList) {
        objectList.getClass();
        if (objectList.d()) {
            return;
        }
        int i2 = this.f3346b + objectList.f3346b;
        Object[] objArr = this.f3345a;
        if (objArr.length < i2) {
            o(i2, objArr);
        }
        ArraysKt.l(objectList.f3345a, this.f3345a, this.f3346b, 0, objectList.f3346b);
        this.f3346b += objectList.f3346b;
    }

    public final void i(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return;
        }
        int i2 = this.f3346b;
        int size = list.size() + i2;
        Object[] objArr = this.f3345a;
        if (objArr.length < size) {
            o(size, objArr);
        }
        Object[] objArr2 = this.f3345a;
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            objArr2[i3 + i2] = list.get(i3);
        }
        this.f3346b = list.size() + this.f3346b;
    }

    public final List j() {
        ObjectListMutableList objectListMutableList = this.f3307c;
        if (objectListMutableList != null) {
            return objectListMutableList;
        }
        ObjectListMutableList objectListMutableList2 = new ObjectListMutableList(this);
        this.f3307c = objectListMutableList2;
        return objectListMutableList2;
    }

    public final void k() {
        ArraysKt.r(this.f3345a, 0, this.f3346b, null);
        this.f3346b = 0;
    }

    public final boolean l(Object obj) {
        int iC = c(obj);
        if (iC < 0) {
            return false;
        }
        m(iC);
        return true;
    }

    public final Object m(int i2) {
        int i3;
        if (i2 < 0 || i2 >= (i3 = this.f3346b)) {
            f(i2);
            throw null;
        }
        Object[] objArr = this.f3345a;
        Object obj = objArr[i2];
        if (i2 != i3 - 1) {
            ArraysKt.l(objArr, objArr, i2, i2 + 1, i3);
        }
        int i4 = this.f3346b - 1;
        this.f3346b = i4;
        objArr[i4] = null;
        return obj;
    }

    public final void n(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 > (i4 = this.f3346b) || i3 < 0 || i3 > i4) {
            no0.s(fc.p(i2, i3, "Start (", ") and end (", ") must be in 0.."), this.f3346b);
            return;
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("Start (" + i2 + ") is more than end (" + i3 + ')');
        }
        if (i3 != i2) {
            if (i3 < i4) {
                Object[] objArr = this.f3345a;
                ArraysKt.l(objArr, objArr, i2, i3, i4);
            }
            int i5 = this.f3346b;
            int i6 = i5 - (i3 - i2);
            ArraysKt.r(this.f3345a, i6, i5, null);
            this.f3346b = i6;
        }
    }

    public final void o(int i2, Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i2, (length * 3) / 2)];
        ArraysKt.l(objArr, objArr2, 0, 0, length);
        this.f3345a = objArr2;
    }

    public final Object p(int i2, Object obj) {
        if (i2 < 0 || i2 >= this.f3346b) {
            f(i2);
            throw null;
        }
        Object[] objArr = this.f3345a;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public final void q(int i2) {
        StringBuilder sbQ = fc.q(i2, "Index ", " must be in 0..");
        sbQ.append(this.f3346b);
        throw new IndexOutOfBoundsException(sbQ.toString());
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/MutableObjectList$ObjectListMutableList;", "T", "", "Landroidx/collection/MutableObjectList;", "objectList", "<init>", "(Landroidx/collection/MutableObjectList;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ObjectListMutableList<T> implements List<T>, KMutableList {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MutableObjectList f3310b;

        public ObjectListMutableList(MutableObjectList<T> mutableObjectList) {
            mutableObjectList.getClass();
            this.f3310b = mutableObjectList;
        }

        @Override // java.util.List
        public final void add(int i2, Object obj) {
            int i3;
            MutableObjectList mutableObjectList = this.f3310b;
            if (i2 < 0 || i2 > (i3 = mutableObjectList.f3346b)) {
                mutableObjectList.q(i2);
                throw null;
            }
            int i4 = i3 + 1;
            Object[] objArr = mutableObjectList.f3345a;
            if (objArr.length < i4) {
                mutableObjectList.o(i4, objArr);
            }
            Object[] objArr2 = mutableObjectList.f3345a;
            int i5 = mutableObjectList.f3346b;
            if (i2 != i5) {
                ArraysKt.l(objArr2, objArr2, i2 + 1, i2, i5);
            }
            objArr2[i2] = obj;
            mutableObjectList.f3346b++;
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.f3310b;
            mutableObjectList.getClass();
            if (i2 < 0 || i2 > mutableObjectList.f3346b) {
                mutableObjectList.q(i2);
                throw null;
            }
            int i3 = 0;
            if (collection.isEmpty()) {
                return false;
            }
            int size = collection.size() + mutableObjectList.f3346b;
            Object[] objArr = mutableObjectList.f3345a;
            if (objArr.length < size) {
                mutableObjectList.o(size, objArr);
            }
            Object[] objArr2 = mutableObjectList.f3345a;
            if (i2 != mutableObjectList.f3346b) {
                ArraysKt.l(objArr2, objArr2, collection.size() + i2, i2, mutableObjectList.f3346b);
            }
            for (T t : collection) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                objArr2[i3 + i2] = t;
                i3 = i4;
            }
            mutableObjectList.f3346b = collection.size() + mutableObjectList.f3346b;
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            this.f3310b.k();
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f3310b.c(obj) >= 0;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.f3310b;
            mutableObjectList.getClass();
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (mutableObjectList.c(it.next()) < 0) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            ObjectListKt.a(i2, this);
            return this.f3310b.b(i2);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            return this.f3310b.c(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return this.f3310b.d();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            MutableObjectList mutableObjectList = this.f3310b;
            Object[] objArr = mutableObjectList.f3345a;
            int i2 = mutableObjectList.f3346b;
            if (obj == null) {
                for (int i3 = i2 - 1; -1 < i3; i3--) {
                    if (objArr[i3] == null) {
                        return i3;
                    }
                }
            } else {
                for (int i4 = i2 - 1; -1 < i4; i4--) {
                    if (obj.equals(objArr[i4])) {
                        return i4;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            ObjectListKt.a(i2, this);
            return this.f3310b.m(i2);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            Collection collection2 = collection;
            MutableObjectList mutableObjectList = this.f3310b;
            mutableObjectList.getClass();
            collection2.getClass();
            int i2 = mutableObjectList.f3346b;
            Iterator<T> it = collection2.iterator();
            while (it.hasNext()) {
                mutableObjectList.l(it.next());
            }
            return i2 != mutableObjectList.f3346b;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.f3310b;
            mutableObjectList.getClass();
            collection.getClass();
            int i2 = mutableObjectList.f3346b;
            Object[] objArr = mutableObjectList.f3345a;
            for (int i3 = i2 - 1; -1 < i3; i3--) {
                if (!collection.contains(objArr[i3])) {
                    mutableObjectList.m(i3);
                }
            }
            return i2 != mutableObjectList.f3346b;
        }

        @Override // java.util.List
        public final Object set(int i2, Object obj) {
            ObjectListKt.a(i2, this);
            return this.f3310b.p(i2, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.f3310b.f3346b;
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            ObjectListKt.b(i2, i3, this);
            return new SubList(this, i2, i3);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            return new MutableObjectListIterator(this, i2);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            return this.f3310b.l(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            this.f3310b.g(obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.f3310b;
            mutableObjectList.getClass();
            int i2 = mutableObjectList.f3346b;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                mutableObjectList.g(it.next());
            }
            return i2 != mutableObjectList.f3346b;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B%\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/collection/MutableObjectList$SubList;", "T", "", "list", "", "start", "end", "<init>", "(Ljava/util/List;II)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SubList<T> implements List<T>, KMutableList {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f3311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3312c;
        public int d;

        public SubList(List<T> list, int i2, int i3) {
            list.getClass();
            this.f3311b = list;
            this.f3312c = i2;
            this.d = i3;
        }

        @Override // java.util.List
        public final void add(int i2, Object obj) {
            this.f3311b.add(i2 + this.f3312c, obj);
            this.d++;
        }

        @Override // java.util.List
        public final boolean addAll(int i2, Collection collection) {
            collection.getClass();
            this.f3311b.addAll(i2 + this.f3312c, collection);
            this.d = collection.size() + this.d;
            return collection.size() > 0;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i2 = this.d - 1;
            int i3 = this.f3312c;
            if (i3 <= i2) {
                while (true) {
                    this.f3311b.remove(i2);
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
            for (int i3 = this.f3312c; i3 < i2; i3++) {
                if (Intrinsics.c(this.f3311b.get(i3), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            collection.getClass();
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
            ObjectListKt.a(i2, this);
            return this.f3311b.get(i2 + this.f3312c);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i2 = this.d;
            int i3 = this.f3312c;
            for (int i4 = i3; i4 < i2; i4++) {
                if (Intrinsics.c(this.f3311b.get(i4), obj)) {
                    return i4 - i3;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return this.d == this.f3312c;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i2 = this.d - 1;
            int i3 = this.f3312c;
            if (i3 > i2) {
                return -1;
            }
            while (!Intrinsics.c(this.f3311b.get(i2), obj)) {
                if (i2 == i3) {
                    return -1;
                }
                i2--;
            }
            return i2 - i3;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i2 = this.d;
            for (int i3 = this.f3312c; i3 < i2; i3++) {
                List list = this.f3311b;
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
            collection.getClass();
            int i2 = this.d;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i2 != this.d;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            int i2 = this.d;
            int i3 = i2 - 1;
            int i4 = this.f3312c;
            if (i4 <= i3) {
                while (true) {
                    List list = this.f3311b;
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
            ObjectListKt.a(i2, this);
            return this.f3311b.set(i2 + this.f3312c, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.d - this.f3312c;
        }

        @Override // java.util.List
        public final List subList(int i2, int i3) {
            ObjectListKt.b(i2, i3, this);
            return new SubList(this, i2, i3);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i2) {
            return new MutableObjectListIterator(this, i2);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i2 = this.d;
            this.d = i2 + 1;
            this.f3311b.add(i2, obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            collection.getClass();
            this.f3311b.addAll(this.d, collection);
            this.d = collection.size() + this.d;
            return collection.size() > 0;
        }

        @Override // java.util.List
        public final Object remove(int i2) {
            ObjectListKt.a(i2, this);
            Object objRemove = this.f3311b.remove(i2 + this.f3312c);
            this.d--;
            return objRemove;
        }
    }

    public MutableObjectList(int i2) {
        super(i2, null);
    }

    public MutableObjectList() {
        this(0, 1, null);
    }
}
