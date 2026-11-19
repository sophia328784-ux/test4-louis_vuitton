package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class ThreadLocalEventLoop {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f74711a;

    static {
        new Symbol("ThreadLocalEventLoop");
        f74711a = new ThreadLocal();
    }

    public static EventLoop a() {
        ThreadLocal threadLocal = f74711a;
        EventLoop eventLoop = (EventLoop) threadLocal.get();
        if (eventLoop != null) {
            return eventLoop;
        }
        BlockingEventLoop blockingEventLoop = new BlockingEventLoop(Thread.currentThread());
        threadLocal.set(blockingEventLoop);
        return blockingEventLoop;
    }
}
