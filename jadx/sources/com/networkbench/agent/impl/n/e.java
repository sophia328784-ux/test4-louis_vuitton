package com.networkbench.agent.impl.n;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Long f37550c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f37552f;

    public e(String str, String str2, Long l, String str3, String str4, Map<String, Object> map) {
        this.f37548a = str;
        this.f37549b = str2;
        this.f37550c = l;
        this.d = str3;
        this.f37551e = str4;
        if (map != null) {
            HashMap map2 = new HashMap();
            this.f37552f = map2;
            map2.putAll(map);
        }
    }

    public String a() {
        return this.f37548a;
    }

    public String b() {
        String str = this.f37549b;
        return str == null ? "" : str;
    }

    public Long c() {
        Long l = this.f37550c;
        return Long.valueOf(l == null ? -1L : l.longValue());
    }

    public String d() {
        String str = this.d;
        return str == null ? "" : str;
    }

    public String e() {
        String str = this.f37551e;
        return str == null ? "" : str;
    }

    public Map<String, Object> f() {
        return this.f37552f;
    }
}
