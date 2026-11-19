package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableSet;
import kotlin.sequences.SequencesKt;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/MutableOrderedSetWrapper;", "E", "Landroidx/collection/OrderedSetWrapper;", "", "Landroidx/collection/MutableOrderedScatterSet;", "parent", "<init>", "(Landroidx/collection/MutableOrderedScatterSet;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class MutableOrderedSetWrapper<E> extends OrderedSetWrapper<E> implements Set<E>, KMutableSet {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableOrderedScatterSet f3314c;

    /* JADX INFO: renamed from: androidx.collection.MutableOrderedSetWrapper$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010)\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/collection/MutableOrderedSetWrapper$iterator$1", "", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<Object>, KMutableIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3315b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f3316c;

        public AnonymousClass1() {
            this.f3316c = SequencesKt.o(new MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper.this, this, null));
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f3316c.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            return this.f3316c.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i2 = this.f3315b;
            if (i2 != -1) {
                MutableOrderedSetWrapper.this.f3314c.j(i2);
                this.f3315b = -1;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper(MutableOrderedScatterSet<E> mutableOrderedScatterSet) {
        super(mutableOrderedScatterSet);
        mutableOrderedScatterSet.getClass();
        this.f3314c = mutableOrderedScatterSet;
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        return this.f3314c.b(obj);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        Collection collection2 = collection;
        MutableOrderedScatterSet mutableOrderedScatterSet = this.f3314c;
        mutableOrderedScatterSet.getClass();
        collection2.getClass();
        int i2 = mutableOrderedScatterSet.g;
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            mutableOrderedScatterSet.h(it.next());
        }
        return i2 != mutableOrderedScatterSet.g;
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final void clear() {
        this.f3314c.d();
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new AnonymousClass1();
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return this.f3314c.i(obj);
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int iNumberOfTrailingZeros;
        collection.getClass();
        Collection collection2 = collection;
        MutableOrderedScatterSet mutableOrderedScatterSet = this.f3314c;
        mutableOrderedScatterSet.getClass();
        collection2.getClass();
        int i2 = mutableOrderedScatterSet.g;
        Iterator it = collection2.iterator();
        while (true) {
            int i3 = 1;
            int i4 = 0;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            int iHashCode = (next != null ? next.hashCode() : 0) * (-862048943);
            int i5 = iHashCode ^ (iHashCode << 16);
            int i6 = i5 & CertificateBody.profileType;
            int i7 = mutableOrderedScatterSet.f3354f;
            int i8 = (i5 >>> 7) & i7;
            while (true) {
                long[] jArr = mutableOrderedScatterSet.f3350a;
                int i9 = i8 >> 3;
                int i10 = (i8 & 7) << 3;
                long j2 = ((jArr[i9 + i3] << (64 - i10)) & ((-i10) >> 63)) | (jArr[i9] >>> i10);
                long j3 = (((long) i6) * 72340172838076673L) ^ j2;
                long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L);
                while (j4 != 0) {
                    iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i8) & i7;
                    int i11 = i3;
                    if (Intrinsics.c(mutableOrderedScatterSet.f3351b[iNumberOfTrailingZeros], next)) {
                        break;
                    }
                    j4 &= j4 - 1;
                    i3 = i11;
                }
                int i12 = i3;
                if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                    iNumberOfTrailingZeros = -1;
                    break;
                }
                i4 += 8;
                i8 = (i8 + i4) & i7;
                i3 = i12;
            }
            if (iNumberOfTrailingZeros >= 0) {
                mutableOrderedScatterSet.j(iNumberOfTrailingZeros);
            }
        }
        return i2 != mutableOrderedScatterSet.g;
    }

    @Override // androidx.collection.OrderedSetWrapper, java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        return this.f3314c.k(collection);
    }
}
