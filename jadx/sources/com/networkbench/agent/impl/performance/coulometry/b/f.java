package com.networkbench.agent.impl.performance.coulometry.b;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, d> f37861a = new HashMap();

    public synchronized void a() {
        Iterator<Map.Entry<String, d>> it = this.f37861a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().g();
        }
    }

    public void b() {
        Iterator<Map.Entry<String, d>> it = this.f37861a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().h();
        }
    }

    public synchronized d a(String str) {
        return this.f37861a.get(str);
    }

    public synchronized void a(String str, d dVar) {
        this.f37861a.put(str, dVar);
    }

    public synchronized void a(boolean z) {
        Iterator<Map.Entry<String, d>> it = this.f37861a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().a(z);
        }
    }
}
