package com.networkbench.agent.impl.instrumentation.io;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSCountingInputStream extends InputStream implements NBSStreamCompleteListenerSource {
    private static final e log = f.a();
    private final ByteBuffer buffer;
    private long count;
    private boolean enableBuffering;
    private final InputStream impl;
    private final a listenerManager;

    public NBSCountingInputStream(InputStream inputStream) {
        this.count = 0L;
        this.listenerManager = new a();
        this.enableBuffering = false;
        this.impl = inputStream;
        e eVar = log;
        eVar.a("new NBSCountingInputStream");
        if (!this.enableBuffering) {
            this.buffer = null;
            return;
        }
        eVar.a("buffer enabled");
        this.buffer = ByteBuffer.allocate(NBSAgent.getResponseBodyLimit());
        fillBuffer();
    }

    private int a(byte[] bArr, int i2, int i3) {
        if (b()) {
            return -1;
        }
        int iRemaining = this.buffer.remaining();
        this.buffer.get(bArr, i2, i3);
        return iRemaining - this.buffer.remaining();
    }

    private boolean b() {
        return !this.buffer.hasRemaining();
    }

    private void c() {
        if (this.listenerManager.a()) {
            return;
        }
        this.listenerManager.a(new NBSStreamCompleteEvent(this, this.count));
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource
    public void addStreamCompleteListener(NBSStreamCompleteListener nBSStreamCompleteListener) {
        a aVar = this.listenerManager;
        if (aVar != null) {
            aVar.a(nBSStreamCompleteListener);
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return (this.enableBuffering ? this.buffer.remaining() : 0) + this.impl.available();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            InputStream inputStream = this.impl;
            if (inputStream != null) {
                inputStream.close();
            }
            c();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public void fillBuffer() {
        int i2;
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer == null || !byteBuffer.hasArray()) {
            return;
        }
        synchronized (this.buffer) {
            try {
                i2 = this.impl.read(this.buffer.array(), 0, this.buffer.capacity());
            } catch (IOException e2) {
                log.e(e2.toString());
                i2 = 0;
            }
            ByteBuffer byteBuffer2 = this.buffer;
            if (i2 <= 0) {
                byteBuffer2.limit(0);
            } else if (i2 < byteBuffer2.capacity()) {
                this.buffer.limit(i2);
            }
        }
    }

    public String getBufferAsString() {
        String str;
        ByteBuffer byteBuffer = this.buffer;
        if (byteBuffer == null) {
            return "";
        }
        synchronized (byteBuffer) {
            byte[] bArr = new byte[this.buffer.limit()];
            for (int i2 = 0; i2 < this.buffer.limit(); i2++) {
                bArr[i2] = this.buffer.get(i2);
            }
            try {
                str = new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str = null;
            }
        }
        return str;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i2) {
        if (markSupported()) {
            this.impl.mark(i2);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.impl.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int length = bArr.length;
        int iA = 0;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                try {
                    if (a(length)) {
                        int iA2 = a(bArr);
                        if (iA2 < 0) {
                            throw new IOException("readBufferBytes failed");
                        }
                        this.count += (long) iA2;
                        return iA2;
                    }
                    int iRemaining = this.buffer.remaining();
                    if (iRemaining > 0) {
                        iA = a(bArr, 0, iRemaining);
                        if (iA < 0) {
                            throw new IOException("partial read from buffer failed");
                        }
                        length -= iA;
                        this.count += (long) iA;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        try {
            int i2 = this.impl.read(bArr, iA, length);
            if (i2 >= 0) {
                this.count += (long) i2;
                return i2 + iA;
            }
            log.d("end flag:" + i2);
            if (iA > 0) {
                return iA;
            }
            c();
            return i2;
        } catch (IOException e2) {
            log.e("NOTIFY STREAM ERROR: " + e2.toString());
            e2.printStackTrace();
            a(e2);
            throw e2;
        }
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource
    public void removeStreamCompleteListener(NBSStreamCompleteListener nBSStreamCompleteListener) {
        this.listenerManager.b(nBSStreamCompleteListener);
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (markSupported()) {
            try {
                this.impl.reset();
            } catch (IOException e2) {
                a(e2);
                throw e2;
            }
        }
    }

    public void setBufferingEnabled(boolean z) {
        this.enableBuffering = z;
    }

    @Override // java.io.InputStream
    public long skip(long j2) throws IOException {
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                try {
                    boolean zA = a(j2);
                    ByteBuffer byteBuffer = this.buffer;
                    if (zA) {
                        byteBuffer.position((int) j2);
                        this.count += j2;
                        return j2;
                    }
                    j2 -= (long) byteBuffer.remaining();
                    if (j2 <= 0) {
                        throw new IOException("partial read from buffer (skip) failed");
                    }
                    ByteBuffer byteBuffer2 = this.buffer;
                    byteBuffer2.position(byteBuffer2.remaining());
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        try {
            long jSkip = this.impl.skip(j2);
            this.count += jSkip;
            return jSkip;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    private int a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private int a() {
        if (b()) {
            return -1;
        }
        return this.buffer.get() & 255;
    }

    private boolean a(long j2) {
        return ((long) this.buffer.remaining()) >= j2;
    }

    private void a(Exception exc) {
        if (this.listenerManager.a()) {
            return;
        }
        this.listenerManager.b(new NBSStreamCompleteEvent(this, this.count, exc));
    }

    public NBSCountingInputStream(InputStream inputStream, boolean z) {
        this.count = 0L;
        this.listenerManager = new a();
        this.impl = inputStream;
        this.enableBuffering = z;
        if (z) {
            this.buffer = ByteBuffer.allocate(NBSAgent.getResponseBodyLimit());
            fillBuffer();
        } else {
            this.buffer = null;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                try {
                    if (a(1L)) {
                        int iA = a();
                        if (iA >= 0) {
                            this.count++;
                        }
                        return iA;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        try {
            int i2 = this.impl.read();
            if (i2 >= 0) {
                this.count++;
                return i2;
            }
            c();
            return i2;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int iA;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (i3 != 0) {
                    try {
                        if (a(i3)) {
                            int iA2 = a(bArr, i2, i3);
                            if (iA2 >= 0) {
                                this.count += (long) iA2;
                                return iA2;
                            }
                            throw new IOException("readBufferBytes failed");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int iRemaining = this.buffer.remaining();
                if (iRemaining > 0) {
                    iA = a(bArr, i2, iRemaining);
                    if (iA >= 0) {
                        i3 -= iA;
                        this.count += (long) iA;
                    } else {
                        throw new IOException("partial read from buffer failed");
                    }
                } else {
                    iA = 0;
                }
            }
        } else {
            iA = 0;
        }
        try {
            InputStream inputStream = this.impl;
            if (inputStream == null) {
                return 0;
            }
            int i4 = inputStream.read(bArr, i2 + iA, i3);
            if (i4 >= 0) {
                this.count += (long) i4;
                return i4 + iA;
            }
            if (iA > 0) {
                return iA;
            }
            c();
            return i4;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }
}
