package coil3.compose.internal;

import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class DeferredDispatchKt {
    public static final Job a(CoroutineScope coroutineScope, Function2 function2) {
        CoroutineContext f8068c = coroutineScope.getF50528e();
        MeasurePolicy measurePolicy = UtilsKt.f21339a;
        CoroutineContext.Element element = f8068c.get(ContinuationInterceptor.INSTANCE);
        CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
        return (coroutineDispatcher == null || coroutineDispatcher.equals(Dispatchers.f74660b)) ? BuildersKt.b(coroutineScope, Dispatchers.f74660b, CoroutineStart.UNDISPATCHED, function2) : BuildersKt.b(CoroutineScopeKt.a(new DeferredDispatchCoroutineContext(coroutineScope.getF50528e())), new DeferredDispatchCoroutineDispatcher(coroutineDispatcher), CoroutineStart.UNDISPATCHED, function2);
    }
}
