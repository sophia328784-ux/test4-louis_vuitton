package com.networkbench.agent.impl.oom.javaoom.hprof;

import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.base.Monitor_ApplicationKt;
import com.networkbench.agent.impl.base.Monitor_SoKt;
import com.networkbench.agent.impl.oom.fastdump.ForkJvmHeapDumper;
import com.networkbench.agent.impl.oom.fastdump.HeapDumper;

/* JADX INFO: loaded from: classes2.dex */
public class ForkStripHeapDumper implements HeapDumper {
    private static final String TAG = "OOMMonitor_ForkStripHeapDumper";
    private boolean mLoadSuccess;

    public static class Holder {
        private static final ForkStripHeapDumper INSTANCE = new ForkStripHeapDumper();

        private Holder() {
        }
    }

    public static ForkStripHeapDumper getInstance() {
        return Holder.INSTANCE;
    }

    private void init() {
        if (!this.mLoadSuccess && Monitor_SoKt.loadSoQuietly("tingyun-strip-dump")) {
            this.mLoadSuccess = true;
            initStripDump();
        }
    }

    public synchronized boolean dump(String str) {
        MonitorLog.i(TAG, "dump " + str);
        if (!Monitor_ApplicationKt.sdkVersionMatch()) {
            throw new UnsupportedOperationException("dump failed caused by sdk version not supported!");
        }
        init();
        boolean zDump = false;
        if (!this.mLoadSuccess) {
            MonitorLog.e(TAG, "dump failed caused by so not loaded!");
            return false;
        }
        try {
            hprofName(str);
            zDump = ForkJvmHeapDumper.getInstance().dump(str);
            MonitorLog.i(TAG, "dump result " + zDump);
        } catch (Exception e2) {
            MonitorLog.e(TAG, "dump failed caused by " + e2);
            e2.printStackTrace();
        }
        return zDump;
    }

    public native void hprofName(String str);

    public native void initStripDump();

    private ForkStripHeapDumper() {
    }
}
