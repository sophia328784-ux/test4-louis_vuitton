package androidx.camera.video.internal.workaround;

import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import defpackage.az;
import defpackage.ss;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfo", "", "Landroidx/camera/video/Quality;", "targetQualities", "Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;", "videoEncoderInfoFinder", "<init>", "(Landroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V", "Companion", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraInfoInternal f3107c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VideoEncoderInfo.Finder f3108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f3109f;
    public final LinkedHashMap g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0000X\u0080T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00078\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0014\u0010\tR\u0014\u0010\u0015\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004¨\u0006\u0019"}, d2 = {"Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider$Companion;", "", "", "DEFAULT_DURATION_SECONDS", "I", "DEFAULT_OUTPUT_FORMAT", "DEFAULT_VIDEO_CODEC", "", "DEFAULT_VIDEO_MIME_TYPE", "Ljava/lang/String;", "DEFAULT_VIDEO_FRAME_RATE", "DEFAULT_VIDEO_PROFILE", "DEFAULT_VIDEO_BIT_DEPTH", "DEFAULT_VIDEO_CHROMA_SUBSAMPLING", "DEFAULT_VIDEO_HDR_FORMAT", "DEFAULT_VIDEO_BITRATE_UHD", "DEFAULT_VIDEO_BITRATE_FHD", "DEFAULT_VIDEO_BITRATE_HD", "DEFAULT_VIDEO_BITRATE_SD", "DEFAULT_AUDIO_CODEC", "DEFAULT_AUDIO_MIME_TYPE", "DEFAULT_AUDIO_BITRATE", "DEFAULT_AUDIO_SAMPLE_RATE", "DEFAULT_AUDIO_CHANNELS", "DEFAULT_AUDIO_PROFILE", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DefaultEncoderProfilesProvider(CameraInfoInternal cameraInfoInternal, List<? extends Quality> list, VideoEncoderInfo.Finder finder) {
        cameraInfoInternal.getClass();
        list.getClass();
        finder.getClass();
        this.f3107c = cameraInfoInternal;
        this.d = list;
        this.f3108e = finder;
        this.f3109f = LazyKt.b(new ss(this, 0));
        this.g = new LinkedHashMap();
    }

    public static EncoderProfilesProxy.VideoProfileProxy c(DefaultEncoderProfilesProvider defaultEncoderProfilesProvider, int i2, int i3, int i4) {
        return EncoderProfilesProxy.VideoProfileProxy.a(2, "video/avc", i4, 30, i2, i3, -1, 8, 0, 0);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return d(i2) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        return d(i2);
    }

    public final EncoderProfilesProxy d(int i2) {
        Object next;
        int i3;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyC;
        Quality quality;
        Integer numValueOf = Integer.valueOf(i2);
        LinkedHashMap linkedHashMap = this.g;
        if (linkedHashMap.containsKey(numValueOf)) {
            return (EncoderProfilesProxy) linkedHashMap.get(Integer.valueOf(i2));
        }
        Iterator it = this.d.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            quality = (Quality) next;
            quality.getClass();
        } while (((Quality.ConstantQuality) quality).d() != i2);
        Quality.ConstantQuality constantQuality = next instanceof Quality.ConstantQuality ? (Quality.ConstantQuality) next : null;
        if (constantQuality != null) {
            Iterator it2 = constantQuality.c().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    videoProfileProxyC = null;
                    break;
                }
                Size size = (Size) it2.next();
                if (((List) this.f3109f.getF71699b()).contains(size)) {
                    int width = size.getWidth();
                    int height = size.getHeight();
                    if (constantQuality.equals(Quality.d)) {
                        i3 = 40000000;
                    } else if (constantQuality.equals(Quality.f2768c)) {
                        i3 = 10000000;
                    } else if (constantQuality.equals(Quality.f2767b)) {
                        i3 = 4000000;
                    } else {
                        if (!constantQuality.equals(Quality.f2766a)) {
                            az.m(constantQuality, "Undefined bitrate for quality: ");
                            return null;
                        }
                        i3 = 2000000;
                    }
                    videoProfileProxyC = c(this, width, height, i3);
                    VideoEncoderInfo videoEncoderInfoFind = this.f3108e.find(videoProfileProxyC.i());
                    if (videoEncoderInfoFind != null && videoEncoderInfoFind.e(width, height)) {
                        Integer num = (Integer) videoEncoderInfoFind.g().clamp(Integer.valueOf(i3));
                        if (num == null || num.intValue() != i3) {
                            num.getClass();
                            videoProfileProxyC = c(this, width, height, num.intValue());
                        }
                    } else {
                        videoProfileProxyC = null;
                    }
                    if (videoProfileProxyC != null) {
                        break;
                    }
                }
            }
        } else {
            videoProfileProxyC = null;
            break;
        }
        EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyE = videoProfileProxyC != null ? EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(CollectionsKt.O(EncoderProfilesProxy.AudioProfileProxy.a(3, "audio/mp4a-latm", 96000, 44100, 1, 2)), CollectionsKt.O(videoProfileProxyC), 60, 2) : null;
        linkedHashMap.put(Integer.valueOf(i2), immutableEncoderProfilesProxyE);
        return immutableEncoderProfilesProxyE;
    }
}
