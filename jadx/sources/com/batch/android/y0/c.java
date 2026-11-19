package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class c implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f24217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24218c = false;

    public c(ByteBuffer byteBuffer) {
        this.f24217b = ((ByteBuffer) p.a(byteBuffer, "input ByteBuffer is null")).slice();
    }

    public ByteBuffer a(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.f24217b;
        this.f24217b = ((ByteBuffer) p.a(byteBuffer, "input ByteBuffer is null")).slice();
        this.f24218c = false;
        return byteBuffer2;
    }

    @Override // com.batch.android.y0.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.batch.android.y0.g
    public MessageBuffer next() {
        if (this.f24218c) {
            return null;
        }
        MessageBuffer messageBufferWrap = MessageBuffer.wrap(this.f24217b);
        this.f24218c = true;
        return messageBufferWrap;
    }
}
