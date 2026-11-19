package com.networkbench.agent.impl.performance.coulometry.c;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends f {
    public g(Context context, com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        super(context, bVar);
    }

    public void a(Method method, Object[] objArr) {
        try {
            e eVarA = this.f37917a.a(method);
            if (eVarA != null) {
                eVarA.a(method, objArr);
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.y("ServiceProxyHook invoke error:" + th.getMessage());
        }
    }

    public abstract String c();

    public abstract String d();

    public String e() {
        return c();
    }
}
