package kotlin.collections;

import defpackage.b21;
import defpackage.fc;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\n\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "", "buffer", "", "filledSize", "<init>", "([Ljava/lang/Object;I)V", "capacity", "(I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f71782c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f71783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f71784f;

    public RingBuffer(Object[] objArr, int i2) {
        objArr.getClass();
        this.f71782c = objArr;
        if (i2 < 0) {
            b21.n(pq0.k(i2, "ring buffer filled size should not be negative but it is "));
            throw null;
        }
        if (i2 > objArr.length) {
            b21.v(fc.q(i2, "ring buffer filled size: ", " cannot be larger than the buffer size: "), objArr.length);
            throw null;
        }
        this.d = objArr.length;
        this.f71784f = i2;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF71784f() {
        return this.f71784f;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.f71784f;
        companion.getClass();
        AbstractList.Companion.b(i2, i3);
        return this.f71782c[(this.f71783e + i2) % this.d];
    }

    public final void h(int i2) {
        if (i2 < 0) {
            b21.n(pq0.k(i2, "n shouldn't be negative but it is "));
            return;
        }
        if (i2 > this.f71784f) {
            b21.v(fc.q(i2, "n shouldn't be greater than the buffer size: n = ", ", size = "), this.f71784f);
            return;
        }
        if (i2 > 0) {
            int i3 = this.f71783e;
            int i4 = this.d;
            int i5 = (i3 + i2) % i4;
            Object[] objArr = this.f71782c;
            if (i3 > i5) {
                ArraysKt.r(objArr, i3, i4, null);
                Arrays.fill(objArr, 0, i5, (Object) null);
            } else {
                ArraysKt.r(objArr, i3, i5, null);
            }
            this.f71783e = i5;
            this.f71784f -= i2;
        }
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new AbstractIterator<Object>() { // from class: kotlin.collections.RingBuffer.iterator.1
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f71785e;

            {
                this.d = RingBuffer.this.f71784f;
                this.f71785e = RingBuffer.this.f71783e;
            }

            @Override // kotlin.collections.AbstractIterator
            public final void a() {
                int i2 = this.d;
                if (i2 == 0) {
                    this.f71742b = 2;
                    return;
                }
                RingBuffer ringBuffer = RingBuffer.this;
                Object[] objArr = ringBuffer.f71782c;
                int i3 = this.f71785e;
                this.f71743c = objArr[i3];
                this.f71742b = 1;
                this.f71785e = (i3 + 1) % ringBuffer.d;
                this.d = i2 - 1;
            }
        };
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] objArr2;
        objArr.getClass();
        int length = objArr.length;
        int i2 = this.f71784f;
        if (length < i2) {
            objArr = Arrays.copyOf(objArr, i2);
        }
        int i3 = this.f71784f;
        int i4 = this.f71783e;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            objArr2 = this.f71782c;
            if (i6 >= i3 || i4 >= this.d) {
                break;
            }
            objArr[i6] = objArr2[i4];
            i6++;
            i4++;
        }
        while (i6 < i3) {
            objArr[i6] = objArr2[i5];
            i6++;
            i5++;
        }
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    public RingBuffer(int i2) {
        this(new Object[i2], 0);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[getF71784f()]);
    }
}
