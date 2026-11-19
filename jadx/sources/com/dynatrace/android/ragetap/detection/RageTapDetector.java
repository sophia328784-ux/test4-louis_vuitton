package com.dynatrace.android.ragetap.detection;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class RageTapDetector {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f27700b;
    public final TimeLineProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Session f27702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RageTapRules f27703f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ScheduledFuture f27706j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f27707k;
    public TapData g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TapData f27704h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f27705i = 0;
    public boolean l = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f27701c = new Runnable() { // from class: com.dynatrace.android.ragetap.detection.RageTapDetector.1
        @Override // java.lang.Runnable
        public void run() {
            RageTapDetector rageTapDetector = RageTapDetector.this;
            synchronized (rageTapDetector) {
                try {
                    if (rageTapDetector.g == null) {
                        return;
                    }
                    long jA = rageTapDetector.d.a();
                    RageTapRules rageTapRules = rageTapDetector.f27703f;
                    TapData tapData = rageTapDetector.f27704h;
                    rageTapRules.getClass();
                    if (jA - tapData.f27710b.f27713c > ((long) rageTapRules.f27708a.f27388c)) {
                        if (Global.f27307a) {
                            int i2 = RageTapDetector.m;
                            Utility.n("timespan difference exceeded");
                        }
                        rageTapDetector.a();
                    } else {
                        ScheduledFuture scheduledFuture = rageTapDetector.f27706j;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        rageTapDetector.f27706j = rageTapDetector.f27700b.schedule(rageTapDetector.f27701c, rageTapDetector.f27707k, TimeUnit.MILLISECONDS);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    static {
        boolean z = Global.f27307a;
    }

    public RageTapDetector(List<RageTapListener> list, ScheduledExecutorService scheduledExecutorService, TimeLineProvider timeLineProvider) {
        this.f27699a = Collections.unmodifiableList(list);
        this.f27700b = scheduledExecutorService;
        this.d = timeLineProvider;
    }

    public final synchronized void a() {
        b(true);
    }

    public final void b(boolean z) {
        if (this.l) {
            RageTapRules rageTapRules = this.f27703f;
            int i2 = this.f27705i;
            if (i2 >= rageTapRules.f27708a.d) {
                RageTap rageTap = new RageTap(this.g, this.f27704h, i2);
                if (Global.f27307a) {
                    Utility.n("rage tap detected: " + rageTap);
                }
                Iterator it = this.f27699a.iterator();
                while (it.hasNext()) {
                    ((RageTapListener) it.next()).a(rageTap, z);
                }
            }
            ScheduledFuture scheduledFuture = this.f27706j;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.f27706j = null;
            }
            this.g = null;
            this.f27704h = null;
            this.f27705i = 0;
        }
    }

    public final void c(TapData tapData) {
        if (this.f27702e.f27475a <= tapData.f27709a.f27713c) {
            this.g = tapData;
            this.f27704h = tapData;
            this.f27705i = 1;
            return;
        }
        if (Global.f27307a) {
            Utility.n("discard tap because it partially occurred outside of the session");
        }
        ScheduledFuture scheduledFuture = this.f27706j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.f27706j = null;
        }
        this.g = null;
        this.f27704h = null;
        this.f27705i = 0;
    }
}
