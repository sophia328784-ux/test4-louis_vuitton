package kotlinx.coroutines.internal;

import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0081@\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003\u0088\u0001\u0004\u0092\u0001\u0004\u0018\u00010\u0003¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/internal/SegmentOrClosed;", "Lkotlinx/coroutines/internal/Segment;", "S", "", "value", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
public abstract class SegmentOrClosed<S extends Segment<S>> {
    public static final Segment a(Object obj) {
        if (obj != ConcurrentLinkedListKt.f75102a) {
            obj.getClass();
            return (Segment) obj;
        }
        md.k("Does not contain segment");
        return null;
    }

    public static final boolean b(Object obj) {
        return obj == ConcurrentLinkedListKt.f75102a;
    }
}
