package kotlin.collections.builders;

import defpackage.b21;
import defpackage.md;
import defpackage.v7;
import defpackage.x1;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0000\u0018\u0000 \u000f*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003\u0010\u0011\u0012B\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", "<init>", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "e", "Companion", "Itr", "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Companion f71794e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ListBuilder f71795f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f71796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f71797c;
    public boolean d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Companion;", "", "Lkotlin/collections/builders/ListBuilder;", "", "Empty", "Lkotlin/collections/builders/ListBuilder;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", "E", "", "Lkotlin/collections/builders/ListBuilder;", "list", "", "index", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Itr<E> implements ListIterator<E>, KMutableListIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListBuilder f71805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f71806c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f71807e;

        public Itr(ListBuilder<E> listBuilder, int i2) {
            listBuilder.getClass();
            this.f71805b = listBuilder;
            this.f71806c = i2;
            this.d = -1;
            this.f71807e = ((AbstractList) listBuilder).modCount;
        }

        public final void a() {
            if (((AbstractList) this.f71805b).modCount == this.f71807e) {
                return;
            }
            v7.c();
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            a();
            int i2 = this.f71806c;
            this.f71806c = i2 + 1;
            ListBuilder listBuilder = this.f71805b;
            listBuilder.add(i2, obj);
            this.d = -1;
            this.f71807e = ((AbstractList) listBuilder).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f71806c < this.f71805b.f71797c;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f71806c > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            a();
            int i2 = this.f71806c;
            ListBuilder listBuilder = this.f71805b;
            if (i2 >= listBuilder.f71797c) {
                b21.x();
                return null;
            }
            this.f71806c = i2 + 1;
            this.d = i2;
            return listBuilder.f71796b[i2];
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f71806c;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            a();
            int i2 = this.f71806c;
            if (i2 <= 0) {
                b21.x();
                return null;
            }
            int i3 = i2 - 1;
            this.f71806c = i3;
            this.d = i3;
            return this.f71805b.f71796b[i3];
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f71806c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            a();
            int i2 = this.d;
            if (i2 == -1) {
                md.k("Call next() or previous() before removing element from the iterator.");
                return;
            }
            ListBuilder listBuilder = this.f71805b;
            listBuilder.h(i2);
            this.f71806c = this.d;
            this.d = -1;
            this.f71807e = ((AbstractList) listBuilder).modCount;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            a();
            int i2 = this.d;
            if (i2 != -1) {
                this.f71805b.set(i2, obj);
            } else {
                md.k("Call next() or previous() before replacing element from the iterator.");
            }
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.d = true;
        f71795f = listBuilder;
    }

    public ListBuilder(int i2) {
        if (i2 >= 0) {
            this.f71796b = new Object[i2];
        } else {
            md.n("capacity must be non-negative.");
            throw null;
        }
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.d) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        o();
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.c(i2, i3);
        ((AbstractList) this).modCount++;
        p(i2, 1);
        this.f71796b[i2] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        collection.getClass();
        o();
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.c(i2, i3);
        int size = collection.size();
        m(i2, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        o();
        r(0, this.f71797c);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.f71796b;
            int i2 = this.f71797c;
            if (i2 == list.size()) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (Intrinsics.c(objArr[i3], list.get(i3))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF74615i() {
        return this.f71797c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.b(i2, i3);
        return this.f71796b[i2];
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object h(int i2) {
        o();
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.b(i2, i3);
        return q(i2);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f71796b;
        int i2 = this.f71797c;
        int iHashCode = 1;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i2 = 0; i2 < this.f71797c; i2++) {
            if (Intrinsics.c(this.f71796b[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f71797c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i2 = this.f71797c - 1; i2 >= 0; i2--) {
            if (Intrinsics.c(this.f71796b[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.c(i2, i3);
        return new Itr(this, i2);
    }

    public final void m(int i2, Collection collection, int i3) {
        ((AbstractList) this).modCount++;
        p(i2, i3);
        Iterator<E> it = collection.iterator();
        for (int i4 = 0; i4 < i3; i4++) {
            this.f71796b[i2 + i4] = it.next();
        }
    }

    public final void n(int i2, Object obj) {
        ((AbstractList) this).modCount++;
        p(i2, 1);
        this.f71796b[i2] = obj;
    }

    public final void o() {
        if (this.d) {
            x1.i();
        }
    }

    public final void p(int i2, int i3) {
        int i4 = this.f71797c + i3;
        if (i4 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f71796b;
        if (i4 > objArr.length) {
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int length = objArr.length;
            companion.getClass();
            int iE = kotlin.collections.AbstractList.Companion.e(length, i4);
            Object[] objArr2 = this.f71796b;
            objArr2.getClass();
            this.f71796b = Arrays.copyOf(objArr2, iE);
        }
        Object[] objArr3 = this.f71796b;
        ArraysKt.l(objArr3, objArr3, i2 + i3, i2, this.f71797c);
        this.f71797c += i3;
    }

    public final Object q(int i2) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f71796b;
        Object obj = objArr[i2];
        ArraysKt.l(objArr, objArr, i2, i2 + 1, this.f71797c);
        Object[] objArr2 = this.f71796b;
        int i3 = this.f71797c - 1;
        objArr2.getClass();
        objArr2[i3] = null;
        this.f71797c--;
        return obj;
    }

    public final void r(int i2, int i3) {
        if (i3 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f71796b;
        ArraysKt.l(objArr, objArr, i2, i2 + i3, this.f71797c);
        Object[] objArr2 = this.f71796b;
        int i4 = this.f71797c;
        ListBuilderKt.b(i4 - i3, i4, objArr2);
        this.f71797c -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        o();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            h(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        o();
        return s(0, this.f71797c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        o();
        return s(0, this.f71797c, collection, true) > 0;
    }

    public final int s(int i2, int i3, Collection collection, boolean z) {
        Object[] objArr;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            objArr = this.f71796b;
            if (i4 >= i3) {
                break;
            }
            int i6 = i2 + i4;
            if (collection.contains(objArr[i6]) == z) {
                Object[] objArr2 = this.f71796b;
                i4++;
                objArr2[i5 + i2] = objArr2[i6];
                i5++;
            } else {
                i4++;
            }
        }
        int i7 = i3 - i5;
        ArraysKt.l(objArr, objArr, i2 + i5, i3 + i2, this.f71797c);
        Object[] objArr3 = this.f71796b;
        int i8 = this.f71797c;
        ListBuilderKt.b(i8 - i7, i8, objArr3);
        if (i7 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f71797c -= i7;
        return i7;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        o();
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i3 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.b(i2, i3);
        Object[] objArr = this.f71796b;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i2, int i3) {
        kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
        int i4 = this.f71797c;
        companion.getClass();
        kotlin.collections.AbstractList.Companion.d(i2, i3, i4);
        return new BuilderSubList(this.f71796b, i2, i3 - i2, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i2 = this.f71797c;
        Object[] objArr2 = this.f71796b;
        if (length < i2) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr2, 0, i2, objArr.getClass());
            objArrCopyOfRange.getClass();
            return objArrCopyOfRange;
        }
        ArraysKt.l(objArr2, objArr, 0, 0, i2);
        int i3 = this.f71797c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return ListBuilderKt.a(this.f71796b, 0, this.f71797c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    public /* synthetic */ ListBuilder(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 10 : i2);
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001\u001aBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", "offset", "length", "parent", "Lkotlin/collections/builders/ListBuilder;", "root", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "Itr", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object[] f71798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f71799c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final BuilderSubList f71800e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ListBuilder f71801f;

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;", "E", "", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "list", "", "index", "<init>", "(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Itr<E> implements ListIterator<E>, KMutableListIterator {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final BuilderSubList f71802b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f71803c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f71804e;

            public Itr(BuilderSubList<E> builderSubList, int i2) {
                builderSubList.getClass();
                this.f71802b = builderSubList;
                this.f71803c = i2;
                this.d = -1;
                this.f71804e = ((AbstractList) builderSubList).modCount;
            }

            public final void a() {
                if (((AbstractList) this.f71802b.f71801f).modCount == this.f71804e) {
                    return;
                }
                v7.c();
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                a();
                int i2 = this.f71803c;
                this.f71803c = i2 + 1;
                BuilderSubList builderSubList = this.f71802b;
                builderSubList.add(i2, obj);
                this.d = -1;
                this.f71804e = ((AbstractList) builderSubList).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.f71803c < this.f71802b.d;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.f71803c > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final Object next() {
                a();
                int i2 = this.f71803c;
                BuilderSubList builderSubList = this.f71802b;
                if (i2 >= builderSubList.d) {
                    b21.x();
                    return null;
                }
                this.f71803c = i2 + 1;
                this.d = i2;
                return builderSubList.f71798b[builderSubList.f71799c + i2];
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.f71803c;
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                a();
                int i2 = this.f71803c;
                if (i2 <= 0) {
                    b21.x();
                    return null;
                }
                int i3 = i2 - 1;
                this.f71803c = i3;
                this.d = i3;
                BuilderSubList builderSubList = this.f71802b;
                return builderSubList.f71798b[builderSubList.f71799c + i3];
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.f71803c - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                a();
                int i2 = this.d;
                if (i2 == -1) {
                    md.k("Call next() or previous() before removing element from the iterator.");
                    return;
                }
                BuilderSubList builderSubList = this.f71802b;
                builderSubList.h(i2);
                this.f71803c = this.d;
                this.d = -1;
                this.f71804e = ((AbstractList) builderSubList).modCount;
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                a();
                int i2 = this.d;
                if (i2 != -1) {
                    this.f71802b.set(i2, obj);
                } else {
                    md.k("Call next() or previous() before replacing element from the iterator.");
                }
            }
        }

        public BuilderSubList(E[] eArr, int i2, int i3, BuilderSubList<E> builderSubList, ListBuilder<E> listBuilder) {
            eArr.getClass();
            listBuilder.getClass();
            this.f71798b = eArr;
            this.f71799c = i2;
            this.d = i3;
            this.f71800e = builderSubList;
            this.f71801f = listBuilder;
            ((AbstractList) this).modCount = ((AbstractList) listBuilder).modCount;
        }

        private final void readObject(ObjectInputStream input) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final Object writeReplace() throws NotSerializableException {
            if (this.f71801f.d) {
                return new SerializedCollection(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i2, Object obj) {
            p();
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.c(i2, i3);
            n(this.f71799c + i2, obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int i2, Collection collection) {
            collection.getClass();
            p();
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.c(i2, i3);
            int size = collection.size();
            m(this.f71799c + i2, collection, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            p();
            o();
            r(this.f71799c, this.d);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            o();
            if (obj == this) {
                return true;
            }
            if (obj instanceof List) {
                List list = (List) obj;
                Object[] objArr = this.f71798b;
                int i2 = this.d;
                if (i2 == list.size()) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        if (Intrinsics.c(objArr[this.f71799c + i3], list.get(i3))) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // kotlin.collections.AbstractMutableList
        /* JADX INFO: renamed from: f */
        public final int getF74615i() {
            o();
            return this.d;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.b(i2, i3);
            return this.f71798b[this.f71799c + i2];
        }

        @Override // kotlin.collections.AbstractMutableList
        public final Object h(int i2) {
            p();
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.b(i2, i3);
            return q(this.f71799c + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            o();
            Object[] objArr = this.f71798b;
            int i2 = this.d;
            int iHashCode = 1;
            for (int i3 = 0; i3 < i2; i3++) {
                Object obj = objArr[this.f71799c + i3];
                iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            o();
            for (int i2 = 0; i2 < this.d; i2++) {
                if (Intrinsics.c(this.f71798b[this.f71799c + i2], obj)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            o();
            return this.d == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            o();
            for (int i2 = this.d - 1; i2 >= 0; i2--) {
                if (Intrinsics.c(this.f71798b[this.f71799c + i2], obj)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.c(i2, i3);
            return new Itr(this, i2);
        }

        public final void m(int i2, Collection collection, int i3) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.f71801f;
            BuilderSubList builderSubList = this.f71800e;
            if (builderSubList != null) {
                builderSubList.m(i2, collection, i3);
            } else {
                ListBuilder listBuilder2 = ListBuilder.f71795f;
                listBuilder.m(i2, collection, i3);
            }
            this.f71798b = listBuilder.f71796b;
            this.d += i3;
        }

        public final void n(int i2, Object obj) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.f71801f;
            BuilderSubList builderSubList = this.f71800e;
            if (builderSubList != null) {
                builderSubList.n(i2, obj);
            } else {
                ListBuilder listBuilder2 = ListBuilder.f71795f;
                listBuilder.n(i2, obj);
            }
            this.f71798b = listBuilder.f71796b;
            this.d++;
        }

        public final void o() {
            if (((AbstractList) this.f71801f).modCount == ((AbstractList) this).modCount) {
                return;
            }
            v7.c();
        }

        public final void p() {
            if (this.f71801f.d) {
                x1.i();
            }
        }

        public final Object q(int i2) {
            Object objQ;
            ((AbstractList) this).modCount++;
            BuilderSubList builderSubList = this.f71800e;
            if (builderSubList != null) {
                objQ = builderSubList.q(i2);
            } else {
                ListBuilder listBuilder = ListBuilder.f71795f;
                objQ = this.f71801f.q(i2);
            }
            this.d--;
            return objQ;
        }

        public final void r(int i2, int i3) {
            if (i3 > 0) {
                ((AbstractList) this).modCount++;
            }
            BuilderSubList builderSubList = this.f71800e;
            if (builderSubList != null) {
                builderSubList.r(i2, i3);
            } else {
                ListBuilder listBuilder = ListBuilder.f71795f;
                this.f71801f.r(i2, i3);
            }
            this.d -= i3;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            p();
            o();
            int iIndexOf = indexOf(obj);
            if (iIndexOf >= 0) {
                h(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            p();
            o();
            return s(this.f71799c, this.d, collection, false) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            p();
            o();
            return s(this.f71799c, this.d, collection, true) > 0;
        }

        public final int s(int i2, int i3, Collection collection, boolean z) {
            int iS;
            BuilderSubList builderSubList = this.f71800e;
            if (builderSubList != null) {
                iS = builderSubList.s(i2, i3, collection, z);
            } else {
                ListBuilder listBuilder = ListBuilder.f71795f;
                iS = this.f71801f.s(i2, i3, collection, z);
            }
            if (iS > 0) {
                ((AbstractList) this).modCount++;
            }
            this.d -= iS;
            return iS;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i2, Object obj) {
            p();
            o();
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i3 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.b(i2, i3);
            Object[] objArr = this.f71798b;
            int i4 = this.f71799c + i2;
            Object obj2 = objArr[i4];
            objArr[i4] = obj;
            return obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i2, int i3) {
            kotlin.collections.AbstractList.Companion companion = kotlin.collections.AbstractList.INSTANCE;
            int i4 = this.d;
            companion.getClass();
            kotlin.collections.AbstractList.Companion.d(i2, i3, i4);
            return new BuilderSubList(this.f71798b, this.f71799c + i2, i3 - i2, this, this.f71801f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            o();
            int length = objArr.length;
            int i2 = this.d;
            Object[] objArr2 = this.f71798b;
            int i3 = this.f71799c;
            if (length < i2) {
                Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr2, i3, i2 + i3, objArr.getClass());
                objArrCopyOfRange.getClass();
                return objArrCopyOfRange;
            }
            ArraysKt.l(objArr2, objArr, 0, i3, i2 + i3);
            int i4 = this.d;
            if (i4 < objArr.length) {
                objArr[i4] = null;
            }
            return objArr;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            o();
            return ListBuilderKt.a(this.f71798b, this.f71799c, this.d, this);
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            p();
            o();
            n(this.f71799c + this.d, obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(Collection collection) {
            collection.getClass();
            p();
            o();
            int size = collection.size();
            m(this.f71799c + this.d, collection, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray() {
            o();
            Object[] objArr = this.f71798b;
            int i2 = this.d;
            int i3 = this.f71799c;
            return ArraysKt.q(i3, i2 + i3, objArr);
        }
    }

    public ListBuilder() {
        this(0, 1, null);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        o();
        int i2 = this.f71797c;
        ((AbstractList) this).modCount++;
        p(i2, 1);
        this.f71796b[i2] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        o();
        int size = collection.size();
        m(this.f71797c, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return ArraysKt.q(0, this.f71797c, this.f71796b);
    }
}
