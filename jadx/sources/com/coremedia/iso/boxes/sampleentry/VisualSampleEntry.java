package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class VisualSampleEntry extends AbstractSampleEntry implements Container {
    public int l;
    public int m;
    public double n;
    public double o;
    public int p;
    public String q;
    public int r;
    public final long[] s;

    public VisualSampleEntry() {
        super("avc1");
        this.n = 72.0d;
        this.o = 72.0d;
        this.p = 1;
        this.q = "";
        this.r = 24;
        this.s = new long[3];
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void c(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(n());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(78);
        byteBufferAllocate.position(6);
        IsoTypeWriter.d(this.f25327k, byteBufferAllocate);
        IsoTypeWriter.d(0, byteBufferAllocate);
        IsoTypeWriter.d(0, byteBufferAllocate);
        long[] jArr = this.s;
        byteBufferAllocate.putInt((int) jArr[0]);
        byteBufferAllocate.putInt((int) jArr[1]);
        byteBufferAllocate.putInt((int) jArr[2]);
        IsoTypeWriter.d(this.l, byteBufferAllocate);
        IsoTypeWriter.d(this.m, byteBufferAllocate);
        IsoTypeWriter.b(byteBufferAllocate, this.n);
        IsoTypeWriter.b(byteBufferAllocate, this.o);
        byteBufferAllocate.putInt(0);
        IsoTypeWriter.d(this.p, byteBufferAllocate);
        byteBufferAllocate.put((byte) (Utf8.b(this.q) & 255));
        byteBufferAllocate.put(Utf8.a(this.q));
        int iB = Utf8.b(this.q);
        while (iB < 31) {
            iB++;
            byteBufferAllocate.put((byte) 0);
        }
        IsoTypeWriter.d(this.r, byteBufferAllocate);
        IsoTypeWriter.d(65535, byteBufferAllocate);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        m(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void d(final DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        final long jPosition = dataSource.position() + j2;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(78);
        dataSource.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25327k = IsoTypeReader.f(byteBufferAllocate);
        IsoTypeReader.f(byteBufferAllocate);
        IsoTypeReader.f(byteBufferAllocate);
        long jH = IsoTypeReader.h(byteBufferAllocate);
        long[] jArr = this.s;
        jArr[0] = jH;
        jArr[1] = IsoTypeReader.h(byteBufferAllocate);
        jArr[2] = IsoTypeReader.h(byteBufferAllocate);
        this.l = IsoTypeReader.f(byteBufferAllocate);
        this.m = IsoTypeReader.f(byteBufferAllocate);
        this.n = IsoTypeReader.d(byteBufferAllocate);
        this.o = IsoTypeReader.d(byteBufferAllocate);
        IsoTypeReader.h(byteBufferAllocate);
        this.p = IsoTypeReader.f(byteBufferAllocate);
        int iA = IsoTypeReader.a(byteBufferAllocate.get());
        if (iA > 31) {
            iA = 31;
        }
        byte[] bArr = new byte[iA];
        byteBufferAllocate.get(bArr);
        try {
            this.q = new String(bArr, "UTF-8");
            if (iA < 31) {
                byteBufferAllocate.get(new byte[31 - iA]);
            }
            this.r = IsoTypeReader.f(byteBufferAllocate);
            IsoTypeReader.f(byteBufferAllocate);
            o(new DataSource() { // from class: com.coremedia.iso.boxes.sampleentry.VisualSampleEntry.1
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    dataSource.close();
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final long f(long j3, long j4, WritableByteChannel writableByteChannel) {
                    return dataSource.f(j3, j4, writableByteChannel);
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final long position() {
                    return dataSource.position();
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final int read(ByteBuffer byteBuffer2) {
                    DataSource dataSource2 = dataSource;
                    long jPosition2 = dataSource2.position();
                    long j3 = jPosition;
                    if (j3 == jPosition2) {
                        return -1;
                    }
                    if (byteBuffer2.remaining() <= j3 - dataSource2.position()) {
                        return dataSource2.read(byteBuffer2);
                    }
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(CastUtils.a(j3 - dataSource2.position()));
                    dataSource2.read(byteBufferAllocate2);
                    byteBuffer2.put((ByteBuffer) byteBufferAllocate2.rewind());
                    return byteBufferAllocate2.capacity();
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final ByteBuffer s1(long j3, long j4) {
                    return dataSource.s1(j3, j4);
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final long size() {
                    return jPosition;
                }

                @Override // com.googlecode.mp4parser.DataSource
                public final void position(long j3) {
                    dataSource.position(j3);
                }
            }, j2 - 78, abstractBoxParser);
        } catch (UnsupportedEncodingException e2) {
            throw new Error(e2);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final long getSize() {
        long j2 = j();
        return 78 + j2 + ((long) ((this.f35691j || j2 + 86 >= 4294967296L) ? 16 : 8));
    }

    public VisualSampleEntry(String str) {
        super(str);
        this.n = 72.0d;
        this.o = 72.0d;
        this.p = 1;
        this.q = "";
        this.r = 24;
        this.s = new long[3];
    }
}
