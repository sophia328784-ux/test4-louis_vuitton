package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.common.util.CircularIntArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import defpackage.aa0;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class AsynchronousMediaCodecAdapter implements MediaCodecAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f15332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AsynchronousMediaCodecCallback f15333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaCodecBufferEnqueuer f15334c;
    public final LoudnessCodecController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f15335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15336f = 0;

    public AsynchronousMediaCodecAdapter(MediaCodec mediaCodec, HandlerThread handlerThread, MediaCodecBufferEnqueuer mediaCodecBufferEnqueuer, LoudnessCodecController loudnessCodecController) {
        this.f15332a = mediaCodec;
        this.f15333b = new AsynchronousMediaCodecCallback(handlerThread);
        this.f15334c = mediaCodecBufferEnqueuer;
        this.d = loudnessCodecController;
    }

    public static void s(AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        LoudnessCodecController loudnessCodecController;
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = asynchronousMediaCodecAdapter.f15333b;
        MediaCodec mediaCodec = asynchronousMediaCodecAdapter.f15332a;
        HandlerThread handlerThread = asynchronousMediaCodecCallback.f15351b;
        Preconditions.q(asynchronousMediaCodecCallback.f15352c == null);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(asynchronousMediaCodecCallback, handler);
        asynchronousMediaCodecCallback.f15352c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, mediaCrypto, i2);
        Trace.endSection();
        asynchronousMediaCodecAdapter.f15334c.start();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = asynchronousMediaCodecAdapter.d) != null) {
            loudnessCodecController.a(mediaCodec);
        }
        asynchronousMediaCodecAdapter.f15336f = 1;
    }

    public static String t(int i2, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i2 == 1) {
            sb.append("Audio");
        } else if (i2 == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i2);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void a(int i2, CryptoInfo cryptoInfo, long j2, int i3) {
        this.f15334c.a(i2, cryptoInfo, j2, i3);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void b(Bundle bundle) {
        this.f15334c.b(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void c(int i2, int i3, int i4, long j2) {
        this.f15334c.c(i2, i3, i4, j2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final boolean d(MediaCodecAdapter.OnBufferAvailableListener onBufferAvailableListener) {
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            asynchronousMediaCodecCallback.o = onBufferAvailableListener;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void e(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        this.f15332a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener(this) { // from class: androidx.media3.exoplayer.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j2, long j3) {
                onFrameRenderedListener.a(j2);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final MediaFormat f() {
        MediaFormat mediaFormat;
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            try {
                mediaFormat = asynchronousMediaCodecCallback.f15355h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void flush() {
        this.f15334c.flush();
        this.f15332a.flush();
        final AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            asynchronousMediaCodecCallback.l++;
            Handler handler = asynchronousMediaCodecCallback.f15352c;
            String str = Util.f14242a;
            handler.post(new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.d
                @Override // java.lang.Runnable
                public final void run() {
                    AsynchronousMediaCodecCallback asynchronousMediaCodecCallback2 = asynchronousMediaCodecCallback;
                    synchronized (asynchronousMediaCodecCallback2.f15350a) {
                        try {
                            if (asynchronousMediaCodecCallback2.m) {
                                return;
                            }
                            long j2 = asynchronousMediaCodecCallback2.l - 1;
                            asynchronousMediaCodecCallback2.l = j2;
                            if (j2 > 0) {
                                return;
                            }
                            if (j2 >= 0) {
                                asynchronousMediaCodecCallback2.a();
                                return;
                            }
                            IllegalStateException illegalStateException = new IllegalStateException();
                            synchronized (asynchronousMediaCodecCallback2.f15350a) {
                                asynchronousMediaCodecCallback2.n = illegalStateException;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
        this.f15332a.start();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void g() {
        this.f15332a.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void h(int i2) {
        this.f15332a.setVideoScalingMode(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer i(int i2) {
        return this.f15332a.getInputBuffer(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void j(Surface surface) {
        this.f15332a.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void k(final aa0 aa0Var) {
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        Runnable runnable = new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.b
            @Override // java.lang.Runnable
            public final void run() {
                AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = this.f15403b;
                aa0 aa0Var2 = aa0Var;
                asynchronousMediaCodecAdapter.f15334c.d();
                AsynchronousMediaCodecCallback asynchronousMediaCodecCallback2 = asynchronousMediaCodecAdapter.f15333b;
                synchronized (asynchronousMediaCodecCallback2.f15350a) {
                    asynchronousMediaCodecCallback2.b();
                    aa0Var2.run();
                }
            }
        };
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            asynchronousMediaCodecCallback.b();
            runnable.run();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void l(int i2) {
        this.f15332a.releaseOutputBuffer(i2, false);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void m(int i2, long j2) {
        this.f15332a.releaseOutputBuffer(i2, j2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final int n() {
        this.f15334c.d();
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            try {
                asynchronousMediaCodecCallback.b();
                int i2 = -1;
                if (asynchronousMediaCodecCallback.l > 0 || asynchronousMediaCodecCallback.m) {
                    return -1;
                }
                CircularIntArray circularIntArray = asynchronousMediaCodecCallback.d;
                int i3 = circularIntArray.f14141b;
                int i4 = circularIntArray.f14142c;
                if (!(i3 == i4)) {
                    if (i3 == i4) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    i2 = circularIntArray.f14140a[i3];
                    circularIntArray.f14141b = (i3 + 1) & circularIntArray.d;
                }
                return i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final int o(MediaCodec.BufferInfo bufferInfo) {
        this.f15334c.d();
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
        synchronized (asynchronousMediaCodecCallback.f15350a) {
            try {
                asynchronousMediaCodecCallback.b();
                if (asynchronousMediaCodecCallback.l > 0 || asynchronousMediaCodecCallback.m) {
                    return -1;
                }
                CircularIntArray circularIntArray = asynchronousMediaCodecCallback.f15353e;
                int i2 = circularIntArray.f14141b;
                int i3 = circularIntArray.f14142c;
                if (i2 == i3) {
                    return -1;
                }
                if (i2 == i3) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                int i4 = circularIntArray.f14140a[i2];
                circularIntArray.f14141b = circularIntArray.d & (i2 + 1);
                if (i4 >= 0) {
                    asynchronousMediaCodecCallback.f15355h.getClass();
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) asynchronousMediaCodecCallback.f15354f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (i4 == -2) {
                    asynchronousMediaCodecCallback.f15355h = (MediaFormat) asynchronousMediaCodecCallback.g.remove();
                }
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer p(int i2) {
        return this.f15332a.getOutputBuffer(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void q(ArrayList arrayList) {
        this.f15332a.subscribeToVendorParameters(arrayList);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void r(ArrayList arrayList) {
        this.f15332a.unsubscribeFromVendorParameters(arrayList);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void release() {
        LoudnessCodecController loudnessCodecController;
        LoudnessCodecController loudnessCodecController2;
        try {
            if (this.f15336f == 1) {
                this.f15334c.shutdown();
                AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.f15333b;
                synchronized (asynchronousMediaCodecCallback.f15350a) {
                    asynchronousMediaCodecCallback.m = true;
                    asynchronousMediaCodecCallback.f15351b.quit();
                    asynchronousMediaCodecCallback.a();
                }
            }
            this.f15336f = 2;
            if (this.f15335e) {
                return;
            }
            try {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30 && i2 < 33) {
                    this.f15332a.stop();
                }
            } finally {
                if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController2 = this.d) != null) {
                    loudnessCodecController2.c(this.f15332a);
                }
                this.f15332a.release();
                this.f15335e = true;
            }
        } catch (Throwable th) {
            if (!this.f15335e) {
                try {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 30 && i3 < 33) {
                        this.f15332a.stop();
                    }
                } finally {
                    if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = this.d) != null) {
                        loudnessCodecController.c(this.f15332a);
                    }
                    this.f15332a.release();
                    this.f15335e = true;
                }
            }
            throw th;
        }
    }

    public static final class Factory implements MediaCodecAdapter.Factory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Supplier f15337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Supplier f15338c;
        public boolean d;

        /* JADX WARN: Illegal instructions before constructor call */
        public Factory(final int i2) {
            final int i3 = 0;
            final int i4 = 1;
            this(new Supplier() { // from class: androidx.media3.exoplayer.mediacodec.c
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    int i5 = i3;
                    int i6 = i2;
                    switch (i5) {
                        case 0:
                            return new HandlerThread(AsynchronousMediaCodecAdapter.t(i6, "ExoPlayer:MediaCodecAsyncAdapter:"));
                        default:
                            return new HandlerThread(AsynchronousMediaCodecAdapter.t(i6, "ExoPlayer:MediaCodecQueueingThread:"));
                    }
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.mediacodec.c
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    int i5 = i4;
                    int i6 = i2;
                    switch (i5) {
                        case 0:
                            return new HandlerThread(AsynchronousMediaCodecAdapter.t(i6, "ExoPlayer:MediaCodecAsyncAdapter:"));
                        default:
                            return new HandlerThread(AsynchronousMediaCodecAdapter.t(i6, "ExoPlayer:MediaCodecQueueingThread:"));
                    }
                }
            });
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AsynchronousMediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            MediaCodecBufferEnqueuer asynchronousMediaCodecBufferEnqueuer;
            int i2;
            String str = configuration.f15367a.f15374a;
            AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = null;
            try {
                Trace.beginSection("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    if (!this.d || Build.VERSION.SDK_INT < 36) {
                        asynchronousMediaCodecBufferEnqueuer = new AsynchronousMediaCodecBufferEnqueuer(mediaCodecCreateByCodecName, (HandlerThread) this.f15338c.get(), false);
                        i2 = 0;
                    } else {
                        asynchronousMediaCodecBufferEnqueuer = new SynchronousMediaCodecBufferEnqueuer(mediaCodecCreateByCodecName);
                        i2 = 4;
                    }
                    AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter2 = new AsynchronousMediaCodecAdapter(mediaCodecCreateByCodecName, (HandlerThread) this.f15337b.get(), asynchronousMediaCodecBufferEnqueuer, configuration.f15371f);
                    try {
                        Trace.endSection();
                        Surface surface = configuration.d;
                        if (surface == null && configuration.f15367a.f15379h && Build.VERSION.SDK_INT >= 35) {
                            i2 |= 8;
                        }
                        AsynchronousMediaCodecAdapter.s(asynchronousMediaCodecAdapter2, configuration.f15368b, surface, configuration.f15370e, i2);
                        return asynchronousMediaCodecAdapter2;
                    } catch (Exception e2) {
                        e = e2;
                        asynchronousMediaCodecAdapter = asynchronousMediaCodecAdapter2;
                        if (asynchronousMediaCodecAdapter != null) {
                            asynchronousMediaCodecAdapter.release();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Exception e4) {
                e = e4;
                mediaCodecCreateByCodecName = null;
            }
        }

        public Factory(Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2) {
            this.f15337b = supplier;
            this.f15338c = supplier2;
            this.d = true;
        }
    }
}
