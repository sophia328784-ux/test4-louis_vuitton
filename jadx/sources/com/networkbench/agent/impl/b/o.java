package com.networkbench.agent.impl.b;

import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.r;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o extends d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f36538a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f36539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.networkbench.agent.impl.b.a.b> f36540c;
    private n d = new n();

    public o(k kVar, com.networkbench.agent.impl.b.a.a aVar) {
        this.f36539b = kVar;
        this.f36540c = aVar.c();
    }

    @Override // com.networkbench.agent.impl.b.d
    public void a() {
        if (this.d != null) {
            f36538a.a("TraceFileRunnable run cancle invoked");
            this.d.c();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f36539b.a(this.f36540c);
            ai.a(this.f36539b);
            this.d.a(r.u().J());
            j jVar = new j();
            jVar.f36516a = this.d.b();
            jVar.f36517b = this.d.a();
            m.a().f36532a.put(this.f36539b.d(), jVar);
        } catch (Throwable th) {
            f36538a.a("traceFileRunnable:" + th.getMessage());
        }
    }
}
