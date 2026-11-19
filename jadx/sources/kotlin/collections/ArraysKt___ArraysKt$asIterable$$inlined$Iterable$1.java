package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u001c\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1 implements Iterable<Object>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object[] f71763b;

    public ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(Object[] objArr) {
        this.f71763b = objArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return ArrayIteratorKt.a(this.f71763b);
    }
}
