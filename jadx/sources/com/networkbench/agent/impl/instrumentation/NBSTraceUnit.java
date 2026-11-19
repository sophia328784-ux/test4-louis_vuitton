package com.networkbench.agent.impl.instrumentation;

/* JADX INFO: loaded from: classes2.dex */
public class NBSTraceUnit extends NBSUnit {
    public int callType;
    public int nodeType;
    public int segmentType;

    public NBSTraceUnit(long j2) {
        this.nodeType = 0;
        this.callType = 1;
        this.segmentType = 0;
        this.entryTimestamp = j2;
    }

    @Override // com.networkbench.agent.impl.instrumentation.NBSUnit
    public String toString() {
        return "NBSTraceUnit{segmentType=" + this.segmentType + ", callType=" + this.callType + ", nodeType=" + this.nodeType + ", entryTimestamp=" + this.entryTimestamp + ", exitTimestamp=" + this.exitTimestamp + ", metricName='" + this.metricName + "'} " + super.toString();
    }

    public NBSTraceUnit(String str, int i2, int i3, long j2) {
        this.callType = i3;
        this.metricName = str;
        this.segmentType = i2;
        this.entryTimestamp = j2;
    }

    public NBSTraceUnit() {
        this(System.currentTimeMillis());
    }
}
