package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes2.dex */
public class NBSPrebufferedResponseBody extends ResponseBody {
    private static final e log = f.a();
    private final ResponseBody impl;
    private boolean isContentRange;
    private BufferedSource source;
    private NBSTransactionState transactionState;

    public NBSPrebufferedResponseBody(ResponseBody responseBody, NBSTransactionState nBSTransactionState, boolean z) {
        this.impl = responseBody;
        this.transactionState = nBSTransactionState;
        this.isContentRange = z;
    }

    private Source a(BufferedSource bufferedSource) {
        long jContentLength;
        try {
            jContentLength = this.impl.contentLength();
        } catch (Throwable th) {
            log.f("ok2 getContentLength error:" + th);
            jContentLength = 0;
        }
        return new NBSOk2BufferedSource(this.transactionState, bufferedSource, this.isContentRange, jContentLength);
    }

    public void close() throws IOException {
        this.impl.close();
    }

    public long contentLength() throws IOException {
        return this.impl.contentLength();
    }

    public MediaType contentType() {
        return this.impl.contentType();
    }

    public BufferedSource source() throws IOException {
        if (this.source == null) {
            this.source = Okio.c(a(this.impl.source()));
        }
        return this.source;
    }
}
