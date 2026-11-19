package okhttp3;

import defpackage.t71;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0013\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Dispatcher;", "", "<init>", "()V", "Ljava/util/concurrent/ExecutorService;", "executorService", "(Ljava/util/concurrent/ExecutorService;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Dispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f76899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f76900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ExecutorService f76901c;
    public final ArrayDeque d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque f76902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f76903f;

    public Dispatcher() {
        this.f76899a = 64;
        this.f76900b = 5;
        this.d = new ArrayDeque();
        this.f76902e = new ArrayDeque();
        this.f76903f = new ArrayDeque();
    }

    public static void c(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2, int i2) {
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects;
        RealCall.AsyncCall asyncCallB;
        if ((i2 & 1) != 0) {
            asyncCall = null;
        }
        if ((i2 & 2) != 0) {
            realCall = null;
        }
        if ((i2 & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        boolean zIsShutdown = dispatcher.a().isShutdown();
        synchronized (dispatcher) {
            if (realCall != null) {
                try {
                    if (!dispatcher.f76903f.remove(realCall)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall2 != null) {
                asyncCall2.getCallsPerHost().decrementAndGet();
                if (!dispatcher.f76902e.remove(asyncCall2)) {
                    throw new IllegalStateException("Call wasn't in-flight!");
                }
            }
            if (asyncCall != null) {
                dispatcher.d.add(asyncCall);
                if (!asyncCall.getThis$0().d && (asyncCallB = dispatcher.b(asyncCall.getHost())) != null) {
                    asyncCall.reuseCallsPerHostFrom(asyncCallB);
                }
            }
            if ((realCall != null || asyncCall2 != null) && (zIsShutdown || dispatcher.f76902e.isEmpty())) {
                dispatcher.f76903f.isEmpty();
            }
            if (zIsShutdown) {
                List listY0 = CollectionsKt.y0(dispatcher.d);
                dispatcher.d.clear();
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(listY0, null);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = dispatcher.d.iterator();
                it.getClass();
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall3 = (RealCall.AsyncCall) it.next();
                    if (dispatcher.f76902e.size() >= dispatcher.f76899a) {
                        break;
                    }
                    if (asyncCall3.getCallsPerHost().get() < dispatcher.f76900b) {
                        it.remove();
                        asyncCall3.getCallsPerHost().incrementAndGet();
                        arrayList.add(asyncCall3);
                        dispatcher.f76902e.add(asyncCall3);
                    }
                }
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(arrayList, null);
            }
        }
        int size = dispatcher$promoteAndExecute$Effects.f76904a.size();
        boolean z = true;
        for (int i3 = 0; i3 < size; i3++) {
            RealCall.AsyncCall asyncCall4 = (RealCall.AsyncCall) dispatcher$promoteAndExecute$Effects.f76904a.get(i3);
            if (asyncCall4 == asyncCall) {
                z = false;
            } else {
                asyncCall4.getThis$0().eventListener.dispatcherQueueEnd(asyncCall4.getThis$0(), dispatcher);
            }
            if (zIsShutdown) {
                RealCall.AsyncCall.failRejected$okhttp$default(asyncCall4, null, 1, null);
            } else {
                asyncCall4.executeOn(dispatcher.a());
            }
        }
        if (z && asyncCall != null) {
            asyncCall.getThis$0().eventListener.dispatcherQueueStart(asyncCall.getThis$0(), dispatcher);
        }
        Runnable runnable = dispatcher$promoteAndExecute$Effects.f76905b;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final synchronized ExecutorService a() {
        ExecutorService executorService;
        try {
            if (this.f76901c == null) {
                this.f76901c = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new t71(_UtilJvmKt.f77019b + " Dispatcher", false));
            }
            executorService = this.f76901c;
            executorService.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return executorService;
    }

    public final RealCall.AsyncCall b(String str) {
        Iterator it = this.f76902e.iterator();
        it.getClass();
        while (it.hasNext()) {
            RealCall.AsyncCall asyncCall = (RealCall.AsyncCall) it.next();
            if (Intrinsics.c(asyncCall.getHost(), str)) {
                return asyncCall;
            }
        }
        Iterator it2 = this.d.iterator();
        it2.getClass();
        while (it2.hasNext()) {
            RealCall.AsyncCall asyncCall2 = (RealCall.AsyncCall) it2.next();
            if (Intrinsics.c(asyncCall2.getHost(), str)) {
                return asyncCall2;
            }
        }
        return null;
    }

    public Dispatcher(ExecutorService executorService) {
        this();
        this.f76901c = executorService;
    }
}
