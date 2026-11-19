package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.util.ab;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f36980a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f36981b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36982c = "";

    private boolean b(String str, String str2) {
        return !ab.c(str) && str.equals(str2);
    }

    public boolean a() {
        return b(this.f36981b, this.f36982c) || ab.c(this.f36980a);
    }

    public void b() {
        this.f36981b = "";
        this.f36982c = "";
        this.f36980a = "";
    }

    public void a(String str, String str2) {
        this.f36981b = str;
        this.f36982c = str2;
        if (b(str, str2)) {
            this.f36980a = str;
        }
    }
}
