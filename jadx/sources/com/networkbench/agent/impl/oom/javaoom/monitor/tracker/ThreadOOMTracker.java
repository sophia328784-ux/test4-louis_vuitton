package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import defpackage.cj;
import defpackage.d21;
import defpackage.o60;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.FilesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/ThreadOOMTracker;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "()V", "mLastThreadCount", "", "mOverThresholdCount", "dumpThreadIfNeed", "", "getThreadCount", "reason", "", "reset", "track", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class ThreadOOMTracker extends OOMTracker {
    private static final String TAG = "OOMMonitor_ThreadOOMTracker";
    private static final int THREAD_COUNT_THRESHOLD_GAP = 50;
    private int mLastThreadCount;
    private int mOverThresholdCount;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v9, types: [kotlin.collections.EmptyList] */
    private final void dumpThreadIfNeed() {
        Object failure;
        ?? arrayList;
        Object failure2;
        MonitorLog.i(TAG, "over threshold dumpThreadIfNeed");
        if (this.mOverThresholdCount > ((OOMMonitorConfig) getMonitorConfig()).getMaxOverThresholdCount()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new File("/proc/self/task").listFiles();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            MonitorLog.i(TAG, "/proc/self/task child files is empty");
            failure = new File[0];
        }
        File[] fileArr = (File[]) failure;
        if (fileArr != null) {
            ArrayList<String> arrayList2 = new ArrayList(fileArr.length);
            for (File file : fileArr) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    failure2 = FilesKt.c(new File(file, "comm"));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    failure2 = new Result.Failure(th2);
                }
                Throwable thA = Result.a(failure2);
                if (thA != null) {
                    failure2 = d21.n("failed to read ", "/comm", thA);
                }
                arrayList2.add((String) failure2);
            }
            arrayList = new ArrayList(CollectionsKt.t(arrayList2, 10));
            for (String strG : arrayList2) {
                if (StringsKt.p(strG, "\n", false)) {
                    strG = o60.g(1, 0, strG);
                }
                arrayList.add(strG);
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        MonitorLog.i(TAG, cj.i(arrayList, "threadNames = "));
        File fileCreateDumpFile = OOMFileManager.createDumpFile(OOMFileManager.getThreadDumpDir());
        try {
            Result.Companion companion5 = Result.INSTANCE;
            FilesKt.d(fileCreateDumpFile, CollectionsKt.K((Iterable) arrayList, ",", null, null, null, 62));
        } catch (Throwable th3) {
            Result.Companion companion6 = Result.INSTANCE;
            new Result.Failure(th3);
        }
    }

    private final int getThreadCount() {
        return SystemInfo.INSTANCE.getProcStatus().getThread();
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public String reason() {
        return "reason_thread_oom";
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public void reset() {
        this.mLastThreadCount = 0;
        this.mOverThresholdCount = 0;
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public boolean track() {
        int threadCount = getThreadCount();
        if (threadCount <= ((OOMMonitorConfig) getMonitorConfig()).getThreadThreshold() || threadCount < this.mLastThreadCount - 50) {
            reset();
        } else {
            this.mOverThresholdCount++;
            MonitorLog.i(TAG, "[meet condition] overThresholdCount:" + this.mOverThresholdCount + ", threadCount: " + threadCount);
            dumpThreadIfNeed();
        }
        this.mLastThreadCount = threadCount;
        return this.mOverThresholdCount >= ((OOMMonitorConfig) getMonitorConfig()).getMaxOverThresholdCount();
    }
}
