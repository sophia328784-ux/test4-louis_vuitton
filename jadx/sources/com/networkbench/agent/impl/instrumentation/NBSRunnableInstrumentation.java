package com.networkbench.agent.impl.instrumentation;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import com.networkbench.agent.impl.asyncaction.NBSRunnableHandler;
import com.networkbench.agent.impl.asyncaction.g;
import com.networkbench.agent.impl.asyncaction.k;
import com.networkbench.agent.impl.asyncaction.q;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.r;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class NBSRunnableInstrumentation {
    private static final String TAG = "NBSRunnableInstrumentation";
    private static final e log = f.a();
    private static final g controller = new g();

    public static q a() {
        return q.a();
    }

    private static NBSRunnableInspect getRunnableInspect(Object obj) throws Exception {
        Object objA = ad.a(obj, "nbsHandler");
        if (objA != null && (objA instanceof NBSRunnableInspect)) {
            return (NBSRunnableInspect) objA;
        }
        Logger.debug(TAG, "not find nbsHandler, please check");
        return null;
    }

    private static boolean isObjectValid(Object obj) {
        return (obj instanceof Runnable) || (obj instanceof Handler) || (obj instanceof AsyncTask) || (obj instanceof Callable);
    }

    public static void preRunMethod(Object obj) {
        NBSRunnableInspect runnableInspect;
        try {
            if (r.u().af() && obj != null && isObjectValid(obj) && (runnableInspect = getRunnableInspect(obj)) != null) {
                runnableInspect.preRunMethod();
            }
        } catch (Throwable th) {
            Logger.error(TAG, "preRunMethod error", th);
        }
    }

    public static void sufRunMethod(Object obj) {
        NBSRunnableInspect runnableInspect;
        try {
            if (r.u().af() && obj != null && isObjectValid(obj) && (runnableInspect = getRunnableInspect(obj)) != null) {
                runnableInspect.sufRunMethod();
            }
        } catch (Throwable th) {
            Logger.error(TAG, "sufRunMethod error", th);
        }
    }

    public static void threadStartInstrument(Thread thread) {
        try {
            if (!controller.a()) {
                thread.start();
            } else if (!(thread instanceof HandlerThread)) {
                wrapperThread(thread).start();
            } else {
                log.a("thread is HandlerThread, not instrument");
                thread.start();
            }
        } catch (Throwable th) {
            try {
                log.a("threadStartInstrument error:", th);
            } finally {
                thread.start();
            }
        }
    }

    private static Thread wrapperThread(Thread thread) {
        return new k(thread, new NBSRunnableHandler(a()));
    }
}
