package com.networkbench.agent.impl.d.b;

import com.networkbench.agent.impl.d.f;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.networkbench.agent.impl.d.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    NBSTransactionState f36718c;
    com.networkbench.agent.impl.a.a.b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f36719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f36720f;
    private com.networkbench.agent.impl.a.a.a g;

    public c(NBSTransactionState nBSTransactionState) {
        super(f.MixNetwork);
        this.f36718c = nBSTransactionState;
        this.d = nBSTransactionState.getTransactionData();
        if (nBSTransactionState.isNetworkExist()) {
            this.g = nBSTransactionState.getErrorData();
        }
        if (nBSTransactionState.getStatusCode() == 0) {
            nBSTransactionState.setStatusCode(-1);
        }
        f();
    }

    private void f() {
        this.d.e(r.u().d(this.d.B()));
        if (this.g != null) {
            NBSTransactionState nBSTransactionState = this.f36718c;
            com.networkbench.agent.impl.a.a.a aVar = this.g;
            b bVar = new b(nBSTransactionState, aVar.f36389a, aVar.f36390b, aVar.f36391c);
            this.f36720f = bVar;
            bVar.a(this.d.s());
        }
        a aVar2 = new a(this.d);
        this.f36719e = aVar2;
        v.b(aVar2);
    }

    public void a(String str) {
        b bVar = this.f36720f;
        if (bVar != null) {
            if (str == null) {
                str = "";
            }
            bVar.c(str);
        }
    }

    public boolean c() {
        return v.d(this.d.r());
    }

    public a d() {
        return this.f36719e;
    }

    public b e() {
        return this.f36720f;
    }
}
