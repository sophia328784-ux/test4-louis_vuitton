package kotlin.jvm.internal;

import defpackage.zy0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/jvm/internal/ArrayIterator;", "T", "", "", "array", "<init>", "([Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ArrayIterator<T> implements Iterator<T>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f71901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f71902c;

    public ArrayIterator(T[] tArr) {
        tArr.getClass();
        this.f71901b = tArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f71902c < this.f71901b.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            Object[] objArr = this.f71901b;
            int i2 = this.f71902c;
            this.f71902c = i2 + 1;
            return objArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f71902c--;
            zy0.c(e2.getMessage());
            return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
