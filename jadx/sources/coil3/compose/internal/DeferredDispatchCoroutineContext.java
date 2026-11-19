package coil3.compose.internal;

import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/compose/internal/DeferredDispatchCoroutineContext;", "Lcoil3/compose/internal/ForwardingCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class DeferredDispatchCoroutineContext extends ForwardingCoroutineContext {
    public DeferredDispatchCoroutineContext(CoroutineContext coroutineContext) {
        super(coroutineContext);
    }

    @Override // coil3.compose.internal.ForwardingCoroutineContext
    public final ForwardingCoroutineContext a(ForwardingCoroutineContext forwardingCoroutineContext, CoroutineContext coroutineContext) {
        MeasurePolicy measurePolicy = UtilsKt.f21339a;
        ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
        CoroutineContext.Element element = forwardingCoroutineContext.get(companion);
        CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
        CoroutineContext.Element element2 = coroutineContext.get(companion);
        CoroutineDispatcher coroutineDispatcher2 = element2 instanceof CoroutineDispatcher ? (CoroutineDispatcher) element2 : null;
        if ((coroutineDispatcher instanceof DeferredDispatchCoroutineDispatcher) && coroutineDispatcher != coroutineDispatcher2) {
            ((DeferredDispatchCoroutineDispatcher) coroutineDispatcher).f21332c = 0;
        }
        return new DeferredDispatchCoroutineContext(coroutineContext);
    }
}
