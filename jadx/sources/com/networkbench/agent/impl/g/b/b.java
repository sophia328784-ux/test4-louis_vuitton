package com.networkbench.agent.impl.g.b;

import com.networkbench.agent.impl.util.Logger;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37194a = "NBSWindowParser";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f37195b;

    public b(Object obj) {
        this.f37195b = a(obj, "mGlobal");
    }

    private Object a(Object obj, String str) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Exception e2) {
            Logger.error(f37194a, "get mGlobal failed", e2);
            return null;
        }
    }
}
