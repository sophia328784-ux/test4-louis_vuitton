package okio;

import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "", "readWrite", "<init>", "(Z)V", "FileHandleSource", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class FileHandle implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f77404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77405c;
    public final ReentrantLock d = new ReentrantLock();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/FileHandle$FileHandleSource;", "Lokio/Source;", "Lokio/FileHandle;", "fileHandle", "", "position", "<init>", "(Lokio/FileHandle;J)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FileHandleSource implements Source {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FileHandle f77406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f77407c;
        public boolean d;

        public FileHandleSource(FileHandle fileHandle, long j2) {
            fileHandle.getClass();
            this.f77406b = fileHandle;
            this.f77407c = j2;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.d) {
                return;
            }
            this.d = true;
            FileHandle fileHandle = this.f77406b;
            ReentrantLock reentrantLock = fileHandle.d;
            reentrantLock.lock();
            try {
                int i2 = fileHandle.f77405c - 1;
                fileHandle.f77405c = i2;
                if (i2 == 0 && fileHandle.f77404b) {
                    reentrantLock.unlock();
                    fileHandle.h();
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j2) {
            long j3;
            long j4;
            buffer.getClass();
            if (this.d) {
                md.k("closed");
                return 0L;
            }
            long j5 = this.f77407c;
            FileHandle fileHandle = this.f77406b;
            fileHandle.getClass();
            if (j2 < 0) {
                b21.n(d21.g(j2, "byteCount < 0: "));
                return 0L;
            }
            long j6 = j2 + j5;
            long j7 = j5;
            while (true) {
                if (j7 < j6) {
                    Segment segmentK0 = buffer.k0(1);
                    byte[] bArr = segmentK0.f77446a;
                    int i2 = segmentK0.f77448c;
                    j3 = -1;
                    int iJ = fileHandle.j(j7, bArr, i2, (int) Math.min(j6 - j7, 8192 - i2));
                    if (iJ == -1) {
                        if (segmentK0.f77447b == segmentK0.f77448c) {
                            buffer.f77389b = segmentK0.a();
                            SegmentPool.a(segmentK0);
                        }
                        if (j5 == j7) {
                            j4 = -1;
                            break;
                        }
                    } else {
                        segmentK0.f77448c += iJ;
                        long j8 = iJ;
                        j7 += j8;
                        buffer.f77390c += j8;
                    }
                } else {
                    j3 = -1;
                }
                j4 = j7 - j5;
                break;
            }
            if (j4 != j3) {
                this.f77407c += j4;
            }
            return j4;
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return Timeout.d;
        }
    }

    public FileHandle(boolean z) {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.d;
        reentrantLock.lock();
        try {
            if (this.f77404b) {
                reentrantLock.unlock();
                return;
            }
            this.f77404b = true;
            if (this.f77405c != 0) {
                reentrantLock.unlock();
            } else {
                reentrantLock.unlock();
                h();
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public abstract void h();

    public abstract int j(long j2, byte[] bArr, int i2, int i3);

    public abstract long k();

    public final Source m(long j2) {
        ReentrantLock reentrantLock = this.d;
        reentrantLock.lock();
        try {
            if (this.f77404b) {
                throw new IllegalStateException("closed");
            }
            this.f77405c++;
            reentrantLock.unlock();
            return new FileHandleSource(this, j2);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long size() {
        ReentrantLock reentrantLock = this.d;
        reentrantLock.lock();
        try {
            if (this.f77404b) {
                throw new IllegalStateException("closed");
            }
            reentrantLock.unlock();
            return k();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
