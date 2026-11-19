package com.networkbench.agent.impl.okhttp3;

import com.RNFetchBlob.Response.RNFetchBlobFileResp;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes2.dex */
public class f extends RNFetchBlobFileResp {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37585e = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseBody f37587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BufferedSource f37588c;
    private NBSTransactionState d;

    public f(ResponseBody responseBody, NBSTransactionState nBSTransactionState, boolean z) {
        this.f37587b = responseBody;
        this.d = nBSTransactionState;
        this.f37586a = z;
    }

    private Source a(BufferedSource bufferedSource) {
        return new a(this.d, bufferedSource, this.f37586a, this.f37587b.getG());
    }

    public void close() {
        this.f37587b.close();
    }

    public long contentLength() {
        ResponseBody responseBody = this.f37587b;
        if (responseBody != null) {
            return responseBody.getG();
        }
        return 0L;
    }

    public MediaType contentType() {
        return this.f37587b.getF77014f();
    }

    public BufferedSource source() {
        if (this.f37588c == null) {
            this.f37588c = Okio.c(a(this.f37587b.getF77005h()));
        }
        return this.f37588c;
    }
}
