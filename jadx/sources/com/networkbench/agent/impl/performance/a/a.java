package com.networkbench.agent.impl.performance.a;

import android.app.Activity;
import com.networkbench.agent.impl.data.type.l;
import com.networkbench.agent.impl.performance.a.d.d;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class a implements l, com.networkbench.agent.impl.performance.a.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<d> f37612a = new CopyOnWriteArrayList();

    @Override // com.networkbench.agent.impl.data.type.l
    public void a(Activity activity, boolean z) {
        Iterator<d> it = this.f37612a.iterator();
        while (it.hasNext()) {
            it.next().a(activity.getLocalClassName());
        }
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void b(Activity activity, boolean z) {
        Iterator<d> it = this.f37612a.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void c(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void d(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void e(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void b(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.performance.a.d.a
    public String b() {
        return "demoavtivity";
    }

    @Override // com.networkbench.agent.impl.performance.a.d.a
    public boolean a() {
        return true;
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void a(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.performance.a.d.a
    public void a(d dVar) {
        if (dVar == null || this.f37612a.contains(dVar)) {
            return;
        }
        this.f37612a.add(dVar);
    }
}
