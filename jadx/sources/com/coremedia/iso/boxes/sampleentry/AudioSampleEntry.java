package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import defpackage.md;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class AudioSampleEntry extends AbstractSampleEntry {
    public static final /* synthetic */ int y = 0;
    public int l;
    public int m;
    public long n;
    public int o;
    public int p;
    public int q;
    public long r;
    public long s;
    public long t;
    public long u;
    public int v;
    public long w;
    public byte[] x;

    public AudioSampleEntry(String str) {
        super(str);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void c(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(n());
        int i2 = this.o;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((i2 == 1 ? 16 : 0) + 28 + (i2 == 2 ? 36 : 0));
        byteBufferAllocate.position(6);
        IsoTypeWriter.d(this.f25327k, byteBufferAllocate);
        IsoTypeWriter.d(this.o, byteBufferAllocate);
        IsoTypeWriter.d(this.v, byteBufferAllocate);
        byteBufferAllocate.putInt((int) this.w);
        IsoTypeWriter.d(this.l, byteBufferAllocate);
        IsoTypeWriter.d(this.m, byteBufferAllocate);
        IsoTypeWriter.d(this.p, byteBufferAllocate);
        IsoTypeWriter.d(this.q, byteBufferAllocate);
        boolean zEquals = this.f35690i.equals("mlpa");
        long j2 = this.n;
        if (zEquals) {
            byteBufferAllocate.putInt((int) j2);
        } else {
            byteBufferAllocate.putInt((int) (j2 << 16));
        }
        if (this.o == 1) {
            byteBufferAllocate.putInt((int) this.r);
            byteBufferAllocate.putInt((int) this.s);
            byteBufferAllocate.putInt((int) this.t);
            byteBufferAllocate.putInt((int) this.u);
        }
        if (this.o == 2) {
            byteBufferAllocate.putInt((int) this.r);
            byteBufferAllocate.putInt((int) this.s);
            byteBufferAllocate.putInt((int) this.t);
            byteBufferAllocate.putInt((int) this.u);
            byteBufferAllocate.put(this.x);
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        m(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(28);
        dataSource.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25327k = IsoTypeReader.f(byteBufferAllocate);
        this.o = IsoTypeReader.f(byteBufferAllocate);
        this.v = IsoTypeReader.f(byteBufferAllocate);
        this.w = IsoTypeReader.h(byteBufferAllocate);
        this.l = IsoTypeReader.f(byteBufferAllocate);
        this.m = IsoTypeReader.f(byteBufferAllocate);
        this.p = IsoTypeReader.f(byteBufferAllocate);
        this.q = IsoTypeReader.f(byteBufferAllocate);
        this.n = IsoTypeReader.h(byteBufferAllocate);
        String str = this.f35690i;
        if (!str.equals("mlpa")) {
            this.n >>>= 16;
        }
        if (this.o == 1) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(16);
            dataSource.read(byteBufferAllocate2);
            byteBufferAllocate2.rewind();
            this.r = IsoTypeReader.h(byteBufferAllocate2);
            this.s = IsoTypeReader.h(byteBufferAllocate2);
            this.t = IsoTypeReader.h(byteBufferAllocate2);
            this.u = IsoTypeReader.h(byteBufferAllocate2);
        }
        if (this.o == 2) {
            ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(36);
            dataSource.read(byteBufferAllocate3);
            byteBufferAllocate3.rewind();
            this.r = IsoTypeReader.h(byteBufferAllocate3);
            this.s = IsoTypeReader.h(byteBufferAllocate3);
            this.t = IsoTypeReader.h(byteBufferAllocate3);
            this.u = IsoTypeReader.h(byteBufferAllocate3);
            byte[] bArr = new byte[20];
            this.x = bArr;
            byteBufferAllocate3.get(bArr);
        }
        if (!"owma".equals(str)) {
            long j3 = j2 - 28;
            int i2 = this.o;
            o(dataSource, (j3 - ((long) (i2 != 1 ? 0 : 16))) - ((long) (i2 != 2 ? 0 : 36)), abstractBoxParser);
            return;
        }
        System.err.println("owma");
        long j4 = j2 - 28;
        int i3 = this.o;
        final long j5 = (j4 - ((long) (i3 != 1 ? 0 : 16))) - ((long) (i3 != 2 ? 0 : 36));
        final ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(CastUtils.a(j5));
        dataSource.read(byteBufferAllocate4);
        g(new Box() { // from class: com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.1
            @Override // com.coremedia.iso.boxes.Box
            public final void c(WritableByteChannel writableByteChannel) throws IOException {
                ByteBuffer byteBuffer2 = byteBufferAllocate4;
                byteBuffer2.rewind();
                writableByteChannel.write(byteBuffer2);
            }

            @Override // com.coremedia.iso.boxes.Box
            public final void d(DataSource dataSource2, ByteBuffer byteBuffer2, long j6, AbstractBoxParser abstractBoxParser2) {
                throw new RuntimeException("NotImplemented");
            }

            @Override // com.coremedia.iso.boxes.Box
            public final void e(BasicContainer basicContainer) {
                int i4 = AudioSampleEntry.y;
                if (basicContainer == AudioSampleEntry.this) {
                    return;
                }
                md.h("you cannot diswown this special box");
            }

            @Override // com.coremedia.iso.boxes.Box
            public final long getSize() {
                return j5;
            }

            @Override // com.coremedia.iso.boxes.Box
            public final String getType() {
                return "----";
            }
        });
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public final long getSize() {
        int i2 = this.o;
        int i3 = 16;
        long j2 = j() + ((long) ((i2 == 1 ? 16 : 0) + 28 + (i2 == 2 ? 36 : 0)));
        if (!this.f35691j && 8 + j2 < 4294967296L) {
            i3 = 8;
        }
        return j2 + ((long) i3);
    }

    @Override // com.googlecode.mp4parser.BasicContainer
    public final String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.u + ", bytesPerFrame=" + this.t + ", bytesPerPacket=" + this.s + ", samplesPerPacket=" + this.r + ", packetSize=" + this.q + ", compressionId=" + this.p + ", soundVersion=" + this.o + ", sampleRate=" + this.n + ", sampleSize=" + this.m + ", channelCount=" + this.l + ", boxes=" + h() + '}';
    }
}
