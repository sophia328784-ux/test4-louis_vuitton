package com.coremedia.iso.boxes;

import com.coremedia.iso.AbstractBoxParser;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public interface Box {
    void c(WritableByteChannel writableByteChannel);

    void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser);

    void e(BasicContainer basicContainer);

    long getSize();

    String getType();
}
