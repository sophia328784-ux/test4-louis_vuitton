package com.dynatrace.android.agent;

import com.dynatrace.android.agent.util.Utility;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionAttemptMonitor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f27274h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Timer f27277c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f27278e;
    public Date g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f27275a = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f27279f = new AtomicBoolean(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f27276b = 0;

    public class AttemptTimer extends TimerTask {
        private AttemptTimer() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            synchronized (ConnectionAttemptMonitor.this) {
                ConnectionAttemptMonitor.this.f27279f.set(true);
                ConnectionAttemptMonitor connectionAttemptMonitor = ConnectionAttemptMonitor.this;
                connectionAttemptMonitor.e(connectionAttemptMonitor.b());
            }
        }
    }

    public static class Delays {
    }

    static {
        boolean z = Global.f27307a;
        f27274h = "dtxConnectionAttemptMonitor";
    }

    public ConnectionAttemptMonitor() {
        e(b());
    }

    public final synchronized void a() {
        Timer timer = this.f27277c;
        if (timer != null) {
            timer.cancel();
            this.f27277c.purge();
            this.f27277c = null;
        }
    }

    public final Date b() {
        Date date = new Date(TimeLineProvider.f27311c.a() + this.f27276b);
        long j2 = this.f27275a - 1;
        this.f27275a = j2;
        if (j2 > 0) {
            this.f27276b = 60000L;
            return date;
        }
        if (j2 == 0) {
            this.f27276b = 0L;
            return null;
        }
        long j3 = this.f27276b;
        if (j3 == 1920000) {
            this.f27276b = 3420000L;
            return date;
        }
        if (j3 == 3420000 || j3 <= 0) {
            return null;
        }
        this.f27276b = j3 * 2;
        return date;
    }

    public final synchronized void c(boolean z) {
        try {
            this.f27278e = z;
            this.f27279f.set(false);
            if (z) {
                if (Global.f27307a) {
                    Utility.n("Connection ok notification");
                }
                this.d = true;
                this.f27275a = -1L;
                this.f27276b = 0L;
                a();
            } else {
                if (Global.f27307a) {
                    Utility.n("No connection notification");
                }
                if (this.d && this.f27277c == null && this.f27276b == 0) {
                    this.f27276b = 60000L;
                    e(b());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(int i2) {
        try {
            this.f27278e = false;
            this.f27279f.set(false);
            if (this.d && this.f27277c == null && this.f27276b == 0) {
                this.f27276b = 60000L;
            }
            if (this.f27277c != null || b() != null) {
                e(new Date((((long) i2) * 1000) + TimeLineProvider.f27311c.a()));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e(Date date) {
        a();
        this.g = date;
        if (date != null) {
            Timer timer = new Timer(f27274h);
            this.f27277c = timer;
            try {
                timer.schedule(new AttemptTimer(), this.g);
                if (Global.f27307a) {
                    Utility.n("Connection attempt is scheduled for " + this.g);
                }
            } catch (Exception e2) {
                if (Global.f27307a) {
                    Utility.n("Failed to schedule a connection attempt ... " + e2.toString());
                }
            }
        }
    }
}
