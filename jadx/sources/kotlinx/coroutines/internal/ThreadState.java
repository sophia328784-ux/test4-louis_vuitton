package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/internal/ThreadState;", "", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "", "n", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ThreadState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f75149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f75150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadContextElement[] f75151c;
    public int d;

    public ThreadState(CoroutineContext coroutineContext, int i2) {
        this.f75149a = coroutineContext;
        this.f75150b = new Object[i2];
        this.f75151c = new ThreadContextElement[i2];
    }
}
