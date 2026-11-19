package com.dynatrace.android.agent.db;

import com.dynatrace.android.agent.comm.MonitoringDataPacket;

/* JADX INFO: loaded from: classes2.dex */
public class MonitoringDataEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27518c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f27519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MonitoringDataPacket f27520f;
    public final boolean g;

    public MonitoringDataEntity(long j2, int i2, int i3, int i4, long j3, MonitoringDataPacket monitoringDataPacket, boolean z) {
        this.f27516a = j2;
        this.f27517b = i2;
        this.f27518c = i3;
        this.d = i4;
        this.f27519e = j3;
        this.f27520f = monitoringDataPacket;
        this.g = z;
    }
}
