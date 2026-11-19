package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Supplier;
import java.util.HashMap;
import java.util.Map;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class VideoEncoderConfigDefaultResolver implements Supplier<VideoEncoderConfig> {
    public static final Size g = new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timebase f2987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VideoSpec f2988c;
    public final Size d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DynamicRange f2989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Range f2990f;

    public VideoEncoderConfigDefaultResolver(String str, Timebase timebase, VideoSpec videoSpec, Size size, DynamicRange dynamicRange, Range<Integer> range) {
        this.f2986a = str;
        this.f2987b = timebase;
        this.f2988c = videoSpec;
        this.d = size;
        this.f2989e = dynamicRange;
        this.f2990f = range;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        Integer num;
        Range range = this.f2990f;
        VideoSpec videoSpec = this.f2988c;
        CaptureEncodeRates captureEncodeRatesB = VideoConfigUtil.b(videoSpec, range);
        Logger.c(3, "VidEncCfgDefaultRslvr");
        Range rangeB = videoSpec.b();
        Logger.c(3, "VidEncCfgDefaultRslvr");
        DynamicRange dynamicRange = this.f2989e;
        int i2 = dynamicRange.f1919b;
        int i3 = captureEncodeRatesB.f2984b;
        Size size = this.d;
        int width = size.getWidth();
        Size size2 = g;
        int iD = VideoConfigUtil.d(14000000, i2, 8, i3, 30, width, size2.getWidth(), size.getHeight(), size2.getHeight(), rangeB);
        HashMap map = DynamicRangeUtil.f3106e;
        String str = this.f2986a;
        Map map2 = (Map) map.get(str);
        int iIntValue = (map2 == null || (num = (Integer) map2.get(dynamicRange)) == null) ? -1 : num.intValue();
        VideoEncoderDataSpace videoEncoderDataSpaceA = VideoConfigUtil.a(iIntValue, str);
        VideoEncoderConfig.Builder builderD = VideoEncoderConfig.d();
        builderD.g(str);
        builderD.f(this.f2987b);
        builderD.i(size);
        builderD.b(iD);
        builderD.c(captureEncodeRatesB.f2983a);
        builderD.e(captureEncodeRatesB.f2984b);
        builderD.h(iIntValue);
        builderD.d(videoEncoderDataSpaceA);
        return builderD.a();
    }
}
