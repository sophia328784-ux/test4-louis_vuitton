package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import defpackage.bm;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
class AsynchronousMediaCodecBufferEnqueuer implements MediaCodecBufferEnqueuer {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ArrayDeque f15339h = new ArrayDeque();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f15340i = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f15341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f15342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f15343c;
    public final AtomicReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConditionVariable f15344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15345f;
    public boolean g;

    public static class MessageParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f15348c = new MediaCodec.CryptoInfo();
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f15349e;
    }

    public AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.f15341a = mediaCodec;
        this.f15342b = handlerThread;
        this.f15344e = conditionVariable;
        this.f15345f = z;
        this.d = new AtomicReference();
    }

    public static MessageParams e() {
        ArrayDeque arrayDeque = f15339h;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new MessageParams();
                }
                return (MessageParams) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void a(int i2, CryptoInfo cryptoInfo, long j2, int i3) {
        d();
        MessageParams messageParamsE = e();
        messageParamsE.f15346a = i2;
        messageParamsE.f15347b = 0;
        messageParamsE.d = j2;
        messageParamsE.f15349e = i3;
        MediaCodec.CryptoInfo cryptoInfo2 = messageParamsE.f15348c;
        cryptoInfo2.numSubSamples = cryptoInfo.f14536f;
        int[] iArr = cryptoInfo.d;
        int[] iArrCopyOf = cryptoInfo2.numBytesOfClearData;
        if (iArr != null) {
            if (iArrCopyOf == null || iArrCopyOf.length < iArr.length) {
                iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, iArr.length);
            }
        }
        cryptoInfo2.numBytesOfClearData = iArrCopyOf;
        int[] iArr2 = cryptoInfo.f14535e;
        int[] iArrCopyOf2 = cryptoInfo2.numBytesOfEncryptedData;
        if (iArr2 != null) {
            if (iArrCopyOf2 == null || iArrCopyOf2.length < iArr2.length) {
                iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
            } else {
                System.arraycopy(iArr2, 0, iArrCopyOf2, 0, iArr2.length);
            }
        }
        cryptoInfo2.numBytesOfEncryptedData = iArrCopyOf2;
        byte[] bArr = cryptoInfo.f14533b;
        byte[] bArrCopyOf = cryptoInfo2.key;
        if (bArr != null) {
            if (bArrCopyOf == null || bArrCopyOf.length < bArr.length) {
                bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArrCopyOf, 0, bArr.length);
            }
        }
        bArrCopyOf.getClass();
        cryptoInfo2.key = bArrCopyOf;
        byte[] bArr2 = cryptoInfo.f14532a;
        byte[] bArrCopyOf2 = cryptoInfo2.iv;
        if (bArr2 != null) {
            if (bArrCopyOf2 == null || bArrCopyOf2.length < bArr2.length) {
                bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArrCopyOf2, 0, bArr2.length);
            }
        }
        bArrCopyOf2.getClass();
        cryptoInfo2.iv = bArrCopyOf2;
        cryptoInfo2.mode = cryptoInfo.f14534c;
        cryptoInfo2.setPattern(new MediaCodec.CryptoInfo.Pattern(cryptoInfo.g, cryptoInfo.f14537h));
        Handler handler = this.f15343c;
        String str = Util.f14242a;
        handler.obtainMessage(2, messageParamsE).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void b(Bundle bundle) {
        d();
        Handler handler = this.f15343c;
        String str = Util.f14242a;
        handler.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void c(int i2, int i3, int i4, long j2) {
        d();
        MessageParams messageParamsE = e();
        messageParamsE.f15346a = i2;
        messageParamsE.f15347b = i3;
        messageParamsE.d = j2;
        messageParamsE.f15349e = i4;
        Handler handler = this.f15343c;
        String str = Util.f14242a;
        handler.obtainMessage(1, messageParamsE).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void d() {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void flush() {
        if (this.g) {
            try {
                Handler handler = this.f15343c;
                handler.getClass();
                handler.removeCallbacksAndMessages(null);
                ConditionVariable conditionVariable = this.f15344e;
                synchronized (conditionVariable) {
                    conditionVariable.f14151b = false;
                }
                Handler handler2 = this.f15343c;
                handler2.getClass();
                handler2.obtainMessage(3).sendToTarget();
                conditionVariable.a();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                bm.i(e2);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void shutdown() {
        if (this.g) {
            flush();
            this.f15342b.quit();
        }
        this.g = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void start() {
        if (this.g) {
            return;
        }
        HandlerThread handlerThread = this.f15342b;
        handlerThread.start();
        this.f15343c = new Handler(handlerThread.getLooper()) { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AsynchronousMediaCodecBufferEnqueuer asynchronousMediaCodecBufferEnqueuer = AsynchronousMediaCodecBufferEnqueuer.this;
                ArrayDeque arrayDeque = AsynchronousMediaCodecBufferEnqueuer.f15339h;
                asynchronousMediaCodecBufferEnqueuer.getClass();
                int i2 = message.what;
                MessageParams messageParams = null;
                if (i2 == 1) {
                    MessageParams messageParams2 = (MessageParams) message.obj;
                    try {
                        asynchronousMediaCodecBufferEnqueuer.f15341a.queueInputBuffer(messageParams2.f15346a, 0, messageParams2.f15347b, messageParams2.d, messageParams2.f15349e);
                    } catch (RuntimeException e2) {
                        AtomicReference atomicReference = asynchronousMediaCodecBufferEnqueuer.d;
                        while (!atomicReference.compareAndSet(null, e2) && atomicReference.get() == null) {
                        }
                    }
                    messageParams = messageParams2;
                } else if (i2 == 2) {
                    MessageParams messageParams3 = (MessageParams) message.obj;
                    int i3 = messageParams3.f15346a;
                    MediaCodec.CryptoInfo cryptoInfo = messageParams3.f15348c;
                    long j2 = messageParams3.d;
                    int i4 = messageParams3.f15349e;
                    try {
                        if (Build.VERSION.SDK_INT < 31 || asynchronousMediaCodecBufferEnqueuer.f15345f) {
                            synchronized (AsynchronousMediaCodecBufferEnqueuer.f15340i) {
                                asynchronousMediaCodecBufferEnqueuer.f15341a.queueSecureInputBuffer(i3, 0, cryptoInfo, j2, i4);
                            }
                        } else {
                            asynchronousMediaCodecBufferEnqueuer.f15341a.queueSecureInputBuffer(i3, 0, cryptoInfo, j2, i4);
                        }
                    } catch (RuntimeException e3) {
                        AtomicReference atomicReference2 = asynchronousMediaCodecBufferEnqueuer.d;
                        while (!atomicReference2.compareAndSet(null, e3) && atomicReference2.get() == null) {
                        }
                    }
                    messageParams = messageParams3;
                } else if (i2 == 3) {
                    asynchronousMediaCodecBufferEnqueuer.f15344e.d();
                } else if (i2 != 4) {
                    AtomicReference atomicReference3 = asynchronousMediaCodecBufferEnqueuer.d;
                    IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(i2));
                    while (!atomicReference3.compareAndSet(null, illegalStateException) && atomicReference3.get() == null) {
                    }
                } else {
                    try {
                        asynchronousMediaCodecBufferEnqueuer.f15341a.setParameters((Bundle) message.obj);
                    } catch (RuntimeException e4) {
                        AtomicReference atomicReference4 = asynchronousMediaCodecBufferEnqueuer.d;
                        while (!atomicReference4.compareAndSet(null, e4) && atomicReference4.get() == null) {
                        }
                    }
                }
                if (messageParams != null) {
                    ArrayDeque arrayDeque2 = AsynchronousMediaCodecBufferEnqueuer.f15339h;
                    synchronized (arrayDeque2) {
                        arrayDeque2.add(messageParams);
                    }
                }
            }
        };
        this.g = true;
    }
}
