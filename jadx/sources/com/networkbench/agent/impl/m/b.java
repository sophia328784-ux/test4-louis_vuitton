package com.networkbench.agent.impl.m;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.r;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicBoolean f37526b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.networkbench.agent.impl.m.a f37525a = new com.networkbench.agent.impl.m.a(r.u().J(), ConfigurationName.BROWSER_DATA_STORE_PATH);

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static b f37527a = new b();

        private a() {
        }
    }

    public static void a(String str, long j2, String str2) {
        new com.networkbench.agent.impl.m.a(r.u().J(), str2).a(str, j2);
    }

    public synchronized Map<String, ?> b() {
        return this.f37525a.a();
    }

    public synchronized void a(String str, long j2) {
        this.f37525a.a(str, j2);
    }

    public synchronized void a(String str) {
        this.f37525a.a(str);
    }

    public static b a() {
        return a.f37527a;
    }
}
