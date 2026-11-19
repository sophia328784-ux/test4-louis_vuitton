package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface h extends Closeable, Flushable {
    MessageBuffer a(int i2) throws IOException;

    void a(byte[] bArr, int i2, int i3) throws IOException;

    void b(int i2) throws IOException;

    void write(byte[] bArr, int i2, int i3) throws IOException;
}
