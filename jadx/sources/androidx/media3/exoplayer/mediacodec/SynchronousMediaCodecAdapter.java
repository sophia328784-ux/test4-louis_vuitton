package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.CryptoInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class SynchronousMediaCodecAdapter implements MediaCodecAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f15399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoudnessCodecController f15400b;

    public static class Factory implements MediaCodecAdapter.Factory {
        public static MediaCodec b(MediaCodecAdapter.Configuration configuration) throws IOException {
            String str = configuration.f15367a.f15374a;
            Trace.beginSection("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            Trace.endSection();
            return mediaCodecCreateByCodecName;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        public final MediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) {
            MediaCodec mediaCodecB = null;
            try {
                mediaCodecB = b(configuration);
                Trace.beginSection("configureCodec");
                Surface surface = configuration.d;
                mediaCodecB.configure(configuration.f15368b, surface, configuration.f15370e, (surface == null && configuration.f15367a.f15379h && Build.VERSION.SDK_INT >= 35) ? 8 : 0);
                Trace.endSection();
                Trace.beginSection("startCodec");
                mediaCodecB.start();
                Trace.endSection();
                return new SynchronousMediaCodecAdapter(mediaCodecB, configuration.f15371f);
            } catch (IOException | RuntimeException e2) {
                if (mediaCodecB != null) {
                    mediaCodecB.release();
                }
                throw e2;
            }
        }
    }

    public SynchronousMediaCodecAdapter(MediaCodec mediaCodec, LoudnessCodecController loudnessCodecController) {
        this.f15399a = mediaCodec;
        this.f15400b = loudnessCodecController;
        if (Build.VERSION.SDK_INT < 35 || loudnessCodecController == null) {
            return;
        }
        loudnessCodecController.a(mediaCodec);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void a(int i2, CryptoInfo cryptoInfo, long j2, int i3) {
        this.f15399a.queueSecureInputBuffer(i2, 0, cryptoInfo.f14538i, j2, i3);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void b(Bundle bundle) {
        this.f15399a.setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void c(int i2, int i3, int i4, long j2) {
        this.f15399a.queueInputBuffer(i2, 0, i3, j2, i4);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void e(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        this.f15399a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener(this) { // from class: n21
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j2, long j3) {
                onFrameRenderedListener.a(j2);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final MediaFormat f() {
        return this.f15399a.getOutputFormat();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void flush() {
        this.f15399a.flush();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void g() {
        this.f15399a.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void h(int i2) {
        this.f15399a.setVideoScalingMode(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer i(int i2) {
        return this.f15399a.getInputBuffer(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void j(Surface surface) {
        this.f15399a.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void l(int i2) {
        this.f15399a.releaseOutputBuffer(i2, false);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void m(int i2, long j2) {
        this.f15399a.releaseOutputBuffer(i2, j2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final int n() {
        return this.f15399a.dequeueInputBuffer(0L);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final int o(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f15399a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer p(int i2) {
        return this.f15399a.getOutputBuffer(i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void q(ArrayList arrayList) {
        this.f15399a.subscribeToVendorParameters(arrayList);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void r(ArrayList arrayList) {
        this.f15399a.unsubscribeFromVendorParameters(arrayList);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void release() {
        LoudnessCodecController loudnessCodecController = this.f15400b;
        MediaCodec mediaCodec = this.f15399a;
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && i2 < 33) {
                mediaCodec.stop();
            }
        } finally {
            if (Build.VERSION.SDK_INT >= 35 && loudnessCodecController != null) {
                loudnessCodecController.c(mediaCodec);
            }
            mediaCodec.release();
        }
    }
}
