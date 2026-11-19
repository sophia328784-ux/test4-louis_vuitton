package androidx.media3.decoder;

import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.exoplayer.image.ImageOutputBuffer;
import com.google.common.base.Preconditions;
import defpackage.bm;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends DecoderOutputBuffer, E extends DecoderException> implements Decoder<I, O, E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Thread f14549a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DecoderInputBuffer[] f14552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DecoderOutputBuffer[] f14553f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DecoderInputBuffer f14555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DecoderException f14556j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14557k;
    public boolean l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14550b = new Object();
    public long m = -9223372036854775807L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f14551c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();

    public SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, DecoderOutputBuffer[] decoderOutputBufferArr) {
        this.f14552e = decoderInputBufferArr;
        this.g = decoderInputBufferArr.length;
        for (int i2 = 0; i2 < this.g; i2++) {
            this.f14552e[i2] = g();
        }
        this.f14553f = decoderOutputBufferArr;
        this.f14554h = decoderOutputBufferArr.length;
        for (int i3 = 0; i3 < this.f14554h; i3++) {
            this.f14553f[i3] = h();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: androidx.media3.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder simpleDecoder = SimpleDecoder.this;
                simpleDecoder.getClass();
                do {
                    try {
                    } catch (InterruptedException e2) {
                        bm.i(e2);
                        return;
                    }
                } while (simpleDecoder.k());
            }
        };
        this.f14549a = thread;
        thread.start();
    }

    @Override // androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ ImageOutputBuffer a() {
        return (ImageOutputBuffer) a();
    }

    @Override // androidx.media3.decoder.Decoder
    public final void d(long j2) {
        synchronized (this.f14550b) {
            try {
                Preconditions.q(this.g == this.f14552e.length || this.f14557k);
                this.m = j2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final Object e() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.f14550b) {
            try {
                DecoderException decoderException = this.f14556j;
                if (decoderException != null) {
                    throw decoderException;
                }
                Preconditions.q(this.f14555i == null);
                int i2 = this.g;
                if (i2 == 0) {
                    decoderInputBuffer = null;
                } else {
                    DecoderInputBuffer[] decoderInputBufferArr = this.f14552e;
                    int i3 = i2 - 1;
                    this.g = i3;
                    decoderInputBuffer = decoderInputBufferArr[i3];
                }
                this.f14555i = decoderInputBuffer;
            } catch (Throwable th) {
                throw th;
            }
        }
        return decoderInputBuffer;
    }

    @Override // androidx.media3.decoder.Decoder
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void c(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.f14550b) {
            try {
                DecoderException decoderException = this.f14556j;
                if (decoderException != null) {
                    throw decoderException;
                }
                Preconditions.g(decoderInputBuffer == this.f14555i);
                this.f14551c.addLast(decoderInputBuffer);
                if (!this.f14551c.isEmpty() && this.f14554h > 0) {
                    this.f14550b.notify();
                }
                this.f14555i = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void flush() {
        synchronized (this.f14550b) {
            try {
                this.f14557k = true;
                DecoderInputBuffer decoderInputBuffer = this.f14555i;
                if (decoderInputBuffer != null) {
                    decoderInputBuffer.g();
                    DecoderInputBuffer[] decoderInputBufferArr = this.f14552e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    decoderInputBufferArr[i2] = decoderInputBuffer;
                    this.f14555i = null;
                }
                while (!this.f14551c.isEmpty()) {
                    DecoderInputBuffer decoderInputBuffer2 = (DecoderInputBuffer) this.f14551c.removeFirst();
                    decoderInputBuffer2.g();
                    DecoderInputBuffer[] decoderInputBufferArr2 = this.f14552e;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    decoderInputBufferArr2[i3] = decoderInputBuffer2;
                }
                while (!this.d.isEmpty()) {
                    ((DecoderOutputBuffer) this.d.removeFirst()).h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract DecoderInputBuffer g();

    public abstract DecoderOutputBuffer h();

    public abstract DecoderException i(Throwable th);

    public abstract DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z);

    public final boolean k() {
        boolean z;
        DecoderException decoderExceptionI;
        synchronized (this.f14550b) {
            while (!this.l) {
                try {
                    if (!this.f14551c.isEmpty() && this.f14554h > 0) {
                        break;
                    }
                    this.f14550b.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.f14551c.removeFirst();
            DecoderOutputBuffer[] decoderOutputBufferArr = this.f14553f;
            int i2 = this.f14554h - 1;
            this.f14554h = i2;
            DecoderOutputBuffer decoderOutputBuffer = decoderOutputBufferArr[i2];
            boolean z2 = this.f14557k;
            this.f14557k = false;
            if (decoderInputBuffer.f(4)) {
                decoderOutputBuffer.e(4);
            } else {
                decoderOutputBuffer.f14548c = decoderInputBuffer.g;
                if (decoderInputBuffer.f(134217728)) {
                    decoderOutputBuffer.e(134217728);
                }
                long j2 = decoderInputBuffer.g;
                synchronized (this.f14550b) {
                    long j3 = this.m;
                    z = j3 == -9223372036854775807L || j2 >= j3;
                }
                if (!z) {
                    decoderOutputBuffer.d = true;
                }
                try {
                    decoderExceptionI = j(decoderInputBuffer, decoderOutputBuffer, z2);
                } catch (OutOfMemoryError e2) {
                    decoderExceptionI = i(e2);
                } catch (RuntimeException e3) {
                    decoderExceptionI = i(e3);
                }
                if (decoderExceptionI != null) {
                    synchronized (this.f14550b) {
                        this.f14556j = decoderExceptionI;
                    }
                    return false;
                }
            }
            synchronized (this.f14550b) {
                try {
                    if (this.f14557k || decoderOutputBuffer.d) {
                        decoderOutputBuffer.h();
                    } else {
                        this.d.addLast(decoderOutputBuffer);
                    }
                    decoderInputBuffer.g();
                    DecoderInputBuffer[] decoderInputBufferArr = this.f14552e;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    decoderInputBufferArr[i3] = decoderInputBuffer;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    @Override // androidx.media3.decoder.Decoder
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final DecoderOutputBuffer a() {
        synchronized (this.f14550b) {
            try {
                DecoderException decoderException = this.f14556j;
                if (decoderException != null) {
                    throw decoderException;
                }
                if (this.d.isEmpty()) {
                    return null;
                }
                return (DecoderOutputBuffer) this.d.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(DecoderOutputBuffer decoderOutputBuffer) {
        synchronized (this.f14550b) {
            decoderOutputBuffer.g();
            DecoderOutputBuffer[] decoderOutputBufferArr = this.f14553f;
            int i2 = this.f14554h;
            this.f14554h = i2 + 1;
            decoderOutputBufferArr[i2] = decoderOutputBuffer;
            if (!this.f14551c.isEmpty() && this.f14554h > 0) {
                this.f14550b.notify();
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void release() {
        synchronized (this.f14550b) {
            this.l = true;
            this.f14550b.notify();
        }
        try {
            this.f14549a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
