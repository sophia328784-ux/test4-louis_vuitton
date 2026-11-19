package com.googlecode.mp4parser;

import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.Box;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Logger;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBox implements Box {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Logger f35683j = Logger.a(AbstractBox.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35684b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteBuffer f35686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f35687f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DataSource f35688h;
    public long g = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ByteBuffer f35689i = null;
    public boolean d = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f35685c = true;

    public AbstractBox(String str) {
        this.f35684b = str;
    }

    public abstract void a(ByteBuffer byteBuffer);

    public abstract void b(ByteBuffer byteBuffer);

    @Override // com.coremedia.iso.boxes.Box
    public final void c(WritableByteChannel writableByteChannel) throws IOException {
        boolean z = this.d;
        String str = this.f35684b;
        if (!z) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((h() ? 8 : 16) + ("uuid".equals(str) ? 16 : 0));
            g(byteBufferAllocate);
            writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
            this.f35688h.f(this.f35687f, this.g, writableByteChannel);
            return;
        }
        if (!this.f35685c) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate((h() ? 8 : 16) + ("uuid".equals(str) ? 16 : 0));
            g(byteBufferAllocate2);
            writableByteChannel.write((ByteBuffer) byteBufferAllocate2.rewind());
            writableByteChannel.write((ByteBuffer) this.f35686e.position(0));
            return;
        }
        ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(CastUtils.a(getSize()));
        g(byteBufferAllocate3);
        b(byteBufferAllocate3);
        ByteBuffer byteBuffer = this.f35689i;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            while (this.f35689i.remaining() > 0) {
                byteBufferAllocate3.put(this.f35689i);
            }
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate3.rewind());
    }

    @Override // com.coremedia.iso.boxes.Box
    public final void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        this.f35687f = dataSource.position();
        byteBuffer.remaining();
        this.g = j2;
        this.f35688h = dataSource;
        dataSource.position(dataSource.position() + j2);
        this.d = false;
        this.f35685c = false;
    }

    @Override // com.coremedia.iso.boxes.Box
    public final void e(BasicContainer basicContainer) {
    }

    public abstract long f();

    public final void g(ByteBuffer byteBuffer) {
        boolean zH = h();
        String str = this.f35684b;
        if (zH) {
            byteBuffer.putInt((int) getSize());
            byteBuffer.put(IsoFile.n(str));
        } else {
            byteBuffer.putInt(1);
            byteBuffer.put(IsoFile.n(str));
            byteBuffer.putLong(getSize());
        }
        if ("uuid".equals(str)) {
            byteBuffer.put((byte[]) null);
        }
    }

    @Override // com.coremedia.iso.boxes.Box
    public final long getSize() {
        long jLimit;
        if (!this.d) {
            jLimit = this.g;
        } else if (this.f35685c) {
            jLimit = f();
        } else {
            ByteBuffer byteBuffer = this.f35686e;
            jLimit = byteBuffer != null ? byteBuffer.limit() : 0;
        }
        long j2 = jLimit + ((long) ((jLimit >= 4294967288L ? 8 : 0) + 8 + ("uuid".equals(this.f35684b) ? 16 : 0)));
        ByteBuffer byteBuffer2 = this.f35689i;
        return j2 + ((long) (byteBuffer2 != null ? byteBuffer2.limit() : 0));
    }

    @Override // com.coremedia.iso.boxes.Box
    public final String getType() {
        return this.f35684b;
    }

    public final boolean h() {
        int i2 = "uuid".equals(this.f35684b) ? 24 : 8;
        if (this.d) {
            if (this.f35685c) {
                long jF = f();
                ByteBuffer byteBuffer = this.f35689i;
                if (jF + ((long) (byteBuffer != null ? byteBuffer.limit() : 0)) + ((long) i2) < 4294967296L) {
                    return true;
                }
            } else if (this.f35686e.limit() + i2 < 4294967296L) {
                return true;
            }
        } else if (this.g + ((long) i2) < 4294967296L) {
            return true;
        }
        return false;
    }

    public final synchronized void i() {
        try {
            j();
            f35683j.b("parsing details of " + this.f35684b);
            ByteBuffer byteBuffer = this.f35686e;
            if (byteBuffer != null) {
                this.f35685c = true;
                byteBuffer.rewind();
                a(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.f35689i = byteBuffer.slice();
                }
                this.f35686e = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j() {
        try {
            if (!this.d) {
                try {
                    f35683j.b("mem mapping " + this.f35684b);
                    this.f35686e = this.f35688h.s1(this.f35687f, this.g);
                    this.d = true;
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
