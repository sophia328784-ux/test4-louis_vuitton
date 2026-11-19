package com.networkbench.agent.impl.harvest.a.a;

/* JADX INFO: loaded from: classes2.dex */
public class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37241a = 120;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37242b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37243c = 240;
    private int d = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37244e = 120;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37245f = 240;
    private int g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37246h = 10;

    public void a(int i2) {
        if (i2 <= 0) {
            i2 = 120;
        }
        this.f37241a = i2;
    }

    public void b(int i2) {
        if (i2 <= 0) {
            i2 = 4;
        }
        this.f37242b = i2;
    }

    public void c(int i2) {
        if (i2 <= 0) {
            i2 = 240;
        }
        this.f37243c = i2;
    }

    public void d(int i2) {
        if (i2 <= 0) {
            i2 = 5;
        }
        this.d = i2;
    }

    public void e(int i2) {
        if (i2 <= 0) {
            i2 = 120;
        }
        this.f37244e = i2;
    }

    public void f(int i2) {
        if (i2 <= 0) {
            i2 = 240;
        }
        this.f37245f = i2;
    }

    public void g(int i2) {
        if (i2 <= 0) {
            i2 = 5;
        }
        this.g = i2;
    }

    public void h(int i2) {
        if (i2 <= 0) {
            i2 = 10;
        }
        this.f37246h = i2;
    }

    public String toString() {
        return "NBSBatteryConfig{gpsUseTimePer=" + this.f37241a + ", gpsUseCount10m=" + this.f37242b + ", gpsUseTime10m=" + this.f37243c + ", wakeLockHeldTimePer=" + this.d + ", wakeLockHeldTime10m=" + this.f37244e + ", wakeLockAcquiredCount10m=" + this.f37245f + ", wakeupAlarmCount10m=" + this.g + ", alarmCount10m=" + this.f37246h + "} " + super.toString();
    }

    public int b() {
        return this.f37242b;
    }

    public int d() {
        return this.d;
    }

    public int g() {
        return this.g;
    }

    public int a() {
        return this.f37241a;
    }

    public int c() {
        return this.f37243c;
    }

    public int e() {
        return this.f37244e;
    }

    public int f() {
        return this.f37245f;
    }

    public int h() {
        return this.f37246h;
    }
}
