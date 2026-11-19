package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f36766a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36767b = "ActionPageManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f36768c = 256;
    private final Map<String, String> d = new ConcurrentHashMap();

    private b() {
    }

    public void a(String str, String str2) {
        if (!ab.c(str) && !ab.c(str2)) {
            if (this.d.size() >= 256) {
                Logger.warning(f36767b, "page alias is over flow");
                return;
            } else {
                this.d.put(str, str2);
                return;
            }
        }
        Logger.warning(f36767b, "realPageName:" + str + ", aliasName:" + str2);
    }

    public String b(String str) {
        return (!ab.c(str) && this.d.containsKey(str)) ? this.d.get(str) : "";
    }

    public String a(String str) {
        if (ab.c(str)) {
            return "";
        }
        return !this.d.containsKey(str) ? str : this.d.get(str);
    }
}
