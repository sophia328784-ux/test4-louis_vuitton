package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/HeapOOMTracker;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "()V", "mLastHeapRatio", "", "mOverThresholdCount", "", "reason", "", "reset", "", "track", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class HeapOOMTracker extends OOMTracker {
    private static final float HEAP_RATIO_THRESHOLD_GAP = 0.05f;
    private static final String TAG = "OOMMonitor_HeapOOMTracker";
    private float mLastHeapRatio;
    private int mOverThresholdCount;

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public String reason() {
        return "reason_heap_oom";
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public void reset() {
        this.mLastHeapRatio = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.mOverThresholdCount = 0;
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public boolean track() {
        SystemInfo systemInfo = SystemInfo.INSTANCE;
        float rate = systemInfo.getJavaHeap().getRate();
        MonitorLog.i(TAG, "heapRatio:" + rate + ", heapThreshold:" + ((OOMMonitorConfig) getMonitorConfig()).getHeapThreshold() + ", mLastHeapRatio:" + this.mLastHeapRatio);
        if (rate <= ((OOMMonitorConfig) getMonitorConfig()).getHeapThreshold() || rate < this.mLastHeapRatio - HEAP_RATIO_THRESHOLD_GAP) {
            reset();
        } else {
            this.mOverThresholdCount++;
            StringBuilder sb = new StringBuilder("[meet condition] overThresholdCount: ");
            sb.append(this.mOverThresholdCount);
            sb.append(", heapRatio: ");
            sb.append(rate);
            sb.append(", usedMem: ");
            SizeUnit.BYTE r5 = SizeUnit.BYTE.INSTANCE;
            sb.append(r5.toMB(systemInfo.getJavaHeap().getUsed()));
            sb.append("mb, max: ");
            sb.append(r5.toMB(systemInfo.getJavaHeap().getMax()));
            sb.append("mb");
            MonitorLog.i(TAG, sb.toString());
        }
        this.mLastHeapRatio = rate;
        return this.mOverThresholdCount >= ((OOMMonitorConfig) getMonitorConfig()).getMaxOverThresholdCount();
    }
}
