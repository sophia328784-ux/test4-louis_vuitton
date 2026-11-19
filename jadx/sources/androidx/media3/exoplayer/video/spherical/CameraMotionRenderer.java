package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class CameraMotionRenderer extends BaseRenderer {
    public final DecoderInputBuffer t;
    public final ParsableByteArray u;
    public CameraMotionListener v;
    public long w;

    public CameraMotionRenderer() {
        super(6);
        this.t = new DecoderInputBuffer(1);
        this.u = new ParsableByteArray();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        CameraMotionListener cameraMotionListener = this.v;
        if (cameraMotionListener != null) {
            cameraMotionListener.b();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        this.w = Long.MIN_VALUE;
        CameraMotionListener cameraMotionListener = this.v;
        if (cameraMotionListener != null) {
            cameraMotionListener.b();
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int b(Format format) {
        return "application/x-camera-motion".equals(format.o) ? RendererCapabilities.o(4, 0, 0, 0) : RendererCapabilities.o(0, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void g(long j2, long j3) {
        float[] fArr;
        while (!j() && this.w < 100000 + j2) {
            DecoderInputBuffer decoderInputBuffer = this.t;
            decoderInputBuffer.g();
            FormatHolder formatHolder = this.d;
            formatHolder.a();
            if (T(formatHolder, decoderInputBuffer, 0) != -4 || decoderInputBuffer.f(4)) {
                return;
            }
            long j4 = decoderInputBuffer.g;
            this.w = j4;
            boolean z = j4 < this.m;
            if (this.v != null && !z) {
                decoderInputBuffer.j();
                ByteBuffer byteBuffer = decoderInputBuffer.f14543e;
                String str = Util.f14242a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    byte[] bArrArray = byteBuffer.array();
                    int iLimit = byteBuffer.limit();
                    ParsableByteArray parsableByteArray = this.u;
                    parsableByteArray.L(iLimit, bArrArray);
                    parsableByteArray.N(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i2 = 0; i2 < 3; i2++) {
                        fArr2[i2] = Float.intBitsToFloat(parsableByteArray.o());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.v.a(this.w - this.l, fArr);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "CameraMotionRenderer";
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void q(int i2, Object obj) {
        if (i2 == 8) {
            this.v = (CameraMotionListener) obj;
        }
    }
}
