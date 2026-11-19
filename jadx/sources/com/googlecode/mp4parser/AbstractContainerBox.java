package com.googlecode.mp4parser;

import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.Box;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractContainerBox extends BasicContainer implements Box {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f35690i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35691j;

    public AbstractContainerBox(String str) {
        this.f35690i = str;
    }

    public void c(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(n());
        m(writableByteChannel);
    }

    public void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        dataSource.position();
        byteBuffer.remaining();
        this.f35691j = byteBuffer.remaining() == 16;
        o(dataSource, j2, abstractBoxParser);
    }

    @Override // com.coremedia.iso.boxes.Box
    public final void e(BasicContainer basicContainer) {
    }

    public long getSize() {
        long j2 = j();
        return j2 + ((long) ((this.f35691j || 8 + j2 >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.Box
    public final String getType() {
        return this.f35690i;
    }

    public final ByteBuffer n() {
        ByteBuffer byteBufferWrap;
        boolean z = this.f35691j;
        String str = this.f35690i;
        if (z || getSize() >= 4294967296L) {
            byte[] bArr = new byte[16];
            bArr[3] = 1;
            bArr[4] = str.getBytes()[0];
            bArr[5] = str.getBytes()[1];
            bArr[6] = str.getBytes()[2];
            bArr[7] = str.getBytes()[3];
            byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.position(8);
            byteBufferWrap.putLong(getSize());
        } else {
            byteBufferWrap = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, str.getBytes()[0], str.getBytes()[1], str.getBytes()[2], str.getBytes()[3]});
            byteBufferWrap.putInt((int) getSize());
        }
        byteBufferWrap.rewind();
        return byteBufferWrap;
    }

    public final void o(DataSource dataSource, long j2, BoxParser boxParser) {
        this.f35695c = dataSource;
        this.f35696e = dataSource.position();
        if (!this.f35691j) {
            int i2 = ((8 + j2) > 4294967296L ? 1 : ((8 + j2) == 4294967296L ? 0 : -1));
        }
        dataSource.position(dataSource.position() + j2);
        this.f35697f = dataSource.position();
        this.f35694b = boxParser;
    }
}
