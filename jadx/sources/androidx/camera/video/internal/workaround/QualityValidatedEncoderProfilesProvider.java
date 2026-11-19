package androidx.camera.video.internal.workaround;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.compat.quirk.VideoQualityQuirk;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class QualityValidatedEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap f3113f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProvider f3114c;
    public final CameraInfoInternal d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Quirks f3115e;

    static {
        HashMap map = new HashMap();
        f3113f = map;
        map.put(1, Quality.f2770f);
        map.put(8, Quality.d);
        map.put(6, Quality.f2768c);
        map.put(5, Quality.f2767b);
        map.put(4, Quality.f2766a);
        map.put(0, Quality.f2769e);
    }

    public QualityValidatedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, CameraInfoInternal cameraInfoInternal, Quirks quirks) {
        this.f3114c = encoderProfilesProvider;
        this.d = cameraInfoInternal;
        this.f3115e = quirks;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        if (!this.f3114c.a(i2)) {
            return false;
        }
        Quality quality = (Quality) f3113f.get(Integer.valueOf(i2));
        if (quality == null) {
            return true;
        }
        for (VideoQualityQuirk videoQualityQuirk : this.f3115e.c(VideoQualityQuirk.class)) {
            if (videoQualityQuirk != null && videoQualityQuirk.c(this.d, quality) && (!(videoQualityQuirk instanceof SurfaceProcessingQuirk) || !((SurfaceProcessingQuirk) videoQualityQuirk).d())) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        if (a(i2)) {
            return this.f3114c.b(i2);
        }
        return null;
    }
}
