package com.networkbench.agent.impl.asyncaction;

import android.os.Handler;
import com.networkbench.agent.impl.util.ak;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36427a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36428b = "nbsHandler";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36429c = "handleMessage";

    private boolean b() {
        if (!com.networkbench.agent.impl.util.r.u().af()) {
            f36427a.a("ui is closed");
            return false;
        }
        q qVarA = a();
        if (qVarA != null && qVarA.e() != null) {
            return true;
        }
        f36427a.f("traceEngine or currentContextTrace is null, skip async hook");
        return false;
    }

    public <T> void a(T t) throws Exception {
        if (b()) {
            com.networkbench.agent.impl.c.e eVar = f36427a;
            eVar.a("invoke source: " + ak.f(6));
            eVar.a("configInstrumentHandler to instrumentObj:".concat(t.getClass().getName()));
            if ((t instanceof Handler) && b(t)) {
                eVar.f("handler not rewrite handleMessage, skip");
            } else {
                a(t, new NBSRunnableHandler(a()));
            }
        }
    }

    private <T> boolean b(T t) {
        return t.getClass().isAssignableFrom(Handler.class);
    }

    public q a() {
        return q.a();
    }

    private <T> void a(T t, NBSRunnableHandler nBSRunnableHandler) {
        Field declaredField;
        try {
            try {
                declaredField = t.getClass().getField(f36428b);
            } catch (Exception e2) {
                f36427a.f("getField nbsHandler failed" + e2);
                declaredField = null;
            }
            if (declaredField == null) {
                declaredField = t.getClass().getDeclaredField(f36428b);
            }
            declaredField.setAccessible(true);
            declaredField.set(t, nBSRunnableHandler);
        } catch (Exception e3) {
            f36427a.a("set nbsHandler failed", e3);
        }
    }
}
