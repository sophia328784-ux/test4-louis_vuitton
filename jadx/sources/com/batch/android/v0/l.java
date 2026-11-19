package com.batch.android.v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.os.SystemClock;
import android.text.TextUtils;
import com.batch.android.a.m;
import com.batch.android.e.t;
import com.batch.android.e.v;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.a0;
import com.batch.android.n.e0;
import com.batch.android.n.f0;
import com.batch.android.n.o;
import com.batch.android.n.w;
import com.batch.android.n.z;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.c7;
import defpackage.e5;
import defpackage.k91;
import defpackage.kd0;
import defpackage.l91;
import defpackage.xb;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends com.batch.android.v0.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f24144f = "User";
    public static final String g = "label";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f24145h = "attributes";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f24147j = 30000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f24148k = 172800000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BroadcastReceiver f24150b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f24152e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f24146i = Pattern.compile("^[a-zA-Z0-9_]{1,30}$");
    private static ScheduledExecutorService l = m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.batch.android.l1.j> f24149a = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f24151c = new AtomicBoolean(false);
    private long d = 0;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (h.f24114e.equalsIgnoreCase(intent.getAction())) {
                l.o();
            }
        }
    }

    private l(k kVar) {
        this.f24152e = kVar;
    }

    public static void c(List<com.batch.android.l1.i> list) throws b {
        Context contextC = z.a().c();
        if (contextC == null) {
            throw new b("Error while applying. Make sure Batch is started beforehand, and not globally opted out from.", "'context' was null while saving.");
        }
        com.batch.android.l1.c cVarA = a0.a(contextC);
        long j2 = Long.parseLong(w.a(contextC).a(com.batch.android.e.z.k1, ContentTree.ROOT_ID)) + 1;
        try {
            cVarA.a(j2);
            HashMap<String, com.batch.android.l1.d> attributes = cVarA.getAttributes();
            Map<String, Set<String>> mapC = cVarA.c();
            Iterator<com.batch.android.l1.i> it = list.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(cVarA);
                } catch (Exception e2) {
                    try {
                        cVarA.e();
                    } catch (com.batch.android.l1.f e3) {
                        t.c(com.batch.android.l1.b.TAG, "Save - Error while rolling back transaction.", e3);
                    }
                    throw new b("An internal error occurred while applying the changes (code 41)", "Save - Callable exception", e2);
                }
            }
            try {
                cVarA.d();
                com.batch.android.l1.e.b bVar = new com.batch.android.l1.e(cVarA.getAttributes(), attributes, cVarA.c(), mapC).f23674a;
                if (!bVar.a()) {
                    t.c(com.batch.android.l1.b.TAG, "Changeset not bumped");
                    return;
                }
                com.batch.android.e.a0 a0VarA = w.a(contextC);
                a0VarA.a(com.batch.android.e.z.k1, Long.toString(j2), true);
                a0VarA.b(com.batch.android.e.z.l1);
                f0.a().d(0L);
                try {
                    e0.a().a(com.batch.android.o.g.g, bVar.a(j2));
                } catch (JSONException unused) {
                    t.c(com.batch.android.l1.b.TAG, "Could not serialize install data diff");
                    e0.a().a(com.batch.android.o.g.f23860i);
                }
                t.c(com.batch.android.l1.b.TAG, "Changeset bumped");
            } catch (com.batch.android.l1.f e4) {
                try {
                    cVarA.e();
                } catch (com.batch.android.l1.f e5) {
                    t.c(com.batch.android.l1.b.TAG, "Error while rolling back transaction.", e5);
                }
                throw new b("An internal error occurred while applying the changes (code 42)", "Save - Commit exception", e4);
            }
        } catch (com.batch.android.l1.f e6) {
            throw new b("An internal error occurred while applying the changes (code 40)", "Could not acquire transaction lock", e6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Context context) {
        a0.a(context).clear();
        com.batch.android.e.a0 a0VarA = w.a(context);
        a0VarA.b(com.batch.android.e.z.n1);
        a0VarA.b(com.batch.android.e.z.m1);
        a0VarA.b(com.batch.android.e.z.W0);
        a0VarA.b(com.batch.android.e.z.k1);
        a0VarA.b(com.batch.android.e.z.l1);
        l.shutdownNow();
    }

    public static void h(Context context) {
        a(0L, new c7(context.getApplicationContext(), 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        long j2;
        if (this.f24151c.compareAndSet(true, false)) {
            Context contextC = z.a().c();
            if (contextC == null) {
                t.c(f24144f, "Internal error while sending attributes check WS: null context");
                return;
            }
            try {
                com.batch.android.e.a0 a0VarA = w.a(contextC);
                try {
                    j2 = Long.parseLong(a0VarA.a(com.batch.android.e.z.k1, ContentTree.ROOT_ID));
                } catch (NumberFormatException unused) {
                    j2 = 0;
                }
                String strA = a0VarA.a(com.batch.android.e.z.l1, "");
                if (TextUtils.isEmpty(strA)) {
                    if (j2 > 0) {
                        d(0L);
                    }
                } else {
                    if (j2 <= 0) {
                        j2 = 1;
                        a0VarA.a(com.batch.android.e.z.k1, Long.toString(1L), true);
                    }
                    m.a(z.a(), j2, strA);
                }
            } catch (Exception e2) {
                t.c(f24144f, "Internal error while sending attributes check WS", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k() {
        long j2;
        Context contextC = z.a().c();
        if (contextC == null) {
            t.c(f24144f, "Internal error while sending attributes send WS: null context");
            return;
        }
        try {
            com.batch.android.e.a0 a0VarA = w.a(contextC);
            try {
                j2 = Long.parseLong(a0VarA.a(com.batch.android.e.z.k1, ContentTree.ROOT_ID));
            } catch (NumberFormatException unused) {
                j2 = 0;
            }
            if (j2 <= 0) {
                j2 = 1;
                a0VarA.a(com.batch.android.e.z.k1, Long.toString(1L), true);
            }
            com.batch.android.l1.c cVarA = a0.a(contextC);
            m.a(z.a(), j2, com.batch.android.l1.d.a(cVarA.getAttributes(), true), cVarA.c());
        } catch (Exception e2) {
            t.c(f24144f, "Internal error while sending attributes send WS", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        LinkedList linkedList = new LinkedList();
        if (this.f24149a.size() >= 3) {
            t.e(com.batch.android.l1.b.TAG, "It looks like you are using many instances of BatchUserDataEditor. Please check our documentation to ensure you are using this api correctly: https://doc.batch.com/android/custom-data/custom-attributes#methods");
        }
        Iterator<com.batch.android.l1.j> it = this.f24149a.iterator();
        while (it.hasNext()) {
            linkedList.addAll(it.next().a());
        }
        this.f24149a.clear();
        if (linkedList.isEmpty()) {
            return;
        }
        try {
            c(linkedList);
        } catch (b e2) {
            t.a(f24144f, e2.getMessage());
        }
    }

    private static ScheduledExecutorService m() {
        return Executors.newSingleThreadScheduledExecutor(new v());
    }

    public static l n() {
        return new l(e0.a());
    }

    public static void o() {
        if (l.isShutdown()) {
            l = m();
        }
    }

    public void a(Location location) {
        if (location == null) {
            return;
        }
        if (this.d <= 0) {
            t.c(f24144f, "Tracking location because no location has been tracked yet");
        } else {
            if (SystemClock.elapsedRealtime() - this.d < f24147j) {
                t.c(f24144f, "Not tracking location event");
                return;
            }
            t.c(f24144f, "Tracking location event since the elapsed time is greater than the minimum threshold");
        }
        double dMax = Math.max(0.0d, location.getAccuracy());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lat", location.getLatitude());
            jSONObject.put("lng", location.getLongitude());
            jSONObject.put("acc", dMax);
            long time = location.getTime();
            if (time > 0) {
                jSONObject.put("date", time);
            }
            this.f24152e.b(com.batch.android.o.g.f23861j, new Date().getTime(), jSONObject);
            this.d = SystemClock.elapsedRealtime();
        } catch (JSONException e2) {
            t.a(f24144f, "Failed to track location", e2);
        }
    }

    @Override // com.batch.android.v0.b
    public void b() {
        super.b();
        c(1000L);
        Context contextC = z.a().c();
        if (contextC != null) {
            String strA = w.a(contextC).a(com.batch.android.e.z.L0);
            if (strA != null) {
                try {
                    if (Long.parseLong(strA) <= System.currentTimeMillis() - f24148k) {
                        w.a(contextC).b(com.batch.android.e.z.L0);
                    }
                } catch (NumberFormatException unused) {
                    w.a(contextC).b(com.batch.android.e.z.L0);
                }
            }
            if (this.f24150b == null) {
                this.f24150b = new a();
                o.a(contextC).a(this.f24150b, new IntentFilter(h.f24114e));
            }
        }
        e(0L);
    }

    public String d(Context context) {
        return w.a(context).a(com.batch.android.e.z.n1);
    }

    public void e(long j2) {
        synchronized (this.f24149a) {
            try {
                if (this.f24149a.isEmpty()) {
                    return;
                }
                a(j2, new k91(this, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void f(Context context) {
        w.a(context).a(com.batch.android.e.z.W0, Long.toString(e(context) + 1), true);
    }

    public void i() {
        a(0L, new com.batch.android.l1.j(Collections.singletonList(new l91())));
    }

    public static class b extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f24154b;

        public b(String str, String str2) {
            super(str);
            this.f24154b = str2;
        }

        public void a() {
            t.a(com.batch.android.l1.b.TAG, getMessage());
            t.c(com.batch.android.l1.b.TAG, this.f24154b, getCause());
        }

        public b(String str, String str2, Throwable th) {
            super(str, th);
            this.f24154b = str2;
        }
    }

    public void d(long j2) {
        a(j2, new e5(10));
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public long e(Context context) {
        String strA = w.a(context).a(com.batch.android.e.z.W0);
        if (strA == null) {
            return 1L;
        }
        try {
            return Long.parseLong(strA);
        } catch (Exception unused) {
            return 1L;
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "user";
    }

    public void b(Context context, String str) {
        if (str != null) {
            w.a(context).a(com.batch.android.e.z.m1, str, true);
        } else {
            w.a(context).b(com.batch.android.e.z.m1);
        }
    }

    public String b(Context context) {
        return w.a(context).a(com.batch.android.e.z.V0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j2) {
        long j3;
        try {
            com.batch.android.e.a0 a0VarA = w.a(z.a().c());
            try {
                j3 = Long.parseLong(a0VarA.a(com.batch.android.e.z.k1, ContentTree.ROOT_ID));
            } catch (NumberFormatException unused) {
                j3 = 0;
            }
            long j4 = j2 + 1;
            if (j3 < j4) {
                a0VarA.a(com.batch.android.e.z.k1, Long.toString(j4), true);
                a0VarA.b(com.batch.android.e.z.l1);
                d(0L);
            }
        } catch (Exception e2) {
            t.c(f24144f, "Internal error while bumping user data version", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.batch.android.l1.c cVar) throws Exception {
        cVar.a();
        cVar.b();
    }

    public void a(String str, long j2) {
        if (j2 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        a(0L, new kd0(this, j2, str, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j2, String str) {
        long j3;
        try {
            com.batch.android.e.a0 a0VarA = w.a(z.a().c());
            try {
                j3 = Long.parseLong(a0VarA.a(com.batch.android.e.z.k1, ContentTree.ROOT_ID));
            } catch (NumberFormatException unused) {
                j3 = 0;
            }
            if (j3 == j2) {
                a0VarA.a(com.batch.android.e.z.l1, str, true);
                c(15000L);
            }
        } catch (Exception e2) {
            t.c(f24144f, "Internal error while storing transaction ID", e2);
        }
    }

    public void a(long j2) {
        a(0L, new xb(this, j2, 2));
    }

    public void a(Context context, String str) {
        if (str != null) {
            w.a(context).a(com.batch.android.e.z.V0, str, true);
        } else {
            w.a(context).b(com.batch.android.e.z.V0);
        }
    }

    public static void a(long j2, Runnable runnable) {
        if (!l.isShutdown()) {
            l.schedule(runnable, j2, TimeUnit.MILLISECONDS);
        } else {
            t.a(com.batch.android.l1.b.TAG, "Could not perform User Data operation. Is this installation currently opted out from Batch?");
        }
    }

    public void a(long j2, com.batch.android.l1.j jVar) {
        synchronized (this.f24149a) {
            this.f24149a.add(jVar);
        }
        if (!z.a().i()) {
            t.c(com.batch.android.l1.b.TAG, "Batch is not started, enqueuing user operations");
        } else {
            e(j2);
        }
    }

    public void c(Context context, String str) {
        if (str != null) {
            w.a(context).a(com.batch.android.e.z.n1, str, true);
        } else {
            w.a(context).b(com.batch.android.e.z.n1);
        }
    }

    public void c(long j2) {
        this.f24151c.set(true);
        a(j2, new k91(this, 0));
    }

    public String c(Context context) {
        return w.a(context).a(com.batch.android.e.z.m1);
    }
}
