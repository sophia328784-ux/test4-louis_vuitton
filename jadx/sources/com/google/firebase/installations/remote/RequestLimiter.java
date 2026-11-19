package com.google.firebase.installations.remote;

import com.google.firebase.installations.Utils;
import com.google.firebase.installations.time.SystemClock;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class RequestLimiter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Utils f35210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f35211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f35212c;

    public RequestLimiter() {
        if (SystemClock.f35213a == null) {
            Pattern pattern = Utils.f35171b;
            SystemClock.f35213a = new SystemClock();
        }
        SystemClock systemClock = SystemClock.f35213a;
        if (Utils.f35172c == null) {
            Utils.f35172c = new Utils(systemClock);
        }
        this.f35210a = Utils.f35172c;
    }

    public final synchronized boolean a() {
        return this.f35212c == 0 || this.f35210a.f35173a.a() > this.f35211b;
    }

    public final synchronized void b(int i2) {
        long jMin;
        try {
            if ((i2 >= 200 && i2 < 300) || i2 == 401 || i2 == 404) {
                synchronized (this) {
                    this.f35212c = 0;
                }
                return;
            }
            this.f35212c++;
            synchronized (this) {
                if (i2 == 429 || (i2 >= 500 && i2 < 600)) {
                    double dPow = Math.pow(2.0d, this.f35212c);
                    this.f35210a.getClass();
                    jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), 1800000.0d);
                } else {
                    jMin = 86400000;
                }
                this.f35211b = this.f35210a.f35173a.a() + jMin;
            }
            return;
        } catch (Throwable th) {
            throw th;
        }
        throw th;
    }
}
