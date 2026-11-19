package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.et;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ListenableFutureKt {
    public static ListenableFuture a(final CoroutineContext coroutineContext, final Function2 function2) {
        final CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
        coroutineContext.getClass();
        coroutineStart.getClass();
        return CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                Job.Key key = Job.Key.f74677b;
                CoroutineContext coroutineContext2 = coroutineContext;
                completer.a(new et((Job) coroutineContext2.get(key), 18), DirectExecutor.INSTANCE);
                return BuildersKt.c(CoroutineScopeKt.a(coroutineContext2), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, completer, null), 1);
            }
        });
    }
}
