package com.batch.android.v0;

import android.content.Context;
import com.batch.android.BatchPushRegistration;
import com.batch.android.FailReason;
import com.batch.android.a.m;
import com.batch.android.e.a0;
import com.batch.android.e.c0;
import com.batch.android.e.t;
import com.batch.android.e.v;
import com.batch.android.e.z;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.f0;
import com.batch.android.n.p;
import com.batch.android.n.w;
import com.batch.android.n.y;
import defpackage.h91;
import defpackage.i91;
import defpackage.j91;
import defpackage.u81;
import defpackage.y81;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends b implements com.batch.android.o.e.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f24133k = "Tracker";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.k1.b f24134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Queue<com.batch.android.o.b> f24135b = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f24136c = Executors.newSingleThreadExecutor(new v());
    private final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.o.e f24137e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f24138f;
    private final h g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f f24139h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.batch.android.s.a f24140i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j f24141j;

    private k(h hVar, f fVar, com.batch.android.s.a aVar, j jVar) {
        this.g = hVar;
        this.f24139h = fVar;
        this.f24140i = aVar;
        this.f24141j = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, com.batch.android.j1.g gVar) {
        if (gVar != com.batch.android.j1.g.OFF) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.batch.android.o.b bVar = (com.batch.android.o.b) it.next();
                if (bVar.j()) {
                    arrayList2.add(bVar.b());
                } else {
                    arrayList.add(bVar.b());
                }
            }
            String[] strArr = new String[arrayList.size()];
            if (!arrayList.isEmpty()) {
                this.f24134a.b((String[]) arrayList.toArray(strArr));
            }
            String[] strArr2 = new String[arrayList2.size()];
            if (arrayList2.isEmpty()) {
                return;
            }
            this.f24134a.c((String[]) arrayList2.toArray(strArr2));
        }
    }

    private JSONObject c(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        a0 a0VarA = w.a(context);
        String strA = a0VarA.a(z.P0);
        if (strA != null) {
            jSONObject.put("di", strA);
        }
        String strA2 = a0VarA.a(z.V0);
        if (strA2 != null) {
            jSONObject.put("cus", strA2);
        }
        BatchPushRegistration batchPushRegistrationB = this.f24141j.b(context);
        if (batchPushRegistrationB != null) {
            jSONObject.put("tok", batchPushRegistrationB.getToken());
            jSONObject.put("provider", batchPushRegistrationB.getProvider());
            if (batchPushRegistrationB.getSenderID() != null) {
                jSONObject.put("senderid", batchPushRegistrationB.getSenderID());
            }
            if (batchPushRegistrationB.getGcpProjectID() != null) {
                jSONObject.put("gcpproject", batchPushRegistrationB.getGcpProjectID());
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            com.batch.android.k1.b bVar = this.f24134a;
            if (bVar != null) {
                bVar.b();
            }
        } catch (Exception e2) {
            t.a(f24133k, "Error while closing DB", e2);
        }
        this.f24134a = null;
    }

    private void j() {
        if (this.d.get()) {
            t.c(f24133k, "Flush called while already flushing");
        } else if (this.f24134a == null) {
            t.c(f24133k, "Flush called in State OFF, not flushing");
        } else {
            com.batch.android.n.z.a().a(new u81(this, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void k() {
        boolean z = false;
        Object[] objArr = 0;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (this.f24134a == null) {
                return;
            }
            while (!this.f24135b.isEmpty()) {
                this.f24134a.a(this.f24135b.poll());
            }
            com.batch.android.n.z.a().a(com.batch.android.j1.g.OFF, new i91(this, objArr == true ? 1 : 0));
            com.batch.android.o.e eVar = this.f24137e;
            if (eVar != null) {
                eVar.b();
            }
        } catch (Exception e2) {
            t.c(f24133k, "Exception while flushing", e2);
        } finally {
            this.d.set(false);
        }
    }

    public static k l() {
        return new k(com.batch.android.n.v.a(), p.a(), com.batch.android.n.f.a(), y.a());
    }

    public void b(String str, JSONObject jSONObject) {
        Context contextC;
        com.batch.android.s.e eVarH = this.f24140i.h();
        if (eVarH == null || (contextC = com.batch.android.n.z.a().c()) == null) {
            return;
        }
        try {
            com.batch.android.s.e.a aVarB = eVarH.b(str, f0.a().b(contextC));
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ed", jSONObject);
                jSONObject2.put(com.batch.android.s.b.a.f24018f, aVarB.f24030c);
                jSONObject2.put("last", aVarB.d);
                jSONObject2.put(com.batch.android.s.b.a.f24015b, aVarB.f24028a);
                a(com.batch.android.o.g.f23857e, jSONObject2);
            } catch (JSONException e2) {
                t.c(f24133k, "Could not track _LC_VIEW", e2);
            }
        } catch (com.batch.android.s.f unused) {
            t.c(f24133k, "View tracker not available, not tracking view");
        }
    }

    public void d(Context context) throws JSONException {
        a(com.batch.android.o.g.o, c(context));
    }

    @Override // com.batch.android.v0.b
    public void e() {
        try {
            this.f24138f = Integer.parseInt(w.a(com.batch.android.n.z.a().c()).a(z.b1));
            Context contextC = com.batch.android.n.z.a().c();
            if (contextC == null) {
                throw new NullPointerException("Context cannot be null");
            }
            int i2 = Integer.parseInt(w.a(contextC).a(z.c1));
            com.batch.android.k1.b bVar = new com.batch.android.k1.b(contextC.getApplicationContext());
            this.f24134a = bVar;
            t.c(f24133k, "Deleted " + bVar.a(i2) + " overflow events");
            this.f24134a.d();
            if (this.f24137e == null) {
                this.f24137e = new com.batch.android.o.e(com.batch.android.n.z.a(), this);
            }
        } catch (Exception e2) {
            t.a(f24133k, "Error while starting tracker module", e2);
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "tracker";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public class a implements com.batch.android.n1.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f24142a;

        public a(c0 c0Var) {
            this.f24142a = c0Var;
        }

        @Override // com.batch.android.n1.i
        public void a(List<com.batch.android.o.b> list) {
            this.f24142a.a((Object) null);
        }

        @Override // com.batch.android.n1.i
        public void a() {
        }

        @Override // com.batch.android.n1.i
        public void a(FailReason failReason, List<com.batch.android.o.b> list) {
            this.f24142a.a((Exception) null);
        }
    }

    public void b(String str, long j2, JSONObject jSONObject) {
        if (Boolean.TRUE.equals(this.g.i())) {
            t.c(f24133k, "Batch is opted out from, refusing to track collapsible event.");
        }
        t.c(f24133k, "Tracking collapsible event : " + str);
        this.f24135b.add(new com.batch.android.o.a(com.batch.android.n.z.a().c(), j2, str, jSONObject));
        j();
        this.f24139h.e(new com.batch.android.x.a(str, jSONObject));
    }

    @Override // com.batch.android.v0.b
    public void b() {
        if (this.f24135b.isEmpty()) {
            return;
        }
        j();
    }

    @Override // com.batch.android.o.e.b
    public void b(List<com.batch.android.o.b> list) {
        t.c(f24133k, "onEventsSendSuccess");
        com.batch.android.n.z.a().a(new h91(this, list, 0));
    }

    @Override // com.batch.android.v0.b
    public void c() {
        if (this.d.get()) {
            return;
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(List list) {
        list.addAll(this.f24134a.b(this.f24138f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(List list, com.batch.android.j1.g gVar) {
        if (gVar != com.batch.android.j1.g.OFF) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((com.batch.android.o.b) it.next()).b());
            }
            this.f24134a.a((String[]) arrayList.toArray(new String[arrayList.size()]));
            if (list.size() == this.f24138f) {
                this.f24137e.b();
            }
        }
    }

    public void a(String str, JSONObject jSONObject) {
        a(str, new Date().getTime(), jSONObject);
    }

    public void a(String str, long j2, JSONObject jSONObject) {
        if (Boolean.TRUE.equals(this.g.i())) {
            t.c(f24133k, "Batch is opted out from, refusing to track event.");
        }
        t.c(f24133k, "Tracking event " + str);
        this.f24135b.add(new com.batch.android.o.b(com.batch.android.n.z.a().c(), j2, str, jSONObject));
        j();
        if (com.batch.android.n.z.a().i()) {
            this.f24139h.e(new com.batch.android.x.a(str, jSONObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Context context) {
        try {
            this.f24135b.clear();
            com.batch.android.k1.b bVar = this.f24134a;
            if (bVar != null) {
                bVar.a();
                return;
            }
            com.batch.android.k1.b bVar2 = new com.batch.android.k1.b(context);
            bVar2.a();
            bVar2.b();
        } catch (Exception e2) {
            t.c(f24133k, "Could not clear all pending events", e2);
        }
    }

    public void a(String str, long j2) {
        a(str, j2, (JSONObject) null);
    }

    public c0<Void> a(Context context, String str) {
        try {
            JSONObject jSONObjectC = c(context);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.batch.android.o.b(context, new Date().getTime(), str, jSONObjectC));
            return new c0<>(new y81(this, context, arrayList, 21));
        } catch (JSONException e2) {
            t.c(f24133k, "Could not make opt-out event data", e2);
            return c0.b((Exception) e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, List list, c0 c0Var) {
        new v().newThread(m.a(context, (List<com.batch.android.o.b>) list, new a(c0Var))).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.j1.g gVar) {
        if (gVar == com.batch.android.j1.g.OFF || !this.d.compareAndSet(false, true)) {
            return;
        }
        t.c(f24133k, "Starting a new flush executor");
        this.f24136c.submit(new i91(this, 1));
    }

    @Override // com.batch.android.o.e.b
    public void a(List<com.batch.android.o.b> list) {
        t.c(f24133k, "onEventsSendFailure");
        com.batch.android.n.z.a().a(new h91(this, list, 1));
    }

    public void a(String str) {
        a(str, (JSONObject) null);
    }

    public void e(Context context) {
        this.f24136c.submit(new j91(this, context.getApplicationContext(), 1));
    }

    @Override // com.batch.android.o.e.b
    public List<com.batch.android.o.b> a() {
        ArrayList arrayList = new ArrayList();
        com.batch.android.n.z.a().a(new j91(this, arrayList, 0));
        return arrayList;
    }
}
