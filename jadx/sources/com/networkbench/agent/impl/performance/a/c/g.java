package com.networkbench.agent.impl.performance.a.c;

import defpackage.tr;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f37716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f37717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f37718c;
    public double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f37719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f37720f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f37721h;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f37716a == gVar.f37716a && this.f37717b.equals(gVar.f37717b);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f37716a), this.f37717b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ThreadExceptionItem{threadId=");
        sb.append(this.f37716a);
        sb.append(", threadName='");
        sb.append(this.f37717b);
        sb.append("', threadCpuTime=");
        sb.append(this.f37718c);
        sb.append(", cpuUsage=");
        sb.append(this.d);
        sb.append(", weight='");
        sb.append(this.f37719e);
        sb.append("', nice='");
        sb.append(this.f37720f);
        sb.append("', processCputime=");
        sb.append(this.g);
        sb.append(", niceValue=");
        return tr.k(sb, this.f37721h, '}');
    }
}
