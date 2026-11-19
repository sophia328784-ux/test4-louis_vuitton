package com.batch.android.o;

import android.content.Context;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.n.w;
import defpackage.r81;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f23863h = "RetryTimer";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f23864i = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23867c;
    private int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TimerTask f23869f;
    private b g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23865a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Timer f23868e = new Timer();

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            h.a(h.this);
            h.this.g.a();
        }
    }

    public interface b {
        void a();
    }

    public h(Context context, b bVar) {
        if (context == null) {
            r81.d("context==null");
            throw null;
        }
        if (bVar == null) {
            r81.d("listener==null");
            throw null;
        }
        this.g = bVar;
        int i2 = Integer.parseInt(w.a(context).a(z.Z0));
        this.f23866b = i2;
        this.d = i2;
        this.f23867c = Integer.parseInt(w.a(context).a(z.a1));
    }

    private void a() {
        int i2 = this.d;
        if (i2 == this.f23866b) {
            this.d = i2 + 1;
            return;
        }
        int i3 = i2 * 2;
        this.d = i3;
        int i4 = this.f23867c;
        if (i3 > i4) {
            this.d = i4;
        }
    }

    public boolean b() {
        return this.f23869f != null;
    }

    public void c() {
        TimerTask timerTask = this.f23869f;
        if (timerTask != null) {
            timerTask.cancel();
        }
        a();
        a aVar = new a();
        this.f23869f = aVar;
        if (this.f23865a < 3) {
            this.f23868e.schedule(aVar, this.d);
        } else {
            t.c(f23863h, "The event sender has reached the max retries threshold.");
            d();
        }
    }

    public void d() {
        TimerTask timerTask = this.f23869f;
        if (timerTask != null) {
            timerTask.cancel();
            this.f23869f = null;
            this.f23868e.purge();
        }
        this.f23865a = 0;
        this.d = this.f23866b;
    }

    public static /* synthetic */ int a(h hVar) {
        int i2 = hVar.f23865a;
        hVar.f23865a = i2 + 1;
        return i2;
    }
}
