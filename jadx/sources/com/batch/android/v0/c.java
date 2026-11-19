package com.batch.android.v0;

import android.content.Context;
import com.android.wiimu.model.WiimuPendingSlave;
import com.batch.android.n.e0;
import com.batch.android.n.f0;
import com.batch.android.n.p;
import com.batch.android.n.t;
import com.batch.android.n.x;
import com.batch.android.n.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<b> f24086a;

    private c(List<b> list) {
        this.f24086a = list;
    }

    public static c i() {
        ArrayList arrayList = new ArrayList(8);
        arrayList.add(com.batch.android.n.a.a());
        arrayList.add(com.batch.android.n.i.a());
        arrayList.add(p.a());
        arrayList.add(t.a());
        arrayList.add(y.a());
        arrayList.add(e0.a());
        arrayList.add(f0.a());
        arrayList.add(x.a());
        arrayList.add(com.batch.android.n.g.a());
        return new c(arrayList);
    }

    @Override // com.batch.android.v0.b
    public void a(Context context) {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().a(context);
        }
    }

    @Override // com.batch.android.v0.b
    public void b() {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // com.batch.android.v0.b
    public void c() {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // com.batch.android.v0.b
    public void d() {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    @Override // com.batch.android.v0.b
    public void e() {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // com.batch.android.v0.b
    public void f() {
        Iterator<b> it = this.f24086a.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return WiimuPendingSlave.Master;
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }
}
