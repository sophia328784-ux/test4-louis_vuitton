package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.asyncaction.NBSRunnableHandler;
import com.networkbench.agent.impl.asyncaction.j;
import com.networkbench.agent.impl.asyncaction.q;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class NBSRunnableInspect {
    private static final String TAG = "NBSRunnableInspect";
    private long initTimeStamp;
    private NBSRunnableHandler runnableHandler;

    public NBSRunnableInspect() {
        try {
            if (requestEnvionmentFit()) {
                Logger.debug(TAG, "request envionment is ok");
                this.runnableHandler = new NBSRunnableHandler(getTraceEngineAdapter());
            }
            this.initTimeStamp = System.currentTimeMillis();
        } catch (Throwable th) {
            Logger.error(TAG, "error init NBSRunnableInspect", th);
        }
    }

    private q getTraceEngineAdapter() {
        return q.a();
    }

    private boolean requestEnvionmentFit() {
        if (r.u().af()) {
            q traceEngineAdapter = getTraceEngineAdapter();
            return (traceEngineAdapter == null || traceEngineAdapter.e() == null) ? false : true;
        }
        Logger.debug(TAG, "ui is closed");
        return false;
    }

    public boolean isOverTime() {
        return System.currentTimeMillis() - this.initTimeStamp >= 60000;
    }

    public void preRunMethod() {
        try {
            NBSRunnableHandler nBSRunnableHandler = this.runnableHandler;
            if (nBSRunnableHandler != null) {
                nBSRunnableHandler.preMethod();
                j.a(this);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error preRunMethod", th);
        }
    }

    public void releaseHandler() {
        this.runnableHandler = null;
    }

    public void sufRunMethod() {
        try {
            NBSRunnableHandler nBSRunnableHandler = this.runnableHandler;
            if (nBSRunnableHandler != null) {
                nBSRunnableHandler.sufMethod();
                releaseHandler();
                j.b(this);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error sufRunMethod", th);
        }
    }
}
