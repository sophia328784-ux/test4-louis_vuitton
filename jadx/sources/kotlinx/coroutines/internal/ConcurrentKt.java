package kotlinx.coroutines.internal;

import java.lang.reflect.Method;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000*\u001e\b\u0000\u0010\u0004\u001a\u0004\b\u0000\u0010\u0002\"\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0003¨\u0006\u0005"}, d2 = {"Ljava/util/concurrent/locks/ReentrantLock;", "ReentrantLock", "T", "Ljava/util/concurrent/atomic/AtomicReference;", "WorkaroundAtomicReference", "kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ConcurrentKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f75101a;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable unused) {
            method = null;
        }
        f75101a = method;
    }
}
