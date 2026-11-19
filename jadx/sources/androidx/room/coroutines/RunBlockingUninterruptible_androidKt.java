package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class RunBlockingUninterruptible_androidKt {
    public static final Object a(Function2 function2) {
        Thread.interrupted();
        return BuildersKt.e(EmptyCoroutineContext.f71840b, new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(function2, null));
    }
}
