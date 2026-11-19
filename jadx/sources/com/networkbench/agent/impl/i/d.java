package com.networkbench.agent.impl.i;

import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37331a = "NBSCustomPageCalc";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f37332b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f37333c = new d();
    private Map<String, String> d = Collections.synchronizedMap(new LinkedHashMap<String, String>(10) { // from class: com.networkbench.agent.impl.i.d.1
        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 10;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f37334e = false;

    private d() {
    }

    public void a(String str, String str2) {
        if (!this.f37334e) {
            Logger.warning(f37331a, "customPageTag is not set or has reset to false, skip");
            return;
        }
        if (ab.c(str) || ab.c(str2)) {
            Logger.warning(f37331a, "customPageId is empty or pageName is empty");
            return;
        }
        if (!this.d.containsKey(str)) {
            Logger.warning(f37331a, "customPageId is not find, id is:" + str);
        } else {
            Logger.debug(f37331a, "endTime:" + System.currentTimeMillis());
            com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(System.currentTimeMillis(), str2, false);
            this.f37334e = false;
        }
    }

    public String b() {
        String string = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
        this.f37334e = true;
        this.d.put(string, "");
        return string;
    }

    public void c() {
        if (this.f37334e) {
            com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(System.currentTimeMillis(), ScreenNameManager.getCurrentActivityName(), true);
        }
        this.f37334e = false;
    }

    public boolean d() {
        return this.f37334e;
    }

    public static d a() {
        return f37333c;
    }
}
