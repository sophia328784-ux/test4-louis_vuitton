package com.batch.android.u0;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b<c> {
    private long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AtomicBoolean f24078h;

    public c(c cVar) {
        super(cVar.f24071a);
        this.f24078h = new AtomicBoolean();
        this.f24072b = cVar.f24072b;
        this.f24073c = cVar.f24073c;
        this.f24073c = new ArrayList(cVar.f24073c);
        this.f24075f = new ConcurrentHashMap(cVar.f24075f);
        this.d = cVar.d;
        this.f24074e = cVar.f24074e;
        this.f24078h = cVar.f24078h;
        this.g = cVar.g;
    }

    @Override // com.batch.android.u0.b
    public /* bridge */ /* synthetic */ c a(List list) {
        return b((List<String>) list);
    }

    public c b(List<String> list) {
        c cVarA = new c(this.f24071a).a((String[]) this.d.toArray(new String[0]));
        cVarA.f24074e = list;
        return cVarA;
    }

    @Override // com.batch.android.u0.b
    public void j() {
        this.f24073c.clear();
        this.f24075f.clear();
    }

    public boolean l() {
        return this.f24078h.get();
    }

    public void m() {
        this.f24078h.set(false);
        this.f24073c.add(Float.valueOf((System.currentTimeMillis() - this.g) / 1000.0f));
        k();
    }

    public void n() {
        this.g = System.currentTimeMillis();
        this.f24078h.set(true);
    }

    public c(String str) {
        super(str);
        this.f24078h = new AtomicBoolean();
        this.f24072b = b.a.f24077b;
        this.f24073c = new ArrayList();
    }
}
