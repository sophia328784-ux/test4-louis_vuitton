package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CompositionErrorContextImpl f8115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RememberedCoroutineScope f8116c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key, CompositionErrorContextImpl compositionErrorContextImpl, RememberedCoroutineScope rememberedCoroutineScope) {
        super(key);
        this.f8115b = compositionErrorContextImpl;
        this.f8116c = rememberedCoroutineScope;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void q(Throwable th, CoroutineContext coroutineContext) throws Throwable {
        CompositionErrorContextImpl compositionErrorContextImpl = this.f8115b;
        RememberedCoroutineScope rememberedCoroutineScope = this.f8116c;
        compositionErrorContextImpl.d(rememberedCoroutineScope, th);
        CoroutineContext coroutineContext2 = rememberedCoroutineScope.f8113c;
        CoroutineExceptionHandler.Key key = CoroutineExceptionHandler.Key.f74649b;
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext2.get(key);
        if (coroutineExceptionHandler != null) {
            coroutineExceptionHandler.q(th, coroutineContext);
            return;
        }
        CoroutineExceptionHandler coroutineExceptionHandler2 = (CoroutineExceptionHandler) rememberedCoroutineScope.f8112b.get(key);
        if (coroutineExceptionHandler2 == null) {
            throw th;
        }
        coroutineExceptionHandler2.q(th, coroutineContext);
    }
}
