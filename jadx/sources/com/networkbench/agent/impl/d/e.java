package com.networkbench.agent.impl.d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36726c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Collection<com.networkbench.agent.impl.d.c.b> f36727a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Collection<com.networkbench.agent.impl.d.a.c> f36728b = new ArrayList();

    private void a(List<a> list) {
        if (list.size() <= 0) {
            return;
        }
        synchronized (this.f36728b) {
            try {
                for (com.networkbench.agent.impl.d.a.c cVar : this.f36728b) {
                    for (a aVar : new ArrayList(list)) {
                        if (cVar.b() == aVar.a()) {
                            cVar.a(aVar);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(com.networkbench.agent.impl.d.a.c cVar) {
        synchronized (this.f36728b) {
            try {
                if (this.f36728b.contains(cVar)) {
                    this.f36728b.remove(cVar);
                    return;
                }
                f36726c.f("Attempted to remove MeasurementConsumer " + cVar + " which is not registered.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(com.networkbench.agent.impl.d.c.b bVar) {
        if (this.f36727a.contains(bVar)) {
            this.f36727a.remove(bVar);
        }
    }

    private List<a> b() {
        ArrayList arrayList = new ArrayList();
        Iterator<com.networkbench.agent.impl.d.c.b> it = this.f36727a.iterator();
        while (it.hasNext()) {
            Collection<a> collectionB = it.next().b();
            if (collectionB.size() > 0) {
                arrayList.addAll(collectionB);
            }
        }
        return arrayList;
    }

    public void a(com.networkbench.agent.impl.d.a.c cVar) {
        synchronized (this.f36728b) {
            try {
                if (this.f36728b.contains(cVar)) {
                    f36726c.f("Attempted to add the same MeasurementConsumer " + cVar + " multiple times.");
                    return;
                }
                this.f36728b.add(cVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a() {
        try {
            f36726c.d("broadcast measurement");
            a(b());
        } catch (Throwable th) {
            f36726c.a("MeasurementPool broadcastMeasurements  error : ", th);
        }
    }

    public void a(com.networkbench.agent.impl.d.c.b bVar) {
        if (this.f36727a.contains(bVar)) {
            return;
        }
        this.f36727a.add(bVar);
    }
}
