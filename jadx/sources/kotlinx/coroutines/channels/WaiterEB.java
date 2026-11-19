package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.Waiter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/WaiterEB;", "", "Lkotlinx/coroutines/Waiter;", "waiter", "<init>", "(Lkotlinx/coroutines/Waiter;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class WaiterEB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Waiter f74773a;

    public WaiterEB(Waiter waiter) {
        this.f74773a = waiter;
    }

    public final String toString() {
        return "WaiterEB(" + this.f74773a + ')';
    }
}
