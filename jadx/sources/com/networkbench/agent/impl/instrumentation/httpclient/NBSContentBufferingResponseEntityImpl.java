package com.networkbench.agent.impl.instrumentation.httpclient;

import com.networkbench.agent.impl.instrumentation.io.NBSCountingInputStream;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes2.dex */
public class NBSContentBufferingResponseEntityImpl implements HttpEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HttpEntity f37386a;
    private NBSCountingInputStream contentStream;

    public NBSContentBufferingResponseEntityImpl(HttpEntity httpEntity) {
        if (httpEntity != null) {
            this.f37386a = httpEntity;
        } else {
            md.n("Missing wrapped entity");
            throw null;
        }
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        this.f37386a.consumeContent();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        NBSCountingInputStream nBSCountingInputStream = this.contentStream;
        if (nBSCountingInputStream != null) {
            return nBSCountingInputStream;
        }
        NBSCountingInputStream nBSCountingInputStream2 = new NBSCountingInputStream(this.f37386a.getContent(), true);
        this.contentStream = nBSCountingInputStream2;
        return nBSCountingInputStream2;
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.f37386a.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.f37386a.getContentLength();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.f37386a.getContentType();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.f37386a.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.f37386a.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.f37386a.isStreaming();
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        this.f37386a.writeTo(outputStream);
    }
}
