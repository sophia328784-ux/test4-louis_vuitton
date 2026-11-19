package com.networkbench.agent.impl.performance.a.a;

import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.a.a.c;
import com.networkbench.agent.impl.util.ak;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f37615a = 60;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f37616b = NBSApplicationStateMonitor.ALTERNATEPERIOD;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f37617c = 40;
    public double d = 3.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f37618e = 0.05d;

    public void a(String str) {
        try {
            if (ak.r(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            try {
                double d = jSONObject.getDouble("appCpuSpeedThreshold");
                if (d >= 1.0d) {
                    this.d = d;
                }
            } catch (Throwable unused) {
                this.d = 3.0d;
            }
            try {
                double d2 = jSONObject.getDouble("threadCpuUsageThreshold");
                if (d2 >= 0.01d) {
                    this.f37618e = d2;
                }
            } catch (Throwable unused2) {
                this.f37618e = 0.05d;
            }
        } catch (Throwable unused3) {
        }
    }

    public String toString() {
        return "CpuConfig{frontCollectInterval=" + this.f37615a + ", collectTime=" + this.f37616b + ", maxProcessForeCpuSpeed=" + this.d + ", maxThreadCpuRate=" + this.f37618e + '}';
    }

    public final long a() {
        return this.f37615a * 1000;
    }
}
