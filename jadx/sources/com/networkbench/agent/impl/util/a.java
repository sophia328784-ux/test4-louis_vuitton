package com.networkbench.agent.impl.util;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f38249a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f38250b = "AgentSdkRun";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f38251c;
    private long d;

    public void a(long j2) {
        this.f38251c = j2;
    }

    public void b(long j2) {
        this.d = j2;
    }

    public boolean c(long j2) {
        return j2 >= this.f38251c || j2 >= this.d;
    }
}
