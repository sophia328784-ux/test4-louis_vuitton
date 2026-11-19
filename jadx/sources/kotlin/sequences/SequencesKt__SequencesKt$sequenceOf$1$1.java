package kotlin.sequences;

import defpackage.b21;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010(\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SequencesKt__SequencesKt$sequenceOf$1$1 implements Iterator<Object>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f74482b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f74483c;

    public SequencesKt__SequencesKt$sequenceOf$1$1(Object obj) {
        this.f74483c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f74482b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f74482b) {
            this.f74482b = false;
            return this.f74483c;
        }
        b21.x();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
