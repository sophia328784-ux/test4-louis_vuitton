package com.networkbench.agent.impl.data.d;

import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f36868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f36869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f36870c;
    protected String d;

    public d(String str, String str2, String str3, int i2) {
        this.f36868a = str;
        this.f36869b = str2;
        this.f36870c = str3;
        this.d = i2 == -1 ? "" : String.valueOf(i2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FunctionData{function='");
        sb.append(this.f36868a);
        sb.append("', featuresId='");
        sb.append(this.f36869b);
        sb.append("', featuresText='");
        sb.append(this.f36870c);
        sb.append("', featuresCol='");
        return n00.r(this.d, "'}", sb);
    }
}
