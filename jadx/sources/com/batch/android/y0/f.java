package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public class f implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InputStream f24223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f24224c;

    public f(InputStream inputStream, int i2) {
        this.f24223b = (InputStream) p.a(inputStream, "input is null");
        this.f24224c = new byte[i2];
    }

    public static g a(InputStream inputStream) {
        FileChannel channel;
        p.a(inputStream, "InputStream is null");
        return (!(inputStream instanceof FileInputStream) || (channel = ((FileInputStream) inputStream).getChannel()) == null) ? new f(inputStream) : new d(channel);
    }

    public InputStream b(InputStream inputStream) throws IOException {
        InputStream inputStream2 = this.f24223b;
        this.f24223b = inputStream;
        return inputStream2;
    }

    @Override // com.batch.android.y0.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24223b.close();
    }

    @Override // com.batch.android.y0.g
    public MessageBuffer next() throws IOException {
        int i2 = this.f24223b.read(this.f24224c);
        if (i2 == -1) {
            return null;
        }
        return MessageBuffer.wrap(this.f24224c, 0, i2);
    }

    public f(InputStream inputStream) {
        this(inputStream, 8192);
    }
}
