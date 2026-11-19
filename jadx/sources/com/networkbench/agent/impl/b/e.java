package com.networkbench.agent.impl.b;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f36487a = 800;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f36488b = 5;
    private static com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f36489c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.b.a.a f36490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<d> f36491f = new CopyOnWriteArrayList();

    public class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f36495b;

        public a(long j2) {
            this.f36495b = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e.d.a("RetryRunnable run invoked");
                if (com.networkbench.agent.impl.data.type.f.f36952a.d()) {
                    return;
                }
                o oVar = new o(new k(this.f36495b), e.this.f36490e);
                e.this.f36491f.add(oVar);
                e.this.f36490e.d();
                e.this.f36490e.b();
                com.networkbench.agent.impl.util.c.c.a().a(oVar);
            } catch (com.networkbench.agent.impl.util.d e2) {
                e.d.a("warning the blockinfo:" + e2.getMessage());
            } catch (Throwable th) {
                e.d.a("error notifyBlockEvent", th);
            }
        }
    }

    public e(HandlerThread handlerThread, long j2) {
        this.f36489c = new Handler(handlerThread.getLooper());
        try {
            this.f36490e = new com.networkbench.agent.impl.b.a.a(h.a(), Looper.getMainLooper().getThread(), 800);
        } catch (Exception e2) {
            d.a("error init stackService", e2);
        }
    }

    public void a(long j2) {
        Thread thread;
        try {
            Handler handler = this.f36489c;
            if (handler == null || (thread = handler.getLooper().getThread()) == null || thread.isInterrupted()) {
                return;
            }
            this.f36489c.postDelayed(new y() { // from class: com.networkbench.agent.impl.b.e.1
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    e.d.a("stackService.start");
                    if (e.this.f36490e != null) {
                        e.this.f36490e.a();
                    }
                }
            }, 800L);
            this.f36489c.postDelayed(new a(j2), ak.h());
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.e("BlockProbe setUp error : " + th.getMessage());
        }
    }

    public List<com.networkbench.agent.impl.b.a.b> b() {
        ArrayList arrayList = new ArrayList();
        com.networkbench.agent.impl.b.a.a aVar = this.f36490e;
        return aVar != null ? aVar.c() : arrayList;
    }

    public void c() {
        Handler handler = this.f36489c;
        if (handler != null) {
            handler.post(new y() { // from class: com.networkbench.agent.impl.b.e.2
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    if (e.this.f36490e != null) {
                        e.this.f36490e.b();
                    }
                }
            });
        }
    }

    public void a() {
        Handler handler = this.f36489c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        c();
        Iterator<d> it = this.f36491f.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f36491f.clear();
    }
}
