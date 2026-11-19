package com.networkbench.agent.impl.performance.coulometry.c.c;

import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.r;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f37898a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    NetworkStatsManager f37899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    NetworkStats f37900c;
    NetworkStats d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f37901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f37902f;

    public b() {
        a(r.u().J());
        this.f37901e = 0L;
    }

    private long a(int i2) {
        long txBytes;
        NetworkStats networkStatsQuerySummary;
        long rxBytes = 0;
        try {
            NetworkStatsManager networkStatsManager = (NetworkStatsManager) r.u().J().getSystemService("netstats");
            NetworkStats.Bucket bucket = new NetworkStats.Bucket();
            try {
                networkStatsQuerySummary = networkStatsManager.querySummary(i2, null, 0L, 9223372036854775806L);
                txBytes = 0;
                while (networkStatsQuerySummary != null) {
                    try {
                        if (!networkStatsQuerySummary.hasNextBucket()) {
                            break;
                        }
                        networkStatsQuerySummary.getNextBucket(bucket);
                        if (this.f37898a == bucket.getUid()) {
                            rxBytes += bucket.getRxBytes();
                            txBytes += bucket.getTxBytes();
                        }
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
                networkStatsQuerySummary = null;
                txBytes = 0;
            }
            if (networkStatsQuerySummary != null) {
                networkStatsQuerySummary.close();
            }
        } catch (Throwable unused3) {
            txBytes = 0;
        }
        this.f37902f = System.currentTimeMillis();
        return (rxBytes + txBytes) / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.c.a
    public long b() {
        long jA = a(0) + a(1);
        long j2 = jA - this.f37901e;
        this.f37901e = jA;
        return j2;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.c.a
    public void a() {
        this.f37901e = a(0) + a(1);
        g.y("TrafficHook  this.allData : " + this.f37901e);
    }

    private void a(Context context) {
        if (this.f37898a == -1) {
            try {
                PackageInfo packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 128);
                if (packageInfo != null) {
                    this.f37898a = packageInfo.applicationInfo.uid;
                }
            } catch (Throwable th) {
                g.y("TrafficHighData getUuid has an error : " + th.getMessage());
            }
        }
    }
}
