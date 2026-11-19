package com.networkbench.agent.impl.socket;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38207b = "PackageTimes";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap<String, n> f38208a = new ConcurrentHashMap<>();

    public void a(String str, int i2, int i3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        n nVar = new n();
        nVar.a(i2);
        nVar.b(i3);
        this.f38208a.put(str, nVar);
    }

    public n b(String str) {
        if (str == null || this.f38208a.get(str) == null) {
            return null;
        }
        return this.f38208a.get(str);
    }

    public int c(String str) {
        if (str == null || this.f38208a.get(str) == null) {
            return -1;
        }
        return this.f38208a.get(str).a();
    }

    public int d(String str) {
        if (str == null || this.f38208a.get(str) == null) {
            return -1;
        }
        return this.f38208a.get(str).b();
    }

    public n e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Map.Entry<String, n> entry : this.f38208a.entrySet()) {
            if (str.contains(entry.getKey().toString())) {
                return entry.getValue();
            }
        }
        return null;
    }

    public boolean a(String str) {
        return (str == null || this.f38208a.get(str) == null || this.f38208a.get(str) == null) ? false : true;
    }
}
