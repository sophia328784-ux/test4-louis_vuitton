package com.networkbench.agent.impl.plugin.f;

import android.text.TextUtils;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.r;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    protected static com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.networkbench.agent.impl.plugin.e f38064e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<com.networkbench.agent.impl.plugin.h> f38062b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Map<String, Object> f38063c = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected AtomicInteger f38065f = new AtomicInteger(0);

    public i(com.networkbench.agent.impl.plugin.e eVar) {
        this.f38064e = eVar;
    }

    private boolean b(com.networkbench.agent.impl.plugin.h hVar) {
        Iterator<com.networkbench.agent.impl.plugin.h> it = this.f38062b.iterator();
        while (it.hasNext()) {
            if (it.next().d().equals(hVar.d())) {
                com.networkbench.agent.impl.c.g.e("这个pluginObserver已经注册过类似的了.." + hVar.toString());
                return true;
            }
        }
        return false;
    }

    public abstract void a();

    public void a(String str) {
        e eVar;
        if (this.f38065f.incrementAndGet() == this.f38062b.size()) {
            a();
        }
        f();
        com.networkbench.agent.impl.c.g.e("onResponse  执行完一个task Id :  " + str);
        if (TextUtils.isEmpty(str) || (eVar = h.f38061i.get(str)) == null) {
            return;
        }
        eVar.f38054b = false;
        com.networkbench.agent.impl.c.g.e("onResponse  执行完一个task Id observerData state:  false");
    }

    public List<com.networkbench.agent.impl.plugin.h> c() {
        return this.f38062b;
    }

    public void d() {
        com.networkbench.agent.impl.c.g.e("PluginObserver  notifyObservers  list.size():" + this.f38062b.size());
        if (this.f38062b.size() <= 0) {
            a();
            return;
        }
        for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
            com.networkbench.agent.impl.c.g.e("PluginObserver  notifyObservers    pluginObserver.getClass().getSimpleName()".concat(hVar.getClass().getSimpleName()));
            hVar.e();
        }
    }

    public Map<String, Object> e() {
        return this.f38063c;
    }

    public synchronized void f() {
        try {
            for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
                if (hVar.l && !hVar.m && !hVar.f38124i.a()) {
                    if (!r.o) {
                        ai.a(hVar);
                    }
                    hVar.m = true;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(com.networkbench.agent.impl.plugin.h hVar, Boolean bool) {
        if (hVar != null) {
            synchronized (this.f38062b) {
                try {
                    if (bool.booleanValue() && b(hVar)) {
                        return;
                    }
                    this.f38062b.add(hVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void a(com.networkbench.agent.impl.plugin.h hVar) {
        if (hVar != null) {
            this.f38062b.remove(hVar);
        }
    }

    public void a(String str, Object obj) {
        this.f38063c.put(str, obj);
    }
}
