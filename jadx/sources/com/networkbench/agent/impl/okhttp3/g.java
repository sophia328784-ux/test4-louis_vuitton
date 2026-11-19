package com.networkbench.agent.impl.okhttp3;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public interface g {
    void a(NBSTransactionState nBSTransactionState, IOException iOException) throws Exception;

    void a(Request request, NBSTransactionState nBSTransactionState) throws Exception;

    void a(Response response, NBSTransactionState nBSTransactionState) throws Exception;

    boolean a();

    boolean b();
}
