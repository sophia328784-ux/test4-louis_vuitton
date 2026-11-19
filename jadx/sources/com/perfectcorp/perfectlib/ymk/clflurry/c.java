package com.perfectcorp.perfectlib.ymk.clflurry;

import android.util.Pair;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.TestConfigHelper;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Map f41971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ BaseEvent f41972b;

    public c(Map map, BaseEvent baseEvent) {
        this.f41971a = map;
        this.f41972b = baseEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        MoreFutures.b(a.f41966b);
        if (a.b()) {
            return;
        }
        this.f41971a.put("sdk_version", "5.27.2.111031404");
        this.f41972b.getClass();
        Log.g(3, "CLFlurryAgentHelper", "recordEvent (UMA) name=" + this.f41972b.f41947a + ", Parameters is " + this.f41971a + ", Count: 1");
        com.perfectcorp.uma.b.c(this.f41972b.f41947a, this.f41971a);
        TestConfigHelper testConfigHelperC = TestConfigHelper.c();
        testConfigHelperC.getClass();
        Pair pair = TestConfigHelper.d;
        String str2 = (String) pair.first;
        boolean z = Boolean.parseBoolean((String) pair.second);
        if (testConfigHelperC.b() && (str = (String) testConfigHelperC.f41976b.get(str2)) != null) {
            try {
                z = Boolean.parseBoolean(str);
            } catch (Exception e2) {
                Log.e("BaseConfigHelper", "parsing error", e2);
            }
        }
        if (z || com.perfectcorp.perfectlib.internal.a.f40371a.flushCountly) {
            com.perfectcorp.uma.b.e();
        }
    }
}
