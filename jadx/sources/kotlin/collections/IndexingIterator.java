package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/collections/IndexingIterator;", "T", "", "Lkotlin/collections/IndexedValue;", "iterator", "<init>", "(Ljava/util/Iterator;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class IndexingIterator<T> implements Iterator<IndexedValue<? extends T>>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f71774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f71775c;

    public IndexingIterator(Iterator<? extends T> it) {
        it.getClass();
        this.f71774b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f71774b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f71775c;
        this.f71775c = i2 + 1;
        if (i2 >= 0) {
            return new IndexedValue(i2, this.f71774b.next());
        }
        CollectionsKt.t0();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
