package kotlin.collections;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.az;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.o60;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\b\b'\u0018\u0000 \u0006*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0004\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u000b"}, d2 = {"Lkotlin/collections/AbstractList;", "E", "Lkotlin/collections/AbstractCollection;", "", "<init>", "()V", NBSSpanMetricUnit.Bit, "SubList", "IteratorImpl", "ListIteratorImpl", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/collections/AbstractList$Companion;", "", "", "maxArraySize", "I", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                no0.s(fc.p(i2, i3, "startIndex: ", ", endIndex: ", ", size: "), i4);
            } else {
                if (i2 <= i3) {
                    return;
                }
                md.n(o60.h(i2, i3, "startIndex: ", " > endIndex: "));
            }
        }

        public static void b(int i2, int i3) {
            if (i2 < 0 || i2 >= i3) {
                az.v(o60.h(i2, i3, "index: ", ", size: "));
            }
        }

        public static void c(int i2, int i3) {
            if (i2 < 0 || i2 > i3) {
                az.v(o60.h(i2, i3, "index: ", ", size: "));
            }
        }

        public static void d(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                no0.s(fc.p(i2, i3, "fromIndex: ", ", toIndex: ", ", size: "), i4);
            } else {
                if (i2 <= i3) {
                    return;
                }
                md.n(o60.h(i2, i3, "fromIndex: ", " > toIndex: "));
            }
        }

        public static int e(int i2, int i3) {
            int i4 = i2 + (i2 >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                return i3 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            return i4;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\u0092\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/collections/AbstractList$IteratorImpl;", "", "<init>", "(Lkotlin/collections/AbstractList;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public class IteratorImpl implements Iterator<E>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f71745b;

        public IteratorImpl() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f71745b < AbstractList.this.getF74603e();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                b21.x();
                return null;
            }
            int i2 = this.f71745b;
            this.f71745b = i2 + 1;
            return AbstractList.this.get(i2);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0010\b\n\u0002\b\u0004\b\u0092\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/collections/AbstractList$ListIteratorImpl;", "Lkotlin/collections/AbstractList$IteratorImpl;", "Lkotlin/collections/AbstractList;", "", "", "index", "<init>", "(Lkotlin/collections/AbstractList;I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public class ListIteratorImpl extends AbstractList<E>.IteratorImpl implements ListIterator<E>, KMappedMarker {
        public ListIteratorImpl(int i2) {
            super();
            Companion companion = AbstractList.INSTANCE;
            int f71748e = AbstractList.this.getF74603e();
            companion.getClass();
            Companion.c(i2, f71748e);
            this.f71745b = i2;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f71745b > 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f71745b;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            if (!hasPrevious()) {
                b21.x();
                return null;
            }
            int i2 = this.f71745b - 1;
            this.f71745b = i2;
            return AbstractList.this.get(i2);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f71745b - 1;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u0004B%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/collections/AbstractList$SubList;", "E", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "list", "", "fromIndex", "toIndex", "<init>", "(Lkotlin/collections/AbstractList;II)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class SubList<E> extends AbstractList<E> implements RandomAccess {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AbstractList f71747c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f71748e;

        public SubList(AbstractList<? extends E> abstractList, int i2, int i3) {
            abstractList.getClass();
            this.f71747c = abstractList;
            this.d = i2;
            Companion companion = AbstractList.INSTANCE;
            int f71748e = abstractList.getF74603e();
            companion.getClass();
            Companion.d(i2, i3, f71748e);
            this.f71748e = i3 - i2;
        }

        @Override // kotlin.collections.AbstractCollection
        /* JADX INFO: renamed from: f, reason: from getter */
        public final int getF74603e() {
            return this.f71748e;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final Object get(int i2) {
            AbstractList.INSTANCE.getClass();
            Companion.b(i2, this.f71748e);
            return this.f71747c.get(this.d + i2);
        }

        @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
        public final List subList(int i2, int i3) {
            AbstractList.INSTANCE.getClass();
            Companion.d(i2, i3, this.f71748e);
            int i4 = this.d;
            return new SubList(this.f71747c, i2 + i4, i4 + i3);
        }
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        INSTANCE.getClass();
        if (size() == collection.size()) {
            Iterator<E> it = collection.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.c(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    public abstract Object get(int i2);

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        INSTANCE.getClass();
        Iterator<E> it = iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            E next = it.next();
            iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
        }
        return iHashCode;
    }

    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (Intrinsics.c(it.next(), obj)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new IteratorImpl();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.c(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator listIterator() {
        return new ListIteratorImpl(0);
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Object set(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public List subList(int i2, int i3) {
        return new SubList(this, i2, i3);
    }

    public ListIterator listIterator(int i2) {
        return new ListIteratorImpl(i2);
    }
}
