package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import android.system.Os;
import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.FilesKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FdOOMTracker;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "()V", "mLastFdCount", "", "mOverThresholdCount", "dumpFdIfNeed", "", "getFdCount", "reason", "", "reset", "track", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class FdOOMTracker extends OOMTracker {
    private static final int FD_COUNT_THRESHOLD_GAP = 50;
    private static final String TAG = "OOMMonitor_FdOOMTracker";
    private int mLastFdCount;
    private int mOverThresholdCount;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    private final void dumpFdIfNeed() {
        Object failure;
        ?? arrayList;
        Object failure2;
        MonitorLog.i(TAG, "over threshold dumpFdIfNeed");
        if (this.mOverThresholdCount > ((OOMMonitorConfig) getMonitorConfig()).getMaxOverThresholdCount()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new File("/proc/self/fd").listFiles();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            MonitorLog.i(TAG, "/proc/self/fd child files is empty");
            failure = new File[0];
        }
        File[] fileArr = (File[]) failure;
        if (fileArr != null) {
            arrayList = new ArrayList(fileArr.length);
            for (File file : fileArr) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    file.getClass();
                    failure2 = Os.readlink(file.getPath());
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    failure2 = new Result.Failure(th2);
                }
                if (Result.a(failure2) != null) {
                    StringBuilder sb = new StringBuilder("failed to read link ");
                    file.getClass();
                    sb.append(file.getPath());
                    failure2 = sb.toString();
                }
                arrayList.add((String) failure2);
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        File fileCreateDumpFile = OOMFileManager.createDumpFile(OOMFileManager.getFdDumpDir());
        try {
            Result.Companion companion5 = Result.INSTANCE;
            FilesKt.d(fileCreateDumpFile, CollectionsKt.K(CollectionsKt.n0((Iterable) arrayList), ",", null, null, null, 62));
        } catch (Throwable th3) {
            Result.Companion companion6 = Result.INSTANCE;
            new Result.Failure(th3);
        }
    }

    private final int getFdCount() {
        File[] fileArrListFiles = new File("/proc/self/fd").listFiles();
        if (fileArrListFiles != null) {
            return fileArrListFiles.length;
        }
        return 0;
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public String reason() {
        return "reason_fd_oom";
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public void reset() {
        this.mLastFdCount = 0;
        this.mOverThresholdCount = 0;
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public boolean track() {
        int fdCount = getFdCount();
        if (fdCount <= ((OOMMonitorConfig) getMonitorConfig()).getFdThreshold() || fdCount < this.mLastFdCount - 50) {
            reset();
        } else {
            this.mOverThresholdCount++;
            MonitorLog.i(TAG, "[meet condition] overThresholdCount: " + this.mOverThresholdCount + ", fdCount: " + fdCount);
            dumpFdIfNeed();
        }
        this.mLastFdCount = fdCount;
        return this.mOverThresholdCount >= ((OOMMonitorConfig) getMonitorConfig()).getMaxOverThresholdCount();
    }
}
