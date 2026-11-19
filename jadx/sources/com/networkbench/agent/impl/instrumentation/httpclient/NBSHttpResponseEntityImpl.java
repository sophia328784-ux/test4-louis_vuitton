package com.networkbench.agent.impl.instrumentation.httpclient;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.d.b.a;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.instrumentation.NBSHttpClientUtil;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingInputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingOutputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteEvent;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.message.AbstractHttpMessage;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSHttpResponseEntityImpl implements NBSStreamCompleteListener, HttpEntity {
    private static final e log = f.a();
    private NBSCountingInputStream contentStream;
    private final HttpEntity impl;
    private HttpResponse response;
    private final NBSTransactionState transactionState;

    public NBSHttpResponseEntityImpl(HttpResponse httpResponse, NBSTransactionState nBSTransactionState, long j2) {
        this.response = httpResponse;
        this.impl = httpResponse.getEntity();
        this.transactionState = nBSTransactionState;
    }

    private void a(NBSTransactionState nBSTransactionState) {
        try {
            if (nBSTransactionState.end() == null) {
                log.f("HttpResponseEntityWrapperImpl transactionData is null!");
                return;
            }
            if (nBSTransactionState.isError()) {
                StringBuilder sb = new StringBuilder();
                try {
                    InputStream content = getContent();
                    if (content instanceof NBSCountingInputStream) {
                        sb.append(((NBSCountingInputStream) content).getBufferAsString());
                    }
                } catch (Exception e2) {
                    log.e(e2.toString());
                }
                Map<String, Object> mapResolvingResponseHeader = NBSHttpClientUtil.resolvingResponseHeader(this.response);
                mapResolvingResponseHeader.put("Content-Length", Long.valueOf(nBSTransactionState.getBytesReceived()));
                String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                log.a("error message:" + exception);
                nBSTransactionState.setErrorDataInfo(sb.toString(), mapResolvingResponseHeader, exception);
            }
            ai.a(new c(nBSTransactionState));
        } catch (Exception e3) {
            log.a("addTransactionAndErrorData", e3);
        }
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        try {
            this.impl.consumeContent();
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                this.transactionState.end();
                if (this.transactionState.isError()) {
                    this.transactionState.setErrorDataInfo("", new HashMap(), this.transactionState.getException() != null ? this.transactionState.getException() : "");
                }
                ai.a(new c(this.transactionState));
            }
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        NBSCountingInputStream nBSCountingInputStream = this.contentStream;
        if (nBSCountingInputStream != null) {
            return nBSCountingInputStream;
        }
        try {
            HttpEntity httpEntity = this.impl;
            boolean zIsChunked = true;
            if (httpEntity instanceof AbstractHttpMessage) {
                Header lastHeader = ((AbstractHttpMessage) httpEntity).getLastHeader("Transfer-Encoding");
                if (lastHeader != null && "chunked".equalsIgnoreCase(lastHeader.getValue())) {
                    zIsChunked = false;
                }
            } else if (httpEntity instanceof HttpEntityWrapper) {
                zIsChunked = true ^ httpEntity.isChunked();
            }
            NBSCountingInputStream nBSCountingInputStream2 = new NBSCountingInputStream(this.impl.getContent(), zIsChunked);
            this.contentStream = nBSCountingInputStream2;
            nBSCountingInputStream2.addStreamCompleteListener(this);
            return this.contentStream;
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                v.a(new a(this.transactionState.end()));
            }
            throw e2;
        }
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.impl.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.impl.getContentLength();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.impl.getContentType();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.impl.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.impl.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.impl.isStreaming();
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
    public void streamComplete(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
        ((NBSStreamCompleteListenerSource) nBSStreamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        e eVar = log;
        eVar.d("streamComplete");
        if (this.transactionState.isComplete()) {
            return;
        }
        eVar.d("transaction not complete");
        this.transactionState.setBytesReceived(nBSStreamCompleteEvent.getBytes());
        a(this.transactionState);
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
    public void streamError(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
        ((NBSStreamCompleteListenerSource) nBSStreamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, nBSStreamCompleteEvent.getException());
        if (this.transactionState.isComplete()) {
            return;
        }
        this.transactionState.setBytesReceived(nBSStreamCompleteEvent.getBytes());
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if (this.transactionState.isComplete()) {
            this.impl.writeTo(outputStream);
            return;
        }
        NBSCountingOutputStream nBSCountingOutputStream = new NBSCountingOutputStream(outputStream);
        try {
            this.impl.writeTo(nBSCountingOutputStream);
            if (this.transactionState.isComplete()) {
                return;
            }
            this.transactionState.setBytesReceived(nBSCountingOutputStream.getCount());
            a(this.transactionState);
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                this.transactionState.setBytesReceived(nBSCountingOutputStream.getCount());
                v.a(new a(this.transactionState.end()));
            }
            e2.printStackTrace();
            throw e2;
        }
    }
}
