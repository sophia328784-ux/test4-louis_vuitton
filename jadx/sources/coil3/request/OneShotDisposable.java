package coil3.request;

import kotlin.Metadata;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/request/OneShotDisposable;", "Lcoil3/request/Disposable;", "Lkotlinx/coroutines/Deferred;", "Lcoil3/request/ImageResult;", "job", "<init>", "(Lkotlinx/coroutines/Deferred;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class OneShotDisposable implements Disposable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deferred f21659a;

    public OneShotDisposable(Deferred<? extends ImageResult> deferred) {
        this.f21659a = deferred;
    }

    @Override // coil3.request.Disposable
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Deferred getF21659a() {
        return this.f21659a;
    }
}
