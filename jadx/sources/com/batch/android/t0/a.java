package com.batch.android.t0;

import android.content.Context;
import com.batch.android.a.m;
import com.batch.android.e.e;
import com.batch.android.e.i0;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.n.z;
import com.batch.android.n1.f;
import com.batch.android.u0.c;
import defpackage.w21;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f24058f = "MetricManager";
    private static final int g = 60000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f24059h = 1000;
    private long d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.batch.android.u0.b<?>> f24060a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f24061b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f24062c = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f24063e = new i0();

    /* JADX INFO: renamed from: com.batch.android.t0.a$a, reason: collision with other inner class name */
    public class C0075a implements f {
        public C0075a() {
        }

        @Override // com.batch.android.n1.f
        public void a(o0.d dVar) {
            t.c(a.f24058f, "Fail sending metrics.");
            long jC = dVar.c() != 0 ? dVar.c() : 60000L;
            a aVar = a.this;
            aVar.d = aVar.f24063e.a().a() + jC;
            a.this.f24061b.set(false);
        }

        @Override // com.batch.android.n1.f
        public void onSuccess() {
            t.c(a.f24058f, "Metrics sent with success.");
            a.this.f24061b.set(false);
        }
    }

    private List<com.batch.android.u0.b<?>> a() {
        ArrayList arrayList;
        synchronized (this.f24060a) {
            try {
                arrayList = new ArrayList();
                for (com.batch.android.u0.b<?> bVar : this.f24060a) {
                    if (bVar.h()) {
                        for (Object obj : bVar.a().values()) {
                            if (obj instanceof com.batch.android.u0.a) {
                                com.batch.android.u0.a aVar = (com.batch.android.u0.a) obj;
                                if (aVar.g()) {
                                    arrayList.add(new com.batch.android.u0.a((com.batch.android.u0.a) obj));
                                    aVar.j();
                                }
                            } else {
                                c cVar = (c) obj;
                                if (cVar.g()) {
                                    arrayList.add(new c((c) obj));
                                    cVar.j();
                                }
                            }
                        }
                    } else if (bVar.g()) {
                        if (bVar instanceof com.batch.android.u0.a) {
                            arrayList.add(new com.batch.android.u0.a((com.batch.android.u0.a) bVar));
                        } else {
                            arrayList.add(new c((c) bVar));
                        }
                        bVar.j();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    private boolean b() {
        return this.f24063e.a().a() >= this.d;
    }

    public static a c() {
        return new a();
    }

    public void d() {
        if (!this.f24061b.get() && b()) {
            this.f24061b.set(true);
            this.f24062c.schedule(new w21(this, z.a().c(), 20), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    public void a(com.batch.android.u0.b<?> bVar) {
        synchronized (this.f24060a) {
            this.f24060a.add(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        l0 l0VarA;
        List<com.batch.android.u0.b<?>> listA = a();
        if (listA.isEmpty() || (l0VarA = m.a(context, new com.batch.android.b1.e(listA), new C0075a())) == null) {
            return;
        }
        l0VarA.run();
    }
}
