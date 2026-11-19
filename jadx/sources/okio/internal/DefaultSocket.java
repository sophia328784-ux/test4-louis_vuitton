package okio.internal;

import defpackage.b21;
import defpackage.d21;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import okio.Buffer;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lokio/internal/DefaultSocket;", "Lokio/Socket;", "Ljava/net/Socket;", "socket", "<init>", "(Ljava/net/Socket;)V", "SocketSink", "SocketSource", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultSocket implements Socket {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.net.Socket f77467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f77468c;
    public final SocketSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SocketSink f77469e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/internal/DefaultSocket$SocketSink;", "Lokio/Sink;", "<init>", "(Lokio/internal/DefaultSocket;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SocketSink implements Sink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final OutputStream f77470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocketAsyncTimeout f77471c;

        public SocketSink() {
            this.f77470b = DefaultSocket.this.f77467b.getOutputStream();
            this.f77471c = new SocketAsyncTimeout(DefaultSocket.this.f77467b);
        }

        @Override // okio.Sink
        public final void D(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            SegmentedByteString.b(buffer.f77390c, 0L, j2);
            while (j2 > 0) {
                SocketAsyncTimeout socketAsyncTimeout = this.f77471c;
                socketAsyncTimeout.f();
                Segment segment = buffer.f77389b;
                segment.getClass();
                int iMin = (int) Math.min(j2, segment.f77448c - segment.f77447b);
                socketAsyncTimeout.i();
                try {
                    try {
                        this.f77470b.write(segment.f77446a, segment.f77447b, iMin);
                        if (socketAsyncTimeout.j()) {
                            throw socketAsyncTimeout.k(null);
                        }
                        int i2 = segment.f77447b + iMin;
                        segment.f77447b = i2;
                        long j3 = iMin;
                        j2 -= j3;
                        buffer.f77390c -= j3;
                        if (i2 == segment.f77448c) {
                            buffer.f77389b = segment.a();
                            SegmentPool.a(segment);
                        }
                    } catch (IOException e2) {
                        if (!socketAsyncTimeout.j()) {
                            throw e2;
                        }
                        throw socketAsyncTimeout.k(e2);
                    }
                } catch (Throwable th) {
                    socketAsyncTimeout.j();
                    throw th;
                }
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            int i2;
            OutputStream outputStream = this.f77470b;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.f77471c;
            socketAsyncTimeout.i();
            try {
                try {
                    AtomicInteger atomicInteger = defaultSocket.f77468c;
                    java.net.Socket socket = defaultSocket.f77467b;
                    atomicInteger.getClass();
                    while (true) {
                        int i3 = atomicInteger.get();
                        if ((i3 & 1) != 0) {
                            i2 = 0;
                            break;
                        }
                        int i4 = i3 | 1;
                        if (atomicInteger.compareAndSet(i3, i4)) {
                            i2 = i4;
                            break;
                        }
                    }
                    if (i2 == 0) {
                        socketAsyncTimeout.j();
                        return;
                    }
                    if (i2 != 3) {
                        if (!socket.isClosed() && !socket.isOutputShutdown()) {
                            outputStream.flush();
                            try {
                                socket.shutdownOutput();
                            } catch (UnsupportedOperationException unused) {
                                outputStream.close();
                            }
                        }
                        socketAsyncTimeout.j();
                        return;
                    }
                    socket.close();
                    if (socketAsyncTimeout.j()) {
                        throw socketAsyncTimeout.k(null);
                    }
                } catch (IOException e2) {
                    if (!socketAsyncTimeout.j()) {
                        throw e2;
                    }
                    throw socketAsyncTimeout.k(e2);
                }
            } catch (Throwable th) {
                socketAsyncTimeout.j();
                throw th;
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() throws IOException {
            SocketAsyncTimeout socketAsyncTimeout = this.f77471c;
            socketAsyncTimeout.i();
            try {
                try {
                    this.f77470b.flush();
                    if (socketAsyncTimeout.j()) {
                        throw socketAsyncTimeout.k(null);
                    }
                } catch (IOException e2) {
                    if (!socketAsyncTimeout.j()) {
                        throw e2;
                    }
                    throw socketAsyncTimeout.k(e2);
                }
            } catch (Throwable th) {
                socketAsyncTimeout.j();
                throw th;
            }
        }

        @Override // okio.Sink
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77431c() {
            return this.f77471c;
        }

        public final String toString() {
            return "sink(" + DefaultSocket.this.f77467b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/internal/DefaultSocket$SocketSource;", "Lokio/Source;", "<init>", "(Lokio/internal/DefaultSocket;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SocketSource implements Source {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final InputStream f77472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SocketAsyncTimeout f77473c;

        public SocketSource() {
            this.f77472b = DefaultSocket.this.f77467b.getInputStream();
            this.f77473c = new SocketAsyncTimeout(DefaultSocket.this.f77467b);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            int i2;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.f77473c;
            socketAsyncTimeout.i();
            try {
                try {
                    AtomicInteger atomicInteger = defaultSocket.f77468c;
                    java.net.Socket socket = defaultSocket.f77467b;
                    atomicInteger.getClass();
                    while (true) {
                        int i3 = atomicInteger.get();
                        if ((i3 & 2) != 0) {
                            i2 = 0;
                            break;
                        }
                        int i4 = i3 | 2;
                        if (atomicInteger.compareAndSet(i3, i4)) {
                            i2 = i4;
                            break;
                        }
                    }
                    if (i2 == 0) {
                        socketAsyncTimeout.j();
                        return;
                    }
                    if (i2 == 3) {
                        socket.close();
                    } else if (socket.isClosed() || socket.isInputShutdown()) {
                        socketAsyncTimeout.j();
                        return;
                    } else {
                        try {
                            socket.shutdownInput();
                        } catch (UnsupportedOperationException unused) {
                            this.f77472b.close();
                        }
                    }
                    if (socketAsyncTimeout.j()) {
                        throw socketAsyncTimeout.k(null);
                    }
                } catch (IOException e2) {
                    if (!socketAsyncTimeout.j()) {
                        throw e2;
                    }
                    throw socketAsyncTimeout.k(e2);
                }
            } catch (Throwable th) {
                socketAsyncTimeout.j();
                throw th;
            }
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j2) throws IOException {
            buffer.getClass();
            if (j2 == 0) {
                return 0L;
            }
            if (j2 < 0) {
                b21.n(d21.g(j2, "byteCount < 0: "));
                return 0L;
            }
            SocketAsyncTimeout socketAsyncTimeout = this.f77473c;
            socketAsyncTimeout.f();
            Segment segmentK0 = buffer.k0(1);
            int iMin = (int) Math.min(j2, 8192 - segmentK0.f77448c);
            try {
                socketAsyncTimeout.i();
                try {
                    try {
                        int i2 = this.f77472b.read(segmentK0.f77446a, segmentK0.f77448c, iMin);
                        if (socketAsyncTimeout.j()) {
                            throw socketAsyncTimeout.k(null);
                        }
                        if (i2 != -1) {
                            segmentK0.f77448c += i2;
                            long j3 = i2;
                            buffer.f77390c += j3;
                            return j3;
                        }
                        if (segmentK0.f77447b != segmentK0.f77448c) {
                            return -1L;
                        }
                        buffer.f77389b = segmentK0.a();
                        SegmentPool.a(segmentK0);
                        return -1L;
                    } catch (IOException e2) {
                        if (socketAsyncTimeout.j()) {
                            throw socketAsyncTimeout.k(e2);
                        }
                        throw e2;
                    }
                } catch (Throwable th) {
                    socketAsyncTimeout.j();
                    throw th;
                }
            } catch (AssertionError e3) {
                if (_JavaIoKt.a(e3)) {
                    throw new IOException(e3);
                }
                throw e3;
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public final Timeout getF77426c() {
            return this.f77473c;
        }

        public final String toString() {
            return "source(" + DefaultSocket.this.f77467b + ')';
        }
    }

    public DefaultSocket(java.net.Socket socket) {
        socket.getClass();
        this.f77467b = socket;
        this.f77468c = new AtomicInteger();
        this.d = new SocketSource();
        this.f77469e = new SocketSink();
    }

    @Override // okio.Socket
    public final Sink a() {
        return this.f77469e;
    }

    @Override // okio.Socket
    public final void cancel() throws IOException {
        this.f77467b.close();
    }

    @Override // okio.Socket
    public final Source getSource() {
        return this.d;
    }

    public final String toString() {
        String string = this.f77467b.toString();
        string.getClass();
        return string;
    }
}
