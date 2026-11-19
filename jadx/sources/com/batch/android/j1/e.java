package com.batch.android.j1;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.batch.android.e.t;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static final String n = "RuntimeManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23573a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Date f23575c;
    private Activity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f23576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f23577f;
    private Date g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ReentrantReadWriteLock f23579i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ReentrantReadWriteLock.ReadLock f23580j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ReentrantReadWriteLock.WriteLock f23581k;
    private final b l;
    private final com.batch.android.j.a m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f23574b = new AtomicInteger(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g f23578h = g.OFF;

    public class a implements d.a {
        public a() {
        }

        @Override // com.batch.android.j1.d.a
        public void a() {
            e.this.m.a();
        }

        @Override // com.batch.android.j1.d.a
        public void b() {
        }
    }

    public e() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f23579i = reentrantReadWriteLock;
        this.f23580j = reentrantReadWriteLock.readLock();
        this.f23581k = reentrantReadWriteLock.writeLock();
        this.l = new b();
        this.m = new com.batch.android.j.a();
    }

    public void a(Application application, boolean z) {
        if (this.f23577f == null) {
            f fVar = new f();
            this.f23577f = fVar;
            application.registerActivityLifecycleCallbacks(fVar);
            application.registerComponentCallbacks(this.f23577f);
            if (z) {
                Activity activityB = b();
                if (activityB == null) {
                    t.a(n, "Could not replay activity lifecycle on the session manager, since no activity was set. This should not happen. Sessions will NOT be tracked correctly. Please report this to Batch's support.");
                    return;
                }
                this.f23577f.onActivityCreated(activityB, null);
                this.f23577f.onActivityStarted(activityB);
                this.f23577f.a(activityB);
            }
        }
    }

    public void b(c cVar) {
        this.f23581k.lock();
        try {
            if (this.f23578h != g.OFF) {
                return;
            }
            cVar.a(this.l);
        } finally {
            this.f23581k.unlock();
        }
    }

    public Context c() {
        return this.f23573a;
    }

    public Date d() {
        return this.f23575c;
    }

    public String e() {
        f fVar = this.f23577f;
        if (fVar == null) {
            return null;
        }
        return fVar.b();
    }

    public f f() {
        return this.f23577f;
    }

    public void g() {
        this.f23574b.incrementAndGet();
    }

    public boolean h() {
        d dVar = this.f23576e;
        if (dVar == null) {
            return false;
        }
        return dVar.a();
    }

    public boolean i() {
        return this.f23578h == g.READY;
    }

    public boolean j() {
        int i2 = this.f23574b.get();
        if (i2 >= 0) {
            return i2 != 0;
        }
        t.a(n, "Batch has been under-locked. You probably called Batch.onServiceDestroy() too many times. Recovering, but this may leave Batch in an undesired state.");
        do {
            int i3 = this.f23574b.get();
            if (i2 >= 0) {
                return i3 != 0;
            }
        } while (!this.f23574b.compareAndSet(i2, 0));
        return false;
    }

    public Long k() {
        try {
            Date date = this.g;
            return date != null ? Long.valueOf(date.getTime()) : null;
        } finally {
            this.g = null;
        }
    }

    public void l() {
        if (this.f23578h != g.READY) {
            return;
        }
        this.g = new Date();
    }

    public void m() {
        this.f23574b.set(0);
    }

    public void n() {
        this.f23575c = new Date();
    }

    public Activity b() {
        return this.d;
    }

    public void a(c cVar) {
        this.f23580j.lock();
        try {
            cVar.a(this.l.a());
        } finally {
            this.f23580j.unlock();
        }
    }

    public boolean a(com.batch.android.j1.a aVar) {
        ReentrantReadWriteLock.WriteLock writeLock;
        this.f23581k.lock();
        try {
            g gVarA = aVar.a(this.f23578h, this.l);
            if (gVarA == null) {
                return false;
            }
            this.f23578h = gVarA;
            return true;
        } finally {
            this.f23581k.unlock();
        }
    }

    public boolean a(g gVar, com.batch.android.j1.a aVar) {
        this.f23581k.lock();
        try {
            g gVar2 = this.f23578h;
            if (gVar2 != gVar) {
                return false;
            }
            g gVarA = aVar.a(gVar2, this.l);
            if (gVarA == null) {
                return false;
            }
            this.f23578h = gVarA;
            return true;
        } finally {
            this.f23581k.unlock();
        }
    }

    public void a(h hVar) {
        this.f23580j.lock();
        try {
            hVar.a(this.f23578h);
        } finally {
            this.f23580j.unlock();
        }
    }

    public void a(g gVar, h hVar) {
        this.f23580j.lock();
        try {
            g gVar2 = this.f23578h;
            if (gVar2 != gVar) {
                return;
            }
            hVar.a(gVar2);
        } finally {
            this.f23580j.unlock();
        }
    }

    public boolean a(Runnable runnable) {
        return a(g.READY, runnable);
    }

    public boolean a(g gVar, Runnable runnable) {
        ReentrantReadWriteLock.ReadLock readLock;
        this.f23580j.lock();
        try {
            if (this.f23578h != gVar) {
                return false;
            }
            runnable.run();
            return true;
        } finally {
            this.f23580j.unlock();
        }
    }

    public void a(Activity activity) {
        this.d = activity;
    }

    public void a() {
        this.f23574b.decrementAndGet();
    }

    public void a(Context context) {
        if (context != null) {
            context = context.getApplicationContext();
        }
        this.f23573a = context;
    }

    public void a(Application application) {
        if (this.f23576e == null) {
            d dVar = new d();
            this.f23576e = dVar;
            dVar.a(new a());
            application.registerActivityLifecycleCallbacks(this.f23576e);
        }
    }
}
