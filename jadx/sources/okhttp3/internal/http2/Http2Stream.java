package okhttp3.internal.http2;

import defpackage.az;
import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.ss;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u000e\u000f\u0010\u0011B3\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http2/Http2Stream;", "Lokhttp3/internal/concurrent/Lockable;", "Lokio/Socket;", "", com.batch.android.s.b.a.f24015b, "Lokhttp3/internal/http2/Http2Connection;", "connection", "", "outFinished", "inFinished", "Lokhttp3/Headers;", "headers", "<init>", "(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V", "FramingSource", "FramingSink", "Companion", "StreamTimeout", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Http2Stream implements Lockable, Socket {
    public static final /* synthetic */ int o = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Http2Connection f77262c;
    public final WindowCounter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f77263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f77264f;
    public final ArrayDeque g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f77265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FramingSource f77266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FramingSink f77267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StreamTimeout f77268k;
    public final StreamTimeout l;
    public ErrorCode m;
    public IOException n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$Companion;", "", "", "EMIT_BUFFER_SIZE", "J", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokio/Source;", "", "maxByteCount", "", "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;JZ)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class FramingSource implements Source {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f77272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f77273c;
        public final Buffer d = new Buffer();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Buffer f77274e = new Buffer();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f77275f;

        public FramingSource(long j2, boolean z) {
            this.f77272b = j2;
            this.f77273c = z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j2;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.f77275f = true;
                Buffer buffer = this.f77274e;
                j2 = buffer.f77390c;
                buffer.h();
                http2Stream.notifyAll();
            }
            if (j2 > 0) {
                Http2Stream http2Stream2 = Http2Stream.this;
                TimeZone timeZone = _UtilJvmKt.f77018a;
                http2Stream2.f77262c.h(j2);
            }
            Http2Stream.this.b();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0027  */
        @Override // okio.Source
        public final long read(Buffer buffer, long j2) throws Throwable {
            boolean z;
            boolean z2;
            Throwable streamResetException;
            long j3;
            long j4;
            buffer.getClass();
            long j5 = 0;
            if (j2 < 0) {
                b21.n(d21.g(j2, "byteCount < 0: "));
                return 0L;
            }
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                synchronized (http2Stream) {
                    int i2 = Http2Stream.o;
                    z = true;
                    if (http2Stream.f77262c.f77229b) {
                        FramingSink framingSink = http2Stream.f77267j;
                        if (framingSink.d || framingSink.f77269b) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = true;
                    }
                    if (z2) {
                        http2Stream.f77268k.i();
                    }
                    try {
                        if (http2Stream.g() == null || this.f77273c) {
                            streamResetException = null;
                        } else {
                            streamResetException = http2Stream.n;
                            if (streamResetException == null) {
                                ErrorCode errorCodeG = http2Stream.g();
                                errorCodeG.getClass();
                                streamResetException = new StreamResetException(errorCodeG);
                            }
                        }
                        if (this.f77275f) {
                            throw new IOException("stream closed");
                        }
                        Buffer buffer2 = this.f77274e;
                        long j6 = buffer2.f77390c;
                        if (j6 > j5) {
                            j4 = buffer2.read(buffer, Math.min(j2, j6));
                            WindowCounter.b(http2Stream.d, j4, 0L, 2);
                            long jA = http2Stream.d.a();
                            if (streamResetException == null) {
                                j3 = j5;
                                if (jA >= http2Stream.f77262c.t.a() / 2) {
                                    http2Stream.f77262c.m(http2Stream.f77261b, jA);
                                    WindowCounter.b(http2Stream.d, 0L, jA, 1);
                                }
                            } else {
                                j3 = j5;
                            }
                            z = false;
                        } else {
                            j3 = j5;
                            if (this.f77273c || streamResetException != null) {
                                z = false;
                            } else {
                                try {
                                    http2Stream.wait();
                                } catch (InterruptedException unused) {
                                    Thread.currentThread().interrupt();
                                    throw new InterruptedIOException();
                                }
                            }
                            j4 = -1;
                        }
                        if (z2) {
                            http2Stream.f77268k.m();
                        }
                    } catch (Throwable th) {
                        if (z2) {
                            http2Stream.f77268k.m();
                        }
                        throw th;
                    }
                }
                Http2Stream http2Stream2 = Http2Stream.this;
                FlowControlListener flowControlListener = http2Stream2.f77262c.s;
                WindowCounter windowCounter = http2Stream2.d;
                long j7 = this.f77274e.f77390c;
                flowControlListener.a(windowCounter);
                if (!z) {
                    if (j4 != -1) {
                        return j4;
                    }
                    if (streamResetException == null) {
                        return -1L;
                    }
                    throw streamResetException;
                }
                j5 = j3;
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77426c() {
            return Http2Stream.this.f77268k;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokio/AsyncTimeout;", "<init>", "(Lokhttp3/internal/http2/Http2Stream;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        public final IOException k(IOException iOException) {
            return new SocketTimeoutException("timeout");
        }

        @Override // okio.AsyncTimeout
        public final void l() {
            Http2Stream.this.f(ErrorCode.CANCEL);
            Http2Connection http2Connection = Http2Stream.this.f77262c;
            synchronized (http2Connection) {
                long j2 = http2Connection.q;
                long j3 = http2Connection.p;
                if (j2 < j3) {
                    return;
                }
                http2Connection.p = j3 + 1;
                http2Connection.r = System.nanoTime() + 1000000000;
                TaskQueue.b(http2Connection.f77235j, n00.r(http2Connection.f77231e, " ping", new StringBuilder()), 0L, new ss(http2Connection, 18), 6);
            }
        }

        public final void m() throws IOException {
            if (j()) {
                throw k(null);
            }
        }
    }

    static {
        new Companion(null);
    }

    public Http2Stream(int i2, Http2Connection http2Connection, boolean z, boolean z2, Headers headers) {
        http2Connection.getClass();
        this.f77261b = i2;
        this.f77262c = http2Connection;
        this.d = new WindowCounter(i2);
        this.f77264f = http2Connection.u.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.g = arrayDeque;
        this.f77266i = new FramingSource(http2Connection.t.a(), z2);
        this.f77267j = new FramingSink(z);
        this.f77268k = new StreamTimeout();
        this.l = new StreamTimeout();
        if (headers == null) {
            if (h()) {
                return;
            }
            md.k("remotely-initiated streams should have headers");
            throw null;
        }
        if (h()) {
            md.k("locally-initiated streams shouldn't have headers yet");
            throw null;
        }
        arrayDeque.add(headers);
    }

    @Override // okio.Socket
    public final Sink a() {
        return this.f77267j;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001c  */
    public final void b() {
        boolean z;
        boolean zI;
        TimeZone timeZone = _UtilJvmKt.f77018a;
        synchronized (this) {
            try {
                FramingSource framingSource = this.f77266i;
                if (framingSource.f77273c || !framingSource.f77275f) {
                    z = false;
                } else {
                    FramingSink framingSink = this.f77267j;
                    if (framingSink.f77269b || framingSink.d) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                zI = i();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            d(ErrorCode.CANCEL, null);
        } else {
            if (zI) {
                return;
            }
            this.f77262c.e(this.f77261b);
        }
    }

    public final void c() throws IOException {
        FramingSink framingSink = this.f77267j;
        if (framingSink.d) {
            az.o("stream closed");
            return;
        }
        if (framingSink.f77269b) {
            az.o("stream finished");
            return;
        }
        if (g() != null) {
            IOException iOException = this.n;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCodeG = g();
            errorCodeG.getClass();
            throw new StreamResetException(errorCodeG);
        }
    }

    @Override // okio.Socket
    public final void cancel() {
        f(ErrorCode.CANCEL);
    }

    public final void d(ErrorCode errorCode, IOException iOException) {
        errorCode.getClass();
        if (e(errorCode, iOException)) {
            Http2Connection http2Connection = this.f77262c;
            http2Connection.getClass();
            http2Connection.z.k(this.f77261b, errorCode);
        }
    }

    public final boolean e(ErrorCode errorCode, IOException iOException) {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        synchronized (this) {
            if (g() != null) {
                return false;
            }
            this.m = errorCode;
            this.n = iOException;
            notifyAll();
            if (this.f77266i.f77273c && this.f77267j.f77269b) {
                return false;
            }
            this.f77262c.e(this.f77261b);
            return true;
        }
    }

    public final void f(ErrorCode errorCode) {
        errorCode.getClass();
        if (e(errorCode, null)) {
            this.f77262c.k(this.f77261b, errorCode);
        }
    }

    public final ErrorCode g() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.m;
        }
        return errorCode;
    }

    @Override // okio.Socket
    public final Source getSource() {
        return this.f77266i;
    }

    public final boolean h() {
        return this.f77262c.f77229b == ((this.f77261b & 1) == 1);
    }

    public final boolean i() {
        synchronized (this) {
            try {
                if (g() != null) {
                    return false;
                }
                FramingSource framingSource = this.f77266i;
                if (framingSource.f77273c || framingSource.f77275f) {
                    FramingSink framingSink = this.f77267j;
                    if ((framingSink.f77269b || framingSink.d) && this.f77265h) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(Headers headers, boolean z) {
        boolean zI;
        headers.getClass();
        TimeZone timeZone = _UtilJvmKt.f77018a;
        synchronized (this) {
            try {
                if (this.f77265h && headers.a(":status") == null && headers.a(":method") == null) {
                    this.f77266i.getClass();
                } else {
                    this.f77265h = true;
                    this.g.add(headers);
                }
                if (z) {
                    this.f77266i.f77273c = true;
                }
                zI = i();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zI) {
            return;
        }
        this.f77262c.e(this.f77261b);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokio/Sink;", "", "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;Z)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class FramingSink implements Sink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f77269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Buffer f77270c;
        public boolean d;

        public FramingSink(boolean z) {
            this.f77269b = z;
            this.f77270c = new Buffer();
        }

        @Override // okio.Sink
        public final void D(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            TimeZone timeZone = _UtilJvmKt.f77018a;
            Buffer buffer2 = this.f77270c;
            buffer2.D(buffer, j2);
            while (buffer2.f77390c >= 16384) {
                c(false);
            }
        }

        public final void c(boolean z) throws IOException {
            long jMin;
            boolean z2;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                http2Stream.l.i();
                while (http2Stream.f77263e >= http2Stream.f77264f && !this.f77269b && !this.d && http2Stream.g() == null) {
                    try {
                        try {
                            http2Stream.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        http2Stream.l.m();
                        throw th;
                    }
                }
                http2Stream.l.m();
                http2Stream.c();
                jMin = Math.min(http2Stream.f77264f - http2Stream.f77263e, this.f77270c.f77390c);
                http2Stream.f77263e += jMin;
                z2 = z && jMin == this.f77270c.f77390c;
            }
            Http2Stream.this.l.i();
            try {
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.f77262c.j(http2Stream2.f77261b, z2, this.f77270c, jMin);
            } finally {
                Http2Stream.this.l.m();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.f77018a;
            synchronized (http2Stream) {
                if (this.d) {
                    return;
                }
                boolean z = http2Stream.g() == null;
                Http2Stream http2Stream2 = Http2Stream.this;
                if (!http2Stream2.f77267j.f77269b) {
                    if (this.f77270c.f77390c > 0) {
                        while (this.f77270c.f77390c > 0) {
                            c(true);
                        }
                    } else if (z) {
                        http2Stream2.f77262c.j(http2Stream2.f77261b, true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.d = true;
                    http2Stream3.notifyAll();
                }
                Http2Stream.this.f77262c.flush();
                Http2Stream.this.b();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.f77018a;
            synchronized (http2Stream) {
                http2Stream.c();
            }
            while (this.f77270c.f77390c > 0) {
                c(false);
                Http2Stream.this.f77262c.flush();
            }
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77431c() {
            return Http2Stream.this.l;
        }

        public /* synthetic */ FramingSink(Http2Stream http2Stream, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }
    }
}
