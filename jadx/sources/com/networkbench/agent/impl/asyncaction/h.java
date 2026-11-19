package com.networkbench.agent.impl.asyncaction;

import defpackage.md;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36414a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List<String> f36415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<d> f36416c = new CopyOnWriteArrayList();

    public class a implements InvocationHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f36418b;

        public a(Object obj) {
            this.f36418b = obj;
        }

        private boolean a(String str) {
            return h.f36415b.contains(str);
        }

        private void b(String str) {
            Iterator it = h.this.f36416c.iterator();
            while (it.hasNext()) {
                ((d) it.next()).preMethod();
            }
        }

        private void c(String str) {
            Iterator it = h.this.f36416c.iterator();
            while (it.hasNext()) {
                ((d) it.next()).sufMethod();
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            if (a(name)) {
                b(name);
            }
            Object objInvoke = method.invoke(this.f36418b, objArr);
            if (a(name)) {
                c(name);
            }
            return objInvoke;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f36415b = arrayList;
        arrayList.add("run");
        arrayList.add("call");
    }

    public Object a(Object obj) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new a(obj));
    }

    public void b(d dVar) {
        if (dVar != null) {
            this.f36416c.remove(dVar);
        } else {
            md.n("error handler can not null");
        }
    }

    public void a(d dVar) {
        if (dVar != null) {
            this.f36416c.add(dVar);
        } else {
            md.n("error handler can not null");
        }
    }
}
