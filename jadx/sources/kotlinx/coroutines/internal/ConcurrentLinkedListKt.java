package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a?\u0010\t\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0003H\u0082\b¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/atomicfu/AtomicInt;", "", "delta", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "cur", "", "condition", "addConditionally", "(Lkotlinx/atomicfu/AtomicInt;ILkotlin/jvm/functions/Function1;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ConcurrentLinkedListKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Symbol f75102a = new Symbol("CLOSED");

    public static final Object a(Segment segment, long j2, Function2 function2) {
        while (true) {
            if (segment.f75137f >= j2 && !segment.g()) {
                return segment;
            }
            Object objE = segment.e();
            Symbol symbol = f75102a;
            if (objE == symbol) {
                return symbol;
            }
            Segment segment2 = (Segment) ((ConcurrentLinkedListNode) objE);
            if (segment2 == null) {
                segment2 = (Segment) function2.invoke(Long.valueOf(segment.f75137f + 1), segment);
                if (segment.j(segment2)) {
                    if (segment.g()) {
                        segment.i();
                    }
                }
            }
            segment = segment2;
        }
    }
}
