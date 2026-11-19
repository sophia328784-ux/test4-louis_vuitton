package com.networkbench.agent.impl.instrumentation.httpclient;

import com.networkbench.agent.impl.d.b.a;
import com.networkbench.agent.impl.instrumentation.NBSHttpClientUtil;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingInputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingOutputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteEvent;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource;
import com.networkbench.agent.impl.util.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSHttpRequestEntityImpl implements NBSStreamCompleteListener, HttpEntity {
    private final HttpEntity impl;
    private final NBSTransactionState transactionState;

    public NBSHttpRequestEntityImpl(HttpEntity httpEntity, NBSTransactionState nBSTransactionState) {
        this.impl = httpEntity;
        this.transactionState = nBSTransactionState;
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        try {
            this.impl.consumeContent();
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                v.a(new a(this.transactionState.end()));
            }
            throw e2;
        }
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        try {
            if (this.transactionState.isSent()) {
                return this.impl.getContent();
            }
            NBSCountingInputStream nBSCountingInputStream = new NBSCountingInputStream(this.impl.getContent());
            nBSCountingInputStream.addStreamCompleteListener(this);
            return nBSCountingInputStream;
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                v.a(new a(this.transactionState.end()));
            }
            throw e2;
        } catch (IllegalStateException e3) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e3);
            if (!this.transactionState.isComplete()) {
                v.a(new a(this.transactionState.end()));
            }
            throw e3;
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
        this.transactionState.setBytesSent(nBSStreamCompleteEvent.getBytes());
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
    public void streamError(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
        ((NBSStreamCompleteListenerSource) nBSStreamCompleteEvent.getSource()).removeStreamCompleteListener(this);
        NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, nBSStreamCompleteEvent.getException());
        if (this.transactionState.isComplete()) {
            return;
        }
        this.transactionState.setBytesSent(nBSStreamCompleteEvent.getBytes());
        v.a(new a(this.transactionState.end()));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            if (this.transactionState.isSent()) {
                this.impl.writeTo(outputStream);
                return;
            }
            NBSCountingOutputStream nBSCountingOutputStream = new NBSCountingOutputStream(outputStream);
            this.impl.writeTo(nBSCountingOutputStream);
            this.transactionState.setBytesSent(nBSCountingOutputStream.getCount());
        } catch (IOException e2) {
            NBSHttpClientUtil.setErrorCodeFromException(this.transactionState, e2);
            if (!this.transactionState.isComplete()) {
                v.a(new a(this.transactionState.end()));
            }
            throw e2;
        }
    }
}
