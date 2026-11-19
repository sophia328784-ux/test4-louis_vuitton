package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FlowExtKt {
    public static final Flow a(SharedFlow sharedFlow, Lifecycle lifecycle, Lifecycle.State state) {
        sharedFlow.getClass();
        lifecycle.getClass();
        state.getClass();
        return FlowKt.d(new FlowExtKt$flowWithLifecycle$1(lifecycle, state, sharedFlow, null));
    }
}
