package androidx.camera.video.internal.workaround;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecInfoReportIncorrectInfoQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Objects;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class VideoEncoderInfoWrapper implements VideoEncoderInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VideoEncoderInfo f3116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Range f3117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Range f3118c;
    public final HashSet d;

    public VideoEncoderInfoWrapper(VideoEncoderInfo videoEncoderInfo) {
        HashSet hashSet = new HashSet();
        this.d = hashSet;
        this.f3116a = videoEncoderInfo;
        int iF = videoEncoderInfo.f();
        this.f3117b = Range.create(Integer.valueOf(iF), Integer.valueOf(((int) Math.ceil(4096.0d / ((double) iF))) * iF));
        int iC = videoEncoderInfo.c();
        this.f3118c = Range.create(Integer.valueOf(iC), Integer.valueOf(((int) Math.ceil(2160.0d / ((double) iC))) * iC));
        hashSet.addAll(MediaCodecInfoReportIncorrectInfoQuirk.f2949a.contains(Build.MODEL.toLowerCase(Locale.US)) ? Collections.singleton(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW)) : Collections.EMPTY_SET);
    }

    public static VideoEncoderInfo k(VideoEncoderInfo videoEncoderInfo, Size size) {
        if (!(videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
            if (DeviceQuirks.f2947a.b(MediaCodecInfoReportIncorrectInfoQuirk.class) != null) {
                videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo);
            } else if (size != null && !videoEncoderInfo.e(size.getWidth(), size.getHeight())) {
                Range rangeI = videoEncoderInfo.i();
                Range rangeJ = videoEncoderInfo.j();
                size.toString();
                Objects.toString(rangeI);
                Objects.toString(rangeJ);
                Logger.c(5, "VideoEncoderInfoWrapper");
                videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo);
            }
        }
        if (size != null && (videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
            ((VideoEncoderInfoWrapper) videoEncoderInfo).d.add(size);
        }
        return videoEncoderInfo;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean a() {
        return this.f3116a.a();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range b(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        Range range = this.f3118c;
        boolean zContains = range.contains(numValueOf);
        VideoEncoderInfo videoEncoderInfo = this.f3116a;
        Preconditions.b(zContains && i2 % videoEncoderInfo.c() == 0, "Not supported height: " + i2 + " which is not in " + range + " or can not be divided by alignment " + videoEncoderInfo.c());
        return this.f3117b;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int c() {
        return this.f3116a.c();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final boolean d(int i2, int i3) {
        VideoEncoderInfo videoEncoderInfo = this.f3116a;
        if (videoEncoderInfo.d(i2, i3)) {
            return true;
        }
        for (Size size : this.d) {
            if (size.getWidth() == i2 && size.getHeight() == i3) {
                return true;
            }
        }
        return this.f3117b.contains(Integer.valueOf(i2)) && this.f3118c.contains(Integer.valueOf(i3)) && i2 % videoEncoderInfo.f() == 0 && i3 % videoEncoderInfo.c() == 0;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final int f() {
        return this.f3116a.f();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range g() {
        return this.f3116a.g();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range h(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        Range range = this.f3117b;
        boolean zContains = range.contains(numValueOf);
        VideoEncoderInfo videoEncoderInfo = this.f3116a;
        Preconditions.b(zContains && i2 % videoEncoderInfo.f() == 0, "Not supported width: " + i2 + " which is not in " + range + " or can not be divided by alignment " + videoEncoderInfo.f());
        return this.f3118c;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range i() {
        return this.f3117b;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public final Range j() {
        return this.f3118c;
    }
}
