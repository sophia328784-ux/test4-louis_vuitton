package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.util.Logger;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static f f36952a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36953b = "AppPhaseManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicInteger f36954c = new AtomicInteger(0);
    private long d;

    private f() {
        a(a.RUNNING);
    }

    public void a(a aVar) {
        Logger.debug(f36953b, "set app phase to " + aVar.name());
        this.f36954c.set(aVar.a());
        this.d = System.currentTimeMillis();
    }

    public boolean b(a aVar) {
        return this.f36954c.get() == aVar.g;
    }

    public boolean c() {
        return this.f36954c.get() == a.FIRST_RUN.g || this.f36954c.get() == a.COLD_RUN.g;
    }

    public boolean d() {
        return this.f36954c.get() == a.BACKGROUND.g;
    }

    public enum a {
        RUNNING(0),
        FIRST_RUN(1),
        COLD_RUN(2),
        HOT_RUN(3),
        BACKGROUND_SWITCH(8),
        BACKGROUND(9);

        private int g;

        a(int i2) {
            this.g = i2;
        }

        public int a() {
            return this.g;
        }
    }

    public long b() {
        return this.d;
    }

    public int a() {
        return this.f36954c.get();
    }
}
