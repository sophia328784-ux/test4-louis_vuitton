package com.networkbench.agent.impl.okhttp3;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes2.dex */
public class e extends ResponseBody {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37581e = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseBody f37583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BufferedSource f37584c;
    private NBSTransactionState d;

    public e(ResponseBody responseBody, NBSTransactionState nBSTransactionState, boolean z) {
        this.f37583b = responseBody;
        this.d = nBSTransactionState;
        this.f37582a = z;
    }

    private Source a(BufferedSource bufferedSource) {
        return new a(this.d, bufferedSource, this.f37582a, this.f37583b.getG());
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f37583b.close();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength */
    public long getG() {
        ResponseBody responseBody = this.f37583b;
        if (responseBody != null) {
            return responseBody.getG();
        }
        return 0L;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType */
    public MediaType getF77014f() {
        return this.f37583b.getF77014f();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public BufferedSource getF77005h() {
        if (this.f37584c == null) {
            this.f37584c = Okio.c(a(this.f37583b.getF77005h()));
        }
        return this.f37584c;
    }
}
