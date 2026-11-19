package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MessageBuffer f24213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24214c;

    public a(byte[] bArr, int i2, int i3) {
        this(MessageBuffer.wrap((byte[]) p.a(bArr, "input array is null"), i2, i3));
    }

    public void a(byte[] bArr) {
        a(MessageBuffer.wrap((byte[]) p.a(bArr, "input array is null")));
    }

    public void b(byte[] bArr, int i2, int i3) {
        a(MessageBuffer.wrap((byte[]) p.a(bArr, "input array is null"), i2, i3));
    }

    @Override // com.batch.android.y0.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f24213b = null;
        this.f24214c = true;
    }

    @Override // com.batch.android.y0.g
    public MessageBuffer next() {
        if (this.f24214c) {
            return null;
        }
        this.f24214c = true;
        return this.f24213b;
    }

    public a(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public MessageBuffer a(MessageBuffer messageBuffer) {
        MessageBuffer messageBuffer2 = this.f24213b;
        this.f24213b = messageBuffer;
        if (messageBuffer == null) {
            this.f24214c = true;
            return messageBuffer2;
        }
        this.f24214c = false;
        return messageBuffer2;
    }

    public a(MessageBuffer messageBuffer) {
        this.f24213b = messageBuffer;
        if (messageBuffer == null) {
            this.f24214c = true;
        } else {
            this.f24214c = false;
        }
    }
}
