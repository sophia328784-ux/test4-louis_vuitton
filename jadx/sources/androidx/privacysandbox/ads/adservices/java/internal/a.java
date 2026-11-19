package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Deferred f19051b;

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(final CallbackToFutureAdapter.Completer completer) {
        final Deferred deferred = this.f19051b;
        deferred.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable th = (Throwable) obj;
                CallbackToFutureAdapter.Completer completer2 = completer;
                if (th == null) {
                    completer2.b(deferred.h());
                } else if (th instanceof CancellationException) {
                    completer2.c();
                } else {
                    completer2.d(th);
                }
                return Unit.f71739a;
            }
        });
        return "Deferred.asListenableFuture";
    }
}
