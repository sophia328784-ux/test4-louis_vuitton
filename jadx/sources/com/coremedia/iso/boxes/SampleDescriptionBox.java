package com.coremedia.iso.boxes;

import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractContainerBox;
import com.googlecode.mp4parser.DataSource;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class SampleDescriptionBox extends AbstractContainerBox implements FullBox {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25321k;
    public int l;

    public SampleDescriptionBox() {
        super("stsd");
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void c(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(n());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        IsoTypeWriter.f(this.f25321k, byteBufferAllocate);
        IsoTypeWriter.e(this.l, byteBufferAllocate);
        byteBufferAllocate.putInt(h().size());
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        m(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        dataSource.read(byteBufferAllocate);
        byteBufferAllocate.rewind();
        this.f25321k = IsoTypeReader.a(byteBufferAllocate.get());
        this.l = IsoTypeReader.g(byteBufferAllocate);
        o(dataSource, j2 - 8, abstractBoxParser);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final long getSize() {
        long j2 = j();
        return 8 + j2 + ((long) ((this.f35691j || j2 + 16 >= 4294967296L) ? 16 : 8));
    }
}
