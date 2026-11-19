package androidx.compose.ui.platform;

import androidx.compose.runtime.MonotonicFrameClockKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class InfiniteAnimationPolicyKt {
    public static final Object a(Continuation continuation, Function1 function1) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) continuation.getF75096c().get(InfiniteAnimationPolicy.Key.f10092b);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.a(continuation.getF75096c()).c(continuation, function1);
        }
        new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(null, function1);
        return infiniteAnimationPolicy.t();
    }
}
