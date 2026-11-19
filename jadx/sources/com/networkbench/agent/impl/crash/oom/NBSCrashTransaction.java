package com.networkbench.agent.impl.crash.oom;

import com.networkbench.agent.impl.crash.i;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import defpackage.r81;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSCrashTransaction {
    private static final String TAG = "NBSCrashTransaction";

    public static com.networkbench.agent.impl.crash.c crashParseFromString(String str) throws NullPointerException {
        try {
            return new com.networkbench.agent.impl.crash.c(str);
        } catch (Throwable unused) {
            r81.d("crash init is null");
            return null;
        }
    }

    public static String formatCrashAsString(long j2) {
        try {
            if (r.q) {
                com.networkbench.agent.impl.crash.c.f36636a = i.a();
            }
            return new com.networkbench.agent.impl.crash.c(null, j2 / 1000, v.g(r.u().J()), v.c("1"), new HashMap(), r.u().d(System.currentTimeMillis())).asJsonArray().toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
