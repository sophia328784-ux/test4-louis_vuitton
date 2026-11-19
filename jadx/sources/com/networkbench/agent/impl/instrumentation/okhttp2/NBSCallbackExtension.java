package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.ai;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSCallbackExtension implements Callback {
    private static final e log = f.a();
    private Callback impl;
    private NBSTransactionState transactionState;

    public NBSCallbackExtension(Callback callback, NBSTransactionState nBSTransactionState) {
        this.impl = callback;
        this.transactionState = nBSTransactionState;
    }

    private void a(Exception exc) throws Exception {
        if (Harvest.isHttp_network_enabled()) {
            NBSTransactionState nBSTransactionStateA = a();
            NBSTransactionStateUtil.setErrorCodeFromException(nBSTransactionStateA, exc);
            if (nBSTransactionStateA.isComplete() || nBSTransactionStateA.end() == null) {
                return;
            }
            if (nBSTransactionStateA.isError()) {
                String exception = nBSTransactionStateA.getException() != null ? nBSTransactionStateA.getException() : "";
                log.a("error message:" + exception);
                nBSTransactionStateA.setErrorDataInfo(exception, new HashMap(), "");
            }
            ai.a(new c(nBSTransactionStateA));
        }
    }

    public void onFailure(Request request, IOException iOException) {
        try {
            a(iOException);
        } catch (Exception e2) {
            g.h("NBSCallbackExtension onFailure : " + e2);
        }
        this.impl.onFailure(request, iOException);
    }

    public void onResponse(Response response) throws IOException {
        try {
            a(response);
        } catch (Throwable th) {
            g.h("NBSCallbackExtension onResponse " + th);
        }
        this.impl.onResponse(response);
    }

    private NBSTransactionState a() {
        return this.transactionState;
    }

    private void a(Response response) throws Exception {
        if (Harvest.isHttp_network_enabled() && !a().isComplete()) {
            NBSOkHttp2TransactionStateUtil.inspectAndInstrumentResponse(a(), response);
        }
    }
}
