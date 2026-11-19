package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.r81;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class VideoConfigUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f2985a;

    static {
        HashMap map = new HashMap();
        f2985a = map;
        HashMap map2 = new HashMap();
        VideoEncoderDataSpace videoEncoderDataSpace = VideoEncoderDataSpace.f3074a;
        map2.put(1, videoEncoderDataSpace);
        VideoEncoderDataSpace videoEncoderDataSpace2 = VideoEncoderDataSpace.d;
        map2.put(2, videoEncoderDataSpace2);
        VideoEncoderDataSpace videoEncoderDataSpace3 = VideoEncoderDataSpace.f3077e;
        map2.put(4096, videoEncoderDataSpace3);
        map2.put(8192, videoEncoderDataSpace3);
        HashMap map3 = new HashMap();
        map3.put(1, videoEncoderDataSpace);
        map3.put(2, videoEncoderDataSpace2);
        map3.put(4096, videoEncoderDataSpace3);
        map3.put(8192, videoEncoderDataSpace3);
        HashMap map4 = new HashMap();
        map4.put(1, videoEncoderDataSpace);
        map4.put(4, videoEncoderDataSpace2);
        map4.put(4096, videoEncoderDataSpace3);
        map4.put(16384, videoEncoderDataSpace3);
        map4.put(2, videoEncoderDataSpace);
        map4.put(8, videoEncoderDataSpace2);
        map4.put(8192, videoEncoderDataSpace3);
        map4.put(32768, videoEncoderDataSpace3);
        HashMap map5 = new HashMap();
        map5.put(256, videoEncoderDataSpace2);
        map5.put(512, VideoEncoderDataSpace.f3075b);
        map.put("video/hevc", map2);
        map.put("video/av01", map3);
        map.put("video/x-vnd.on2.vp9", map4);
        map.put("video/dolby-vision", map5);
    }

    public static VideoEncoderDataSpace a(int i2, String str) {
        VideoEncoderDataSpace videoEncoderDataSpace;
        Map map = (Map) f2985a.get(str);
        if (map != null && (videoEncoderDataSpace = (VideoEncoderDataSpace) map.get(Integer.valueOf(i2))) != null) {
            return videoEncoderDataSpace;
        }
        String.format("Unsupported mime type %s or profile level %d. Data space is unspecified.", str, Integer.valueOf(i2));
        Logger.c(5, "VideoConfigUtil");
        return VideoEncoderDataSpace.f3074a;
    }

    public static CaptureEncodeRates b(VideoSpec videoSpec, Range range) {
        Range range2 = SurfaceRequest.q;
        int iIntValue = range2.equals(range) ? 30 : ((Integer) range.getUpper()).intValue();
        int iC = videoSpec.c() != 0 ? videoSpec.c() : iIntValue;
        Locale locale = Locale.ENGLISH;
        Integer numValueOf = Integer.valueOf(iIntValue);
        Integer numValueOf2 = Integer.valueOf(iC);
        boolean zEquals = range2.equals(range);
        Object obj = range;
        if (zEquals) {
            obj = "<UNSPECIFIED>";
        }
        String.format(locale, "Resolved capture/encode frame rate %dfps/%dfps, [Expected operating range: %s]", numValueOf, numValueOf2, obj);
        Logger.c(3, "VideoConfigUtil");
        return new CaptureEncodeRates(iIntValue, iC);
    }

    public static VideoMimeInfo c(MediaSpec mediaSpec, DynamicRange dynamicRange, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy;
        boolean zB = dynamicRange.b();
        int i2 = dynamicRange.f1918a;
        Preconditions.f("Dynamic range must be a fully specified dynamic range [provided dynamic range: " + dynamicRange + "]", zB);
        String str = "video/avc";
        String str2 = mediaSpec.a() != 1 ? "video/avc" : "video/x-vnd.on2.vp8";
        if (videoValidatedEncoderProfilesProxy == null) {
            videoProfileProxy = null;
        } else {
            Set set = (Set) DynamicRangeUtil.f3104b.get(Integer.valueOf(i2));
            if (set == null) {
                set = Collections.EMPTY_SET;
            }
            Set set2 = (Set) DynamicRangeUtil.f3103a.get(Integer.valueOf(dynamicRange.f1919b));
            if (set2 == null) {
                set2 = Collections.EMPTY_SET;
            }
            Iterator it = videoValidatedEncoderProfilesProxy.b().iterator();
            while (true) {
                if (it.hasNext()) {
                    videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) it.next();
                    if (set.contains(Integer.valueOf(videoProfileProxy.g())) && set2.contains(Integer.valueOf(videoProfileProxy.b()))) {
                        String strI = videoProfileProxy.i();
                        if (str2.equals(strI)) {
                            Logger.c(3, "VideoConfigUtil");
                        } else if (mediaSpec.a() == -1) {
                            dynamicRange.toString();
                            Logger.c(3, "VideoConfigUtil");
                        }
                        str2 = strI;
                    }
                } else {
                    videoProfileProxy = null;
                }
            }
        }
        if (videoProfileProxy == null) {
            if (mediaSpec.a() == -1) {
                if (i2 != 1) {
                    if (i2 == 3 || i2 == 4 || i2 == 5) {
                        str = "video/hevc";
                    } else {
                        if (i2 != 6) {
                            throw new UnsupportedOperationException("Unsupported dynamic range: " + dynamicRange + "\nNo supported default mime type available.");
                        }
                        str = "video/dolby-vision";
                    }
                }
                str2 = str;
            }
            if (videoValidatedEncoderProfilesProxy == null) {
                dynamicRange.toString();
                Logger.c(3, "VideoConfigUtil");
            } else {
                dynamicRange.toString();
                Logger.c(3, "VideoConfigUtil");
            }
        }
        AutoValue_VideoMimeInfo.Builder builder = new AutoValue_VideoMimeInfo.Builder();
        if (str2 == null) {
            r81.d("Null mimeType");
            return null;
        }
        builder.f2980a = str2;
        builder.f2981b = -1;
        if (videoProfileProxy != null) {
            builder.f2982c = videoProfileProxy;
        }
        String str3 = builder.f2980a == null ? " mimeType" : "";
        if (str3.isEmpty()) {
            return new AutoValue_VideoMimeInfo(builder.f2980a, builder.f2981b.intValue(), builder.f2982c);
        }
        md.k("Missing required properties:".concat(str3));
        return null;
    }

    public static int d(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, Range range) {
        Rational rational = new Rational(i3, i4);
        Rational rational2 = new Rational(i5, i6);
        Rational rational3 = new Rational(i7, i8);
        Rational rational4 = new Rational(i9, i10);
        int iDoubleValue = (int) (rational4.doubleValue() * rational3.doubleValue() * rational2.doubleValue() * rational.doubleValue() * ((double) i2));
        if (Logger.c(3, "VideoConfigUtil")) {
            String.format("Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) * Frame Rate Ratio(%d / %d) * Width Ratio(%d / %d) * Height Ratio(%d / %d) = %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(iDoubleValue));
        }
        if (!VideoSpec.f2855a.equals(range)) {
            Integer num = (Integer) range.clamp(Integer.valueOf(iDoubleValue));
            int iIntValue = num.intValue();
            if (Logger.c(3, "VideoConfigUtil")) {
                String.format("\nClamped to range %s -> %dbps", range, num);
            }
            iDoubleValue = iIntValue;
        }
        Logger.c(3, "VideoConfigUtil");
        return iDoubleValue;
    }
}
