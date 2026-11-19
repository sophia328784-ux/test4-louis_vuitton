package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class PlaybackParameters implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f28187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28188c;

    static {
        new PlaybackParameters(1.0f);
        Util.e(0);
        Util.e(1);
    }

    public PlaybackParameters(float f2, float f3) {
        Assertions.a(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Assertions.a(f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f28187b = f2;
        this.f28188c = f3;
        Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PlaybackParameters.class == obj.getClass()) {
            PlaybackParameters playbackParameters = (PlaybackParameters) obj;
            if (this.f28187b == playbackParameters.f28187b && this.f28188c == playbackParameters.f28188c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f28188c) + ((Float.floatToRawIntBits(this.f28187b) + 527) * 31);
    }

    public final String toString() {
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f28187b), Float.valueOf(this.f28188c));
    }

    public PlaybackParameters(float f2) {
        this(f2, 1.0f);
    }
}
