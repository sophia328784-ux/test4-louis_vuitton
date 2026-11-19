package okhttp3.internal.http2;

import defpackage.b21;
import defpackage.pq0;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.concurrent.Lockable;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "Lokhttp3/internal/concurrent/Lockable;", "Lokio/BufferedSink;", "sink", "", "client", "<init>", "(Lokio/BufferedSink;Z)V", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http2Writer implements Closeable, Lockable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f77276h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSink f77277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f77278c;
    public final Buffer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77280f;
    public final Hpack.Writer g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f77276h = Logger.getLogger(Http2.class.getName());
    }

    public Http2Writer(BufferedSink bufferedSink, boolean z) {
        bufferedSink.getClass();
        this.f77277b = bufferedSink;
        this.f77278c = z;
        Buffer buffer = new Buffer();
        this.d = buffer;
        this.f77279e = 16384;
        this.g = new Hpack.Writer(0, false, buffer, 3, null);
    }

    public final void c(Settings settings) {
        settings.getClass();
        synchronized (this) {
            try {
                if (this.f77280f) {
                    throw new IOException("closed");
                }
                int i2 = this.f77279e;
                int i3 = settings.f77288a;
                if ((i3 & 32) != 0) {
                    i2 = settings.f77289b[5];
                }
                this.f77279e = i2;
                if (((i3 & 2) != 0 ? settings.f77289b[1] : -1) != -1) {
                    Hpack.Writer writer = this.g;
                    int i4 = (i3 & 2) != 0 ? settings.f77289b[1] : -1;
                    writer.getClass();
                    int iMin = Math.min(i4, 16384);
                    int i5 = writer.f77222e;
                    if (i5 != iMin) {
                        if (iMin < i5) {
                            writer.f77221c = Math.min(writer.f77221c, iMin);
                        }
                        writer.d = true;
                        writer.f77222e = iMin;
                        int i6 = writer.f77225i;
                        if (iMin < i6) {
                            if (iMin == 0) {
                                Header[] headerArr = writer.f77223f;
                                ArraysKt.r(headerArr, 0, headerArr.length, null);
                                writer.g = writer.f77223f.length - 1;
                                writer.f77224h = 0;
                                writer.f77225i = 0;
                            } else {
                                writer.a(i6 - iMin);
                            }
                        }
                    }
                }
                e(0, 0, 4, 1);
                this.f77277b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f77280f = true;
            this.f77277b.close();
        }
    }

    public final void d(boolean z, int i2, Buffer buffer, int i3) {
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            e(i2, i3, 0, z ? 1 : 0);
            if (i3 > 0) {
                BufferedSink bufferedSink = this.f77277b;
                buffer.getClass();
                bufferedSink.D(buffer, i3);
            }
        }
    }

    public final void e(int i2, int i3, int i4, int i5) {
        if (i4 != 8) {
            Level level = Level.FINE;
            Logger logger = f77276h;
            if (logger.isLoggable(level)) {
                logger.fine(Http2.b(i2, i3, false, i4, i5));
            }
        }
        if (i3 > this.f77279e) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f77279e + ": " + i3).toString());
        }
        if ((Integer.MIN_VALUE & i2) != 0) {
            b21.n(pq0.k(i2, "reserved bit set: "));
            return;
        }
        byte[] bArr = _UtilCommonKt.f77016a;
        BufferedSink bufferedSink = this.f77277b;
        bufferedSink.getClass();
        bufferedSink.writeByte((i3 >>> 16) & 255);
        bufferedSink.writeByte((i3 >>> 8) & 255);
        bufferedSink.writeByte(i3 & 255);
        bufferedSink.writeByte(i4 & 255);
        bufferedSink.writeByte(i5 & 255);
        bufferedSink.writeInt(i2 & Integer.MAX_VALUE);
    }

    public final void flush() {
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            this.f77277b.flush();
        }
    }

    public final void g(int i2, ErrorCode errorCode, byte[] bArr) {
        errorCode.getClass();
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            e(0, bArr.length + 8, 7, 0);
            this.f77277b.writeInt(i2);
            this.f77277b.writeInt(errorCode.getHttpCode());
            if (bArr.length != 0) {
                this.f77277b.write(bArr);
            }
            this.f77277b.flush();
        }
    }

    public final void h(boolean z, int i2, ArrayList arrayList) {
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            this.g.d(arrayList);
            long j2 = this.d.f77390c;
            long jMin = Math.min(this.f77279e, j2);
            int i3 = j2 == jMin ? 4 : 0;
            if (z) {
                i3 |= 1;
            }
            e(i2, (int) jMin, 1, i3);
            this.f77277b.D(this.d, jMin);
            if (j2 > jMin) {
                long j3 = j2 - jMin;
                while (j3 > 0) {
                    long jMin2 = Math.min(this.f77279e, j3);
                    j3 -= jMin2;
                    e(i2, (int) jMin2, 9, j3 == 0 ? 4 : 0);
                    this.f77277b.D(this.d, jMin2);
                }
            }
        }
    }

    public final void j(int i2, int i3, boolean z) {
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            e(0, 8, 6, z ? 1 : 0);
            this.f77277b.writeInt(i2);
            this.f77277b.writeInt(i3);
            this.f77277b.flush();
        }
    }

    public final void k(int i2, ErrorCode errorCode) {
        errorCode.getClass();
        synchronized (this) {
            if (this.f77280f) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            e(i2, 4, 3, 0);
            this.f77277b.writeInt(errorCode.getHttpCode());
            this.f77277b.flush();
        }
    }

    public final void m(int i2, long j2) {
        synchronized (this) {
            try {
                if (this.f77280f) {
                    throw new IOException("closed");
                }
                if (j2 == 0 || j2 > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j2).toString());
                }
                Logger logger = f77276h;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.c(j2, i2, 4, false));
                }
                e(i2, 4, 8, 0);
                this.f77277b.writeInt((int) j2);
                this.f77277b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
