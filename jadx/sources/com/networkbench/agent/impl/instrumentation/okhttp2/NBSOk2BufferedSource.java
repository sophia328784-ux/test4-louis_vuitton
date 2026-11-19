package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.ai;
import java.io.IOException;
import java.util.HashMap;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOk2BufferedSource extends ForwardingSource {
    private static final e log = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f37392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f37393b;
    private long contentLength;
    private boolean isContentRange;
    private NBSTransactionState transactionState;

    public NBSOk2BufferedSource(NBSTransactionState nBSTransactionState, BufferedSource bufferedSource, boolean z, long j2) {
        super(bufferedSource);
        this.f37392a = 0L;
        this.f37393b = false;
        this.transactionState = nBSTransactionState;
        this.isContentRange = z;
        this.contentLength = j2;
    }

    private void a() {
        try {
            this.transactionState.setBytesReceived(this.f37392a);
            this.transactionState.setEndTime(System.currentTimeMillis());
            this.transactionState.end();
            if (this.transactionState == null) {
                return;
            }
            ai.a(new c(this.transactionState));
            this.transactionState = null;
        } catch (Throwable unused) {
        }
    }

    private void b() {
        try {
            NBSTransactionState nBSTransactionState = this.transactionState;
            if (nBSTransactionState != null) {
                if (this.isContentRange) {
                    nBSTransactionState.setStatusCode(200);
                    this.transactionState.setErrorCode(905, "ClientAbortException Content-Range");
                }
                a();
            }
        } catch (Throwable th) {
            log.a("addDataIfEndSuddenly", th);
        }
    }

    @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        b();
        super.close();
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(Buffer buffer, long j2) throws IOException {
        NBSTransactionState nBSTransactionState;
        long j3 = super.read(buffer, j2);
        this.f37392a += j3 != -1 ? j3 : 0L;
        if (!this.f37393b && (nBSTransactionState = this.transactionState) != null) {
            ai.f38318c.remove(nBSTransactionState);
            this.f37393b = true;
        }
        if (j3 == -1) {
            try {
                if (this.transactionState != null) {
                    log.a("complete totalBytesRead: " + this.f37392a + ", bytesRead:" + j3);
                    a();
                    return j3;
                }
            } catch (Exception e2) {
                NBSTransactionState nBSTransactionState2 = this.transactionState;
                if (nBSTransactionState2 != null) {
                    nBSTransactionState2.setStatusCode(200);
                    NBSTransactionStateUtil.setErrorCodeFromException(this.transactionState, e2);
                    int errorCode = this.transactionState.getErrorCode();
                    NBSTransactionState nBSTransactionState3 = this.transactionState;
                    if (errorCode == -1) {
                        nBSTransactionState3.setStatusCode(200);
                        this.transactionState.setErrorCode(905, e2.getMessage());
                    } else if (nBSTransactionState3.getStatusCode() != 200) {
                        this.transactionState.setErrorDataInfo(e2.toString(), new HashMap(), e2.getMessage());
                    }
                    a();
                }
            }
        }
        return j3;
    }
}
