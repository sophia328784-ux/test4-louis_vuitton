package com.batch.android.n0;

import android.os.SystemClock;
import android.util.LruCache;
import android.view.View;
import android.widget.ScrollView;
import com.batch.android.BatchMessage;
import com.batch.android.e.f0;
import com.batch.android.e.t;
import com.batch.android.i;
import defpackage.f31;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.batch.android.l0.a implements a.InterfaceC0063a, com.batch.android.o0.a.InterfaceC0065a {
    private final com.batch.android.h0.b o;
    private final LruCache<String, com.batch.android.z.a.d> p;

    private c(com.batch.android.v0.g gVar, View view, BatchMessage batchMessage, com.batch.android.h0.b bVar, i iVar, boolean z) {
        super(view, gVar, iVar, batchMessage, z);
        this.o = bVar;
        this.p = new LruCache<>(1);
        this.f23642e.setFitsSystemWindows(true);
        super.h();
        f0.b(this.f23642e);
    }

    private a n() {
        return (a) this.f23643f;
    }

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void a(int i2, com.batch.android.f0.b bVar) {
        c(true);
        this.f23641c.a(i2, bVar);
        this.f23640b.a(this.f23639a, this.g, bVar);
    }

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void b() {
        c(true);
        this.f23641c.a(this.o.f23455j);
        com.batch.android.f0.a aVar = this.o.f23455j;
        if (aVar != null) {
            this.f23640b.a(this.f23639a, this.g, aVar);
        } else {
            t.c(com.batch.android.v0.g.f24103i, "Could not perform global tap action. Internal error.");
        }
    }

    @Override // com.batch.android.l0.a
    public boolean c() {
        return this.o.l;
    }

    @Override // com.batch.android.l0.a
    public com.batch.android.l0.a.e d() {
        return n().getPinnedVerticalEdge();
    }

    @Override // com.batch.android.l0.a
    public ScrollView e() {
        return null;
    }

    @Override // com.batch.android.l0.a
    public void k() {
        if (this.o.q <= 0 || !n().e()) {
            return;
        }
        n().i();
        this.m.postAtTime(new f31(this, 14), this.f23647k, SystemClock.uptimeMillis() + ((long) this.o.q));
    }

    @Override // com.batch.android.l0.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public a g() {
        a aVar = new a(this.f23639a, this.o, null, new com.batch.android.a0.b("root", new String[0]), this);
        aVar.setActionListener(this);
        return aVar;
    }

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void a() {
        c(true);
        this.f23641c.b();
    }

    public static c a(View view, BatchMessage batchMessage, com.batch.android.h0.b bVar, i iVar, boolean z) {
        return new c(com.batch.android.n.t.a(), view, batchMessage, bVar, iVar, z);
    }

    @Override // com.batch.android.o0.a.InterfaceC0065a
    public void a(com.batch.android.z.a.d dVar) {
        this.p.put(dVar.b(), dVar);
    }

    @Override // com.batch.android.o0.a.InterfaceC0065a
    public com.batch.android.z.a.d b(String str) {
        return this.p.get(str);
    }
}
