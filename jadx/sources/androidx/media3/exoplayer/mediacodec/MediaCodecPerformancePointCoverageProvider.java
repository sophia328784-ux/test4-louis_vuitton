package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.List;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaCodecPerformancePointCoverageProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Boolean f15383a;

    public static final class Api29 {
        /* JADX WARN: Multi-variable type inference failed */
        public static int a(boolean z) {
            android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
            List<android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
            try {
                Format.Builder builder = new Format.Builder();
                builder.n = MimeTypes.p("video/avc");
                Format format = new Format(builder);
                String str = format.o;
                if (str != null) {
                    List listE = MediaCodecUtil.e(str, z, false);
                    String strC = MediaCodecUtil.c(format);
                    List listX = strC == null ? ImmutableList.x() : MediaCodecUtil.e(strC, z, false);
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder2 = new ImmutableList.Builder();
                    builder2.g(listE);
                    builder2.g(listX);
                    ImmutableList immutableListJ = builder2.j();
                    for (int i2 = 0; i2 < immutableListJ.size(); i2++) {
                        if (((MediaCodecInfo) immutableListJ.get(i2)).d != null && (videoCapabilities = ((MediaCodecInfo) immutableListJ.get(i2)).d.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                            android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW, 60);
                            for (int i3 = 0; i3 < supportedPerformancePoints.size(); i3++) {
                                if (supportedPerformancePoints.get(i3).covers(performancePoint)) {
                                    return 2;
                                }
                            }
                            return 1;
                        }
                    }
                }
            } catch (MediaCodecUtil.DecoderQueryException unused) {
            }
            return 0;
        }
    }
}
