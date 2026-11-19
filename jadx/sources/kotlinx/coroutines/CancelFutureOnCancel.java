package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/CancelFutureOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "Ljava/util/concurrent/Future;", "future", "<init>", "(Ljava/util/concurrent/Future;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class CancelFutureOnCancel implements CancelHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Future f74637b;

    public CancelFutureOnCancel(Future<?> future) {
        this.f74637b = future;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void a(Throwable th) {
        this.f74637b.cancel(false);
    }

    public final String toString() {
        return "CancelFutureOnCancel[" + this.f74637b + ']';
    }
}
