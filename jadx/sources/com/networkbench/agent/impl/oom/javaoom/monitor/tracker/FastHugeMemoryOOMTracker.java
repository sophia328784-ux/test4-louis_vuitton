package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/FastHugeMemoryOOMTracker;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "()V", "mDumpReason", "", "reason", "reset", "", "track", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class FastHugeMemoryOOMTracker extends OOMTracker {
    private static final String REASON_HIGH_WATERMARK = "high_watermark";
    private static final String REASON_HUGE_DELTA = "delta";
    private static final String TAG = "OOMMonitor_FastHugeMemoryTracker";
    private String mDumpReason = "";

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public String reason() {
        return "reason_fast_huge_" + this.mDumpReason;
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public void reset() {
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public boolean track() {
        SystemInfo systemInfo = SystemInfo.INSTANCE;
        SystemInfo.JavaHeap javaHeap = systemInfo.getJavaHeap();
        if (javaHeap.getRate() > ((OOMMonitorConfig) getMonitorConfig()).getForceDumpJavaHeapMaxThreshold()) {
            this.mDumpReason = REASON_HIGH_WATERMARK;
            MonitorLog.i(TAG, "[meet condition] fast huge memory allocated detected, high memory watermark, force dump analysis!");
            return true;
        }
        SystemInfo.JavaHeap lastJavaHeap = systemInfo.getLastJavaHeap();
        if (lastJavaHeap.getMax() == 0 || javaHeap.getUsed() - lastJavaHeap.getUsed() <= SizeUnit.KB.INSTANCE.toByte(((OOMMonitorConfig) getMonitorConfig()).getForceDumpJavaHeapDeltaThreshold())) {
            return false;
        }
        this.mDumpReason = REASON_HUGE_DELTA;
        MonitorLog.i(TAG, "[meet condition] fast huge memory allocated detected, over the delta threshold!");
        return true;
    }
}
