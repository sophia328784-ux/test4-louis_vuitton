package com.batch.android.v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.batch.android.a.m;
import com.batch.android.e.t;
import com.batch.android.e.v;
import com.batch.android.n.d0;
import com.batch.android.n.o;
import com.batch.android.n.z;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.gy0;
import defpackage.w21;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class f extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f24095i = "LocalCampaigns";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.batch.android.s.a f24096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24097b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedList<com.batch.android.x.d> f24098c = new LinkedList<>();
    private final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f24099e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ExecutorService f24100f = Executors.newSingleThreadExecutor(new v());
    private boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BroadcastReceiver f24101h = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (com.batch.android.j1.f.f23583e.equals(intent.getAction())) {
                f.this.d.set(false);
                f.this.e(new com.batch.android.x.b());
                m.a(z.a());
            }
        }
    }

    private f(com.batch.android.s.a aVar) {
        this.f24096a = aVar;
    }

    private void a(com.batch.android.x.d dVar) {
        List<com.batch.android.t.b> listA = this.f24096a.a(dVar);
        if (listA.isEmpty()) {
            t.c(f24095i, "No eligible campaigns found.");
            return;
        }
        com.batch.android.t.b bVar = listA.get(0);
        if (!bVar.q) {
            t.c(f24095i, "Elected campaign not requiring a sync, display it.");
            a(bVar);
            return;
        }
        com.batch.android.t.b.C0074b.a aVarA = this.f24096a.a(bVar);
        if (aVarA == com.batch.android.t.b.C0074b.a.ELIGIBLE) {
            t.c(f24095i, "Skipping JIT sync since this campaign has been already synced recently.");
            a(bVar);
            return;
        }
        if (aVarA == com.batch.android.t.b.C0074b.a.REQUIRES_SYNC && this.f24096a.i()) {
            List<com.batch.android.t.b> listC = this.f24096a.c(listA);
            com.batch.android.t.b bVarB = this.f24096a.b(listA);
            this.f24099e.set(true);
            this.f24096a.a(listC, new gy0(this, bVarB, 12));
            return;
        }
        com.batch.android.t.b bVarB2 = this.f24096a.b(listA);
        if (bVarB2 != null) {
            t.c(f24095i, "JIT not available or campaign is cached and not eligible, fallback on offline campaign.");
            a(bVarB2);
        }
    }

    private void b(com.batch.android.x.d dVar) {
        synchronized (this.f24098c) {
            try {
                if (!this.d.get() || this.f24099e.get()) {
                    t.c(f24095i, "Local Campaign module isn't ready, enqueueing signal: ".concat(dVar.getClass().getSimpleName()));
                    this.f24098c.add(dVar);
                } else {
                    e(dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(Context context) {
        this.f24096a.k();
        if (this.f24097b) {
            return;
        }
        d0.a(context).submit(new w21(this, context, 27));
        this.f24097b = true;
    }

    private void d(com.batch.android.x.d dVar) {
        if (dVar instanceof com.batch.android.x.a) {
            com.batch.android.x.a aVar = (com.batch.android.x.a) dVar;
            if (!this.f24096a.a(aVar.f24156a)) {
                t.c(f24095i, "Skipping event signal processing as the event named '" + aVar.f24156a + "'is not watched.");
                return;
            }
            if (com.batch.android.x.c.a(aVar)) {
                dVar = new com.batch.android.x.c(aVar);
            }
        }
        if (this.f24096a.j()) {
            return;
        }
        this.f24100f.submit(new w21(this, dVar, 28));
    }

    private void i() {
        synchronized (this.f24098c) {
            try {
                LinkedList linkedList = new LinkedList(this.f24098c);
                this.f24098c.clear();
                if (!linkedList.isEmpty()) {
                    t.b(f24095i, "Replaying " + linkedList.size() + " local campaign signals");
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    d((com.batch.android.x.d) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void j() {
        this.d.set(true);
        i();
    }

    public static f l() {
        return new f(com.batch.android.n.f.a());
    }

    public void e(com.batch.android.x.d dVar) {
        if (this.d.get()) {
            d(dVar);
        } else {
            b(dVar);
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "localcampaigns";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public void k() {
        j();
    }

    public void e(Context context) {
        try {
            this.f24096a.a(context, true);
        } catch (com.batch.android.v.c e2) {
            t.c(f24095i, "Could not delete persisted campaigns", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(com.batch.android.x.d dVar) {
        if (this.f24099e.get()) {
            t.c(f24095i, "JIT sync in progress, enqueue signal.");
            b(dVar);
        } else {
            a(dVar);
        }
    }

    @Override // com.batch.android.v0.b
    public void c() {
        this.f24096a.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Context context) {
        if (this.f24096a.c(context)) {
            this.f24096a.e(context);
        }
    }

    public void d(Context context) {
        if (this.g) {
            return;
        }
        com.batch.android.d.a aVarA = o.a(context);
        this.g = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.batch.android.j1.f.f23583e);
        aVarA.a(this.f24101h, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.t.b bVar, com.batch.android.t.b bVar2) {
        if (bVar2 != null) {
            t.c(f24095i, "Elected campaign has been synchronized with JIT.");
            a(bVar2);
        } else if (bVar != null) {
            t.c(f24095i, "JIT respond with no eligible campaigns or with error. Fallback on offline campaign.");
            a(bVar);
        } else {
            t.b(f24095i, "Ne eligible campaigns found after the JIT sync.");
        }
        this.f24099e.set(false);
        i();
    }

    private void a(com.batch.android.t.b bVar) {
        bVar.b();
        bVar.a();
    }

    @Override // com.batch.android.v0.b
    public void a(Context context) {
        d(context);
        c(context);
    }
}
