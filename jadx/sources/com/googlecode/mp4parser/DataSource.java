package com.googlecode.mp4parser;

import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public interface DataSource extends Closeable {
    long f(long j2, long j3, WritableByteChannel writableByteChannel);

    long position();

    void position(long j2);

    int read(ByteBuffer byteBuffer);

    ByteBuffer s1(long j2, long j3);

    long size();
}
