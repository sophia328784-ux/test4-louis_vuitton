package com.networkbench.agent.impl.oom.javaoom.monitor.tracker;

import com.networkbench.agent.impl.base.Monitor;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "Lcom/networkbench/agent/impl/base/Monitor;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;", "()V", "reason", "", "reset", "", "track", "", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public abstract class OOMTracker extends Monitor<OOMMonitorConfig> {
    public abstract String reason();

    public abstract void reset();

    public abstract boolean track();
}
