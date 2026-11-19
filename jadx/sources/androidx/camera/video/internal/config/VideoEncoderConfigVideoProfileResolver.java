package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.core.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class VideoEncoderConfigVideoProfileResolver implements Supplier<VideoEncoderConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timebase f2992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VideoSpec f2993c;
    public final Size d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EncoderProfilesProxy.VideoProfileProxy f2994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DynamicRange f2995f;
    public final Range g;

    public VideoEncoderConfigVideoProfileResolver(String str, Timebase timebase, VideoSpec videoSpec, Size size, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, DynamicRange dynamicRange, Range<Integer> range) {
        this.f2991a = str;
        this.f2992b = timebase;
        this.f2993c = videoSpec;
        this.d = size;
        this.f2994e = videoProfileProxy;
        this.f2995f = dynamicRange;
        this.g = range;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        Range range = this.g;
        VideoSpec videoSpec = this.f2993c;
        CaptureEncodeRates captureEncodeRatesB = VideoConfigUtil.b(videoSpec, range);
        Logger.c(3, "VidEncVdPrflRslvr");
        Range rangeB = videoSpec.b();
        Logger.c(3, "VidEncVdPrflRslvr");
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.f2994e;
        int iC = videoProfileProxy.c();
        int i2 = this.f2995f.f1919b;
        int iB = videoProfileProxy.b();
        int i3 = captureEncodeRatesB.f2984b;
        int iF = videoProfileProxy.f();
        Size size = this.d;
        int iD = VideoConfigUtil.d(iC, i2, iB, i3, iF, size.getWidth(), videoProfileProxy.l(), size.getHeight(), videoProfileProxy.h(), rangeB);
        int iJ = videoProfileProxy.j();
        String str = this.f2991a;
        VideoEncoderDataSpace videoEncoderDataSpaceA = VideoConfigUtil.a(iJ, str);
        VideoEncoderConfig.Builder builderD = VideoEncoderConfig.d();
        builderD.g(str);
        builderD.f(this.f2992b);
        builderD.i(size);
        builderD.b(iD);
        builderD.c(captureEncodeRatesB.f2983a);
        builderD.e(captureEncodeRatesB.f2984b);
        builderD.h(iJ);
        builderD.d(videoEncoderDataSpaceA);
        return builderD.a();
    }
}
