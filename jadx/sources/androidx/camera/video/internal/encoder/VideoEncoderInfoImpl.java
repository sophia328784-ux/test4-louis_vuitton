package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;
import defpackage.n51;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class VideoEncoderInfoImpl extends EncoderInfoImpl implements VideoEncoderInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n51 f3078c = new n51();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaCodecInfo.VideoCapabilities f3079b;

    public VideoEncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String str) {
        super(mediaCodecInfo, str);
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.f3066a.getVideoCapabilities();
        Objects.requireNonNull(videoCapabilities);
        this.f3079b = videoCapabilities;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean a() {
        return true;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range b(int i2) {
        try {
            return this.f3079b.getSupportedWidthsFor(i2);
        } catch (Throwable th) {
            if (th instanceof IllegalArgumentException) {
                throw th;
            }
            throw new IllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int c() {
        return this.f3079b.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean d(int i2, int i3) {
        return this.f3079b.isSizeSupported(i2, i3);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int f() {
        return this.f3079b.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range g() {
        return this.f3079b.getBitrateRange();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range h(int i2) {
        try {
            return this.f3079b.getSupportedHeightsFor(i2);
        } catch (Throwable th) {
            if (th instanceof IllegalArgumentException) {
                throw th;
            }
            throw new IllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range i() {
        return this.f3079b.getSupportedWidths();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range j() {
        return this.f3079b.getSupportedHeights();
    }
}
