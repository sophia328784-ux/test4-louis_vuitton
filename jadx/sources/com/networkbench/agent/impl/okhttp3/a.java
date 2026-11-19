package com.networkbench.agent.impl.okhttp3;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;

/* JADX INFO: loaded from: classes2.dex */
public class a extends ForwardingSource {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37565c = com.networkbench.agent.impl.c.f.a();
    private static ScheduledExecutorService d = Executors.newScheduledThreadPool(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f37566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f37567b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NBSTransactionState f37568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f37569f;
    private long g;

    public a(NBSTransactionState nBSTransactionState, BufferedSource bufferedSource, boolean z, long j2) {
        super(bufferedSource);
        this.f37566a = 0L;
        this.f37567b = false;
        this.f37568e = nBSTransactionState;
        this.f37569f = z;
        this.g = j2;
    }

    private void a() {
        try {
            this.f37568e.setBytesReceived(this.f37566a);
            this.f37568e.setEndTime(System.currentTimeMillis());
            this.f37568e.setEndState();
            a(this.f37568e);
            this.f37568e = null;
        } catch (Throwable unused) {
        }
    }

    private void b() {
        try {
            NBSTransactionState nBSTransactionState = this.f37568e;
            if (nBSTransactionState != null) {
                if (this.f37569f) {
                    nBSTransactionState.setStatusCode(200);
                    this.f37568e.setErrorCode(905, "ClientAbortException Content-Range");
                }
                a();
            }
        } catch (Throwable th) {
            f37565c.a("addDataIfEndSuddenly", th);
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
        this.f37566a += j3 != -1 ? j3 : 0L;
        if (!this.f37567b && (nBSTransactionState = this.f37568e) != null) {
            ai.f38318c.remove(nBSTransactionState);
            this.f37567b = true;
        }
        if (j3 == -1) {
            try {
                if (this.f37568e != null) {
                    f37565c.a("complete totalBytesRead: " + this.f37566a + ", bytesRead:" + j3);
                    StringBuilder sb = new StringBuilder("intercept  read  :  ");
                    sb.append(this.f37568e.toString());
                    com.networkbench.agent.impl.c.g.t(sb.toString());
                    a();
                    return j3;
                }
            } catch (Exception e2) {
                NBSTransactionState nBSTransactionState2 = this.f37568e;
                if (nBSTransactionState2 != null) {
                    nBSTransactionState2.setStatusCode(200);
                    NBSTransactionStateUtil.setErrorCodeFromException(this.f37568e, e2);
                    int errorCode = this.f37568e.getErrorCode();
                    NBSTransactionState nBSTransactionState3 = this.f37568e;
                    if (errorCode == -1) {
                        nBSTransactionState3.setStatusCode(200);
                        this.f37568e.setErrorCode(905, e2.getMessage());
                    } else if (nBSTransactionState3.getStatusCode() != 200) {
                        this.f37568e.setErrorDataInfo(e2.toString(), new HashMap(), e2.getMessage());
                    }
                    a();
                }
            }
        }
        return j3;
    }

    private void a(final NBSTransactionState nBSTransactionState) {
        if (nBSTransactionState == null) {
            return;
        }
        d.schedule(new y() { // from class: com.networkbench.agent.impl.okhttp3.a.1
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    nBSTransactionState.end();
                    ai.a(new com.networkbench.agent.impl.d.b.c(nBSTransactionState));
                } catch (Throwable th) {
                    z81.k(new StringBuilder("NBSBufferedSource transactionEnd   has an error : "), th);
                }
            }
        }, 5L, TimeUnit.SECONDS);
    }
}
