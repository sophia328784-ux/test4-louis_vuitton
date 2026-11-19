package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/PhysicalMemoryOOMTracker;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "()V", "reason", "", "reset", "", "track", "", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class PhysicalMemoryOOMTracker extends OOMTracker {
    private static final String TAG = "OOMMonitor_PhysicalMemoryTracker";

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public String reason() {
        return "reason_lmk_oom";
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public void reset() {
    }

    @Override // com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker
    public boolean track() {
        SystemInfo.MemInfo memInfo = SystemInfo.INSTANCE.getMemInfo();
        if (memInfo.getRate() < ((OOMMonitorConfig) getMonitorConfig()).getDeviceMemoryThreshold()) {
            MonitorLog.e(TAG, "oom meminfo.rate < " + (((OOMMonitorConfig) getMonitorConfig()).getDeviceMemoryThreshold() * 100.0f) + '%');
            return false;
        }
        if (memInfo.getRate() < 0.1f) {
            MonitorLog.i(TAG, "oom meminfo.rate < 10.0%");
            return false;
        }
        if (memInfo.getRate() < 0.15f) {
            MonitorLog.i(TAG, "oom meminfo.rate < 15.0%");
            return false;
        }
        if (memInfo.getRate() < 0.2f) {
            MonitorLog.i(TAG, "oom meminfo.rate < 20.0%");
            return false;
        }
        if (memInfo.getRate() >= 0.3f) {
            return false;
        }
        MonitorLog.i(TAG, "oom meminfo.rate < 30.0%");
        return false;
    }
}
