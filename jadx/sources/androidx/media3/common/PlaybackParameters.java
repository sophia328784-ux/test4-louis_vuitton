package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackParameters {
    public static final PlaybackParameters d = new PlaybackParameters(1.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13918f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f13919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13921c;

    static {
        String str = Util.f14242a;
        f13917e = Integer.toString(0, 36);
        f13918f = Integer.toString(1, 36);
    }

    public PlaybackParameters(float f2, float f3) {
        Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Preconditions.g(f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f13919a = f2;
        this.f13920b = f3;
        this.f13921c = Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PlaybackParameters.class == obj.getClass()) {
            PlaybackParameters playbackParameters = (PlaybackParameters) obj;
            if (this.f13919a == playbackParameters.f13919a && this.f13920b == playbackParameters.f13920b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f13920b) + ((Float.floatToRawIntBits(this.f13919a) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.f13919a), Float.valueOf(this.f13920b)};
        String str = Util.f14242a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }

    public PlaybackParameters(float f2) {
        this(f2, 1.0f);
    }
}
