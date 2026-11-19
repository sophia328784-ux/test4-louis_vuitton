package com.networkbench.agent.impl.util;

import com.facebook.react.bridge.ReactMarker;
import com.facebook.react.bridge.ReactMarkerConstants;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import java.security.SecureRandom;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f38417a = "NBSReactNativePageManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static x f38418b = new x();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f38419c = 100;
    private Map<String, com.networkbench.agent.impl.n.g> d = new ConcurrentHashMap();

    public String a(String str) {
        if (this.d.size() > f38419c) {
            Logger.debug(f38417a, "page map is over max map size");
            return "";
        }
        if (this.d.containsKey(str)) {
            com.networkbench.agent.impl.n.g gVar = this.d.get(str);
            Logger.warning(f38417a, "not the first start, skip");
            return gVar.d();
        }
        String string = new UUID(new SecureRandom().nextLong(), new SecureRandom().nextLong()).toString();
        com.networkbench.agent.impl.n.g gVar2 = new com.networkbench.agent.impl.n.g();
        gVar2.b(string);
        gVar2.a(str);
        gVar2.a(System.currentTimeMillis());
        this.d.put(str, gVar2);
        return string;
    }

    public String b(String str) {
        com.networkbench.agent.impl.n.g gVar;
        if (!this.d.containsKey(str) || (gVar = this.d.get(str)) == null) {
            return "";
        }
        String strD = gVar.d();
        gVar.b(System.currentTimeMillis());
        a(gVar.b(), gVar.c(), str);
        this.d.remove(str);
        return strD;
    }

    public void b() {
        Logger.debug(f38417a, "registerReactMarkerListener");
        if (!ak.i("com.facebook.react.bridge.ReactMarker")) {
            Logger.debug(f38417a, "class ReactMarker is not exist, skip");
        } else {
            ReactMarker.addListener(new ReactMarker.MarkerListener() { // from class: com.networkbench.agent.impl.util.x.1
                public void logMarker(ReactMarkerConstants reactMarkerConstants, String str, int i2) {
                    if (reactMarkerConstants.equals(ReactMarkerConstants.CONTENT_APPEARED)) {
                        NBSAppAgent.setCustomOnResumeEndIns("appStart");
                    }
                }
            });
        }
    }

    public static x a() {
        return f38418b;
    }

    private com.networkbench.agent.impl.data.type.p a(long j2, long j3) {
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(j2);
        nBSTraceUnit.metricName = SlowStartState.UEType.pageLoading.name();
        com.networkbench.agent.impl.data.type.p pVar = new com.networkbench.agent.impl.data.type.p(nBSTraceUnit);
        pVar.a(j3);
        return pVar;
    }

    public void a(long j2, long j3, String str) {
        com.networkbench.agent.impl.data.d.h hVar = new com.networkbench.agent.impl.data.d.h(0, str, a(j2, j3));
        if (!hVar.o()) {
            Logger.warning(f38417a, "react native page data is store to data, pageName is:" + str + ", enterTime:" + j2 + ", exitTime:" + j3);
            com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(hVar);
            return;
        }
        Logger.warning(f38417a, "react native page data is cross the border, pageName is:" + str + ", enterTime:" + j2 + ", exitTime:" + j3);
    }
}
