package com.networkbench.agent.impl.performance.a.b.b;

import com.networkbench.agent.impl.util.r;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f37653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.networkbench.agent.impl.performance.a.b.a f37654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.networkbench.agent.impl.performance.a.d.a f37655c;
    private c d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f37656a = new d();

        public static d a() {
            return f37656a;
        }
    }

    private d() {
        this.f37653a = new AtomicBoolean(false);
        this.f37655c = com.networkbench.agent.impl.performance.a.c.b().a();
        try {
            this.d = b.a(r.u().J());
        } catch (Throwable unused) {
        }
        this.f37654b = new com.networkbench.agent.impl.performance.a.b.a(this.d);
    }

    public final boolean a() {
        return true;
    }
}
