package com.networkbench.agent.impl.performance.coulometry.c;

import com.networkbench.agent.impl.performance.coulometry.b.h;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Comparable<d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f37908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f37909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f37910c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f37911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public StackTraceElement[] f37912f;
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f37913h = false;

    public d(long j2, long j3) {
        this.f37909b = j2;
        this.f37910c = j3;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        return Long.compare(this.f37909b, dVar.f37909b);
    }

    public h b() {
        return new h(this.f37909b, this.f37910c, this.f37912f);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EventItem{startTime=");
        sb.append(this.f37909b);
        sb.append(", endTime=");
        sb.append(this.f37910c);
        sb.append(", type=");
        sb.append(this.d);
        sb.append(", interval=");
        sb.append(this.f37911e);
        sb.append("}\nduration:");
        return o60.j(this.f37910c - this.f37909b, "\n", sb);
    }

    public long a() {
        return this.f37910c - this.f37909b;
    }

    public d() {
    }
}
