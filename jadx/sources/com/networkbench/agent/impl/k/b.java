package com.networkbench.agent.impl.k;

import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37421a;
    public String d = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f37423c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f37424e = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f37422b = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f37425f = "";

    public b(String str) {
        this.f37421a = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSSeriesData{actionId='");
        sb.append(this.f37423c);
        sb.append("', actionName='");
        sb.append(this.f37424e);
        sb.append("', viewId='");
        sb.append(this.f37422b);
        sb.append("', viewName='");
        sb.append(this.d);
        sb.append("', sessionId='");
        sb.append(this.f37421a);
        sb.append("', viewFeatuers='");
        return n00.r(this.f37425f, "'}", sb);
    }
}
