package com.batch.android.o;

import com.batch.android.FailReason;
import com.batch.android.a.m;
import com.batch.android.e.l0;
import com.batch.android.e.t;
import com.batch.android.e.v;
import defpackage.r81;
import defpackage.t81;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class e implements h.b {
    private static final String g = "EventSender";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.batch.android.j1.e f23846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f23847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f23848c = new AtomicBoolean(false);
    private AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f23849e = Executors.newSingleThreadExecutor(new v());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f23850f;

    public interface b {
        List<com.batch.android.o.b> a();

        void a(List<com.batch.android.o.b> list);

        void b(List<com.batch.android.o.b> list);
    }

    public e(com.batch.android.j1.e eVar, b bVar) {
        if (eVar == null) {
            r81.d("runtimeManager==null");
            throw null;
        }
        if (bVar == null) {
            r81.d("listener==null");
            throw null;
        }
        this.f23846a = eVar;
        this.f23847b = bVar;
        this.f23850f = new h(eVar.c(), this);
    }

    private void a(boolean z) {
        if (this.f23848c.get()) {
            return;
        }
        if (z || !this.f23850f.b()) {
            this.f23846a.a(new t81(this, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        List<com.batch.android.o.b> listA = this.f23847b.a();
        this.d.set(false);
        if (listA.isEmpty()) {
            this.f23848c.set(false);
            return;
        }
        t.c(g, "Start sending events : " + listA.size());
        a(listA, new a()).run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        if (this.f23848c.compareAndSet(false, true)) {
            this.f23849e.submit(new t81(this, 1));
        }
    }

    private void e() {
        a(false);
    }

    public void b() {
        this.d.set(true);
        e();
    }

    public class a implements com.batch.android.n1.i {
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(List list, com.batch.android.j1.g gVar) {
            if (gVar != com.batch.android.j1.g.OFF) {
                e.this.f23847b.b(list);
            }
        }

        @Override // com.batch.android.n1.i
        public void a(List<com.batch.android.o.b> list) {
            e.this.f23850f.d();
            e.this.f23846a.a(new i(this, list, 1));
        }

        @Override // com.batch.android.n1.i
        public void a(FailReason failReason, List<com.batch.android.o.b> list) {
            e.this.f23850f.c();
            e.this.f23846a.a(new i(this, list, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list, com.batch.android.j1.g gVar) {
            if (gVar != com.batch.android.j1.g.OFF) {
                e.this.f23847b.a(list);
            }
        }

        @Override // com.batch.android.n1.i
        public void a() {
            e.this.f23848c.set(false);
        }
    }

    @Override // com.batch.android.o.h.b
    public void a() {
        a(true);
    }

    private l0 a(List<com.batch.android.o.b> list, com.batch.android.n1.i iVar) {
        return m.a(this.f23846a, list, iVar);
    }
}
