package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class InfiniteAnimationPolicyKt {
    public static final Object a(Function1 function1, ContinuationImpl continuationImpl) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) continuationImpl.getContext().get(InfiniteAnimationPolicy.Key.f10092b);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.a(continuationImpl.getContext()).c(continuationImpl, function1);
        }
        new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(null, function1);
        return infiniteAnimationPolicy.t();
    }
}
