package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class MonotonicFrameClockKt$withFrameMillis$2 implements Function1<Long, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f8021b;

    public MonotonicFrameClockKt$withFrameMillis$2(Function1<? super Long, Object> function1) {
        this.f8021b = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return this.f8021b.invoke(Long.valueOf(((Number) obj).longValue() / 1000000));
    }
}
