package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.media3.common.util.CircularIntArray;
import androidx.media3.exoplayer.Renderer;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
final class AsynchronousMediaCodecCallback extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f15351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f15352c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaFormat f15355h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaFormat f15356i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaCodec.CodecException f15357j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaCodec.CryptoException f15358k;
    public long l;
    public boolean m;
    public IllegalStateException n;
    public MediaCodecAdapter.OnBufferAvailableListener o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f15350a = new Object();
    public final CircularIntArray d = new CircularIntArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CircularIntArray f15353e = new CircularIntArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f15354f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();

    public AsynchronousMediaCodecCallback(HandlerThread handlerThread) {
        this.f15351b = handlerThread;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.g;
        if (!arrayDeque.isEmpty()) {
            this.f15356i = (MediaFormat) arrayDeque.getLast();
        }
        CircularIntArray circularIntArray = this.d;
        circularIntArray.f14142c = circularIntArray.f14141b;
        CircularIntArray circularIntArray2 = this.f15353e;
        circularIntArray2.f14142c = circularIntArray2.f14141b;
        this.f15354f.clear();
        arrayDeque.clear();
    }

    public final void b() {
        IllegalStateException illegalStateException = this.n;
        if (illegalStateException != null) {
            this.n = null;
            throw illegalStateException;
        }
        MediaCodec.CodecException codecException = this.f15357j;
        if (codecException != null) {
            this.f15357j = null;
            throw codecException;
        }
        MediaCodec.CryptoException cryptoException = this.f15358k;
        if (cryptoException == null) {
            return;
        }
        this.f15358k = null;
        throw cryptoException;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f15350a) {
            this.f15358k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f15350a) {
            this.f15357j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i2) {
        Renderer.WakeupListener wakeupListener;
        synchronized (this.f15350a) {
            this.d.a(i2);
            MediaCodecAdapter.OnBufferAvailableListener onBufferAvailableListener = this.o;
            if (onBufferAvailableListener != null && (wakeupListener = MediaCodecRenderer.this.K) != null) {
                wakeupListener.b();
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i2, MediaCodec.BufferInfo bufferInfo) {
        Renderer.WakeupListener wakeupListener;
        synchronized (this.f15350a) {
            try {
                MediaFormat mediaFormat = this.f15356i;
                if (mediaFormat != null) {
                    this.f15353e.a(-2);
                    this.g.add(mediaFormat);
                    this.f15356i = null;
                }
                this.f15353e.a(i2);
                this.f15354f.add(bufferInfo);
                MediaCodecAdapter.OnBufferAvailableListener onBufferAvailableListener = this.o;
                if (onBufferAvailableListener != null && (wakeupListener = MediaCodecRenderer.this.K) != null) {
                    wakeupListener.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f15350a) {
            this.f15353e.a(-2);
            this.g.add(mediaFormat);
            this.f15356i = null;
        }
    }
}
