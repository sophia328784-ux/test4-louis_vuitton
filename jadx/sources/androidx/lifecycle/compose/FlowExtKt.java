package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-runtime-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FlowExtKt {
    public static final MutableState a(Flow flow, Object obj, Composer composer) {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a);
        Lifecycle.State state = Lifecycle.State.STARTED;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return b(flow, obj, lifecycleOwner.getD(), state, emptyCoroutineContext, composer, 0);
    }

    public static final MutableState b(Flow flow, Object obj, Lifecycle lifecycle, Lifecycle.State state, CoroutineContext coroutineContext, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = {flow, lifecycle, state, coroutineContext};
        boolean zY = ((((i2 & 7168) ^ 3072) > 2048 && composer.d(state.ordinal())) || (i2 & 3072) == 2048) | composer.y(lifecycle) | composer.y(coroutineContext) | composer.y(flow);
        Object objX = composer.x();
        if (zY || objX == Composer.Companion.f7939a) {
            FlowExtKt$collectAsStateWithLifecycle$1$1 flowExtKt$collectAsStateWithLifecycle$1$1 = new FlowExtKt$collectAsStateWithLifecycle$1$1(lifecycle, state, coroutineContext, flow, null);
            composer.q(flowExtKt$collectAsStateWithLifecycle$1$1);
            objX = flowExtKt$collectAsStateWithLifecycle$1$1;
        }
        return SnapshotStateKt.j(obj, objArr, (Function2) objX, composer);
    }

    public static final MutableState c(StateFlow stateFlow, Lifecycle.State state, Composer composer, int i2, int i3) {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a);
        if ((i3 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i4 = i2 & 14;
        int i5 = i2 << 3;
        return b(stateFlow, stateFlow.getValue(), lifecycleOwner.getD(), state2, emptyCoroutineContext, composer, i4 | (i5 & 7168) | (i5 & 57344));
    }
}
