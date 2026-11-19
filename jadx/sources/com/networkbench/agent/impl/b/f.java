package com.networkbench.agent.impl.b;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import com.networkbench.agent.impl.util.r;
import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f36496a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f36497c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36498b = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36500f = 0;
    private a d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f36499e = new c();

    public class a implements Choreographer.FrameCallback {
        private a() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j2) {
            try {
                try {
                    if (r.p == 0) {
                        if (f.this.f36500f > 0) {
                            f.this.f36499e.a(System.currentTimeMillis());
                        }
                        f.this.f36500f = j2;
                    }
                    Choreographer.getInstance().postFrameCallback(this);
                } catch (Throwable th) {
                    try {
                        f.f36497c.e("error happened in doFrame:" + th.getMessage());
                        Choreographer.getInstance().postFrameCallback(this);
                    } catch (Throwable th2) {
                        try {
                            Choreographer.getInstance().postFrameCallback(this);
                        } catch (Throwable unused) {
                        }
                        throw th2;
                    }
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private f() {
    }

    public static f b() {
        if (f36496a == null) {
            synchronized (f.class) {
                try {
                    if (f36496a == null) {
                        f36496a = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f36496a;
    }

    public static boolean c() {
        return f36496a == null;
    }

    private void h() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.networkbench.agent.impl.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.f36498b = true;
                    Choreographer.getInstance().postFrameCallback(f.this.d);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void i() {
        this.f36498b = false;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.networkbench.agent.impl.b.f.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Choreographer.getInstance().removeFrameCallback(f.this.d);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void d() {
        try {
            g gVar = this.f36499e;
            if (gVar != null) {
                gVar.e();
            }
        } catch (Throwable unused) {
        }
    }

    public void e() {
        try {
            if (r.u().X()) {
                h();
            }
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error happened in start:"), f36497c);
        }
    }

    public void f() {
        try {
            if (r.u().X()) {
                this.f36500f = 0L;
                i();
            }
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error happened in stop:"), f36497c);
        }
    }

    public boolean a() {
        return this.f36498b;
    }
}
