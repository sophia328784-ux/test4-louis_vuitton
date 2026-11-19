package com.networkbench.agent.impl.b;

import android.os.HandlerThread;
import com.networkbench.agent.impl.util.ak;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c implements g {
    private static com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f36485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36486c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f36484a = new e(a(), ak.h());

    public HandlerThread a() {
        HandlerThread handlerThread;
        synchronized (c.class) {
            try {
                if (this.f36485b == null) {
                    HandlerThread handlerThread2 = new HandlerThread("nbs_block_probe");
                    this.f36485b = handlerThread2;
                    handlerThread2.start();
                }
                handlerThread = this.f36485b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handlerThread;
    }

    @Override // com.networkbench.agent.impl.b.g
    public void b() {
        this.f36484a.a();
    }

    @Override // com.networkbench.agent.impl.b.g
    public List<com.networkbench.agent.impl.b.a.b> c() {
        return this.f36484a.b();
    }

    @Override // com.networkbench.agent.impl.b.g
    public void d() {
    }

    @Override // com.networkbench.agent.impl.b.g
    public void e() {
        HandlerThread handlerThread = this.f36485b;
        if (handlerThread != null && handlerThread.isAlive()) {
            this.f36485b.quit();
        }
        this.f36484a.c();
        this.f36486c = true;
    }

    @Override // com.networkbench.agent.impl.b.g
    public void a(long j2) {
        if (this.f36486c) {
            return;
        }
        this.f36484a.a();
        this.f36484a.a(j2);
    }
}
