package com.networkbench.agent.impl.performance.coulometry.b;

import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class h implements Comparable<h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public StackTraceElement[] f37865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f37866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f37867c;

    public h(long j2, long j3, StackTraceElement[] stackTraceElementArr) {
        this.f37866b = j2;
        this.f37867c = j3;
        this.f37865a = stackTraceElementArr;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        return Long.compare(this.f37866b, hVar.f37866b);
    }

    public long b() {
        return this.f37867c;
    }

    public StackTraceElement[] c() {
        return this.f37865a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TimeTask{startTime=");
        sb.append(this.f37866b);
        sb.append(", endTime=");
        return fc.k(sb, this.f37867c, '}');
    }

    public void b(long j2) {
        this.f37867c = j2;
    }

    public void a(long j2) {
        this.f37866b = j2;
    }

    public h(long j2, long j3) {
        this.f37866b = j2;
        this.f37867c = j3;
    }

    public long a() {
        return this.f37866b;
    }
}
