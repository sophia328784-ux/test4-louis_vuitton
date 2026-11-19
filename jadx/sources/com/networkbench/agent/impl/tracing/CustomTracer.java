package com.networkbench.agent.impl.tracing;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.MetricCategory;
import com.networkbench.agent.impl.instrumentation.NBSTraceEngine;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.fc;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class CustomTracer {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList("category", MetricCategory.class.getName(), "CUSTOMEVENT"));
    private static e log = f.a();

    public static void beginTracer(String str, String str2) {
        if (ak.l(str2)) {
            NBSTraceEngine.enterMethod(fc.h(r.y, str, str2), categoryParams);
        } else {
            z81.j("beginTracer param is invalid!", str2, log);
        }
    }

    public static void endTracer(String str, String str2) {
        if (!ak.l(str2)) {
            z81.j("endTracer param is invalid!", str2, log);
            return;
        }
        NBSTraceEngine.exitCustomApiMethod(r.y + str + str2);
    }
}
