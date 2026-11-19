package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class PercentageRating extends Rating {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f13908c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13909b;

    static {
        String str = Util.f14242a;
        f13908c = Integer.toString(1, 36);
    }

    public PercentageRating(float f2) {
        Preconditions.h(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f13909b = f2;
    }

    @Override // androidx.media3.common.Rating
    public final boolean b() {
        return this.f13909b != -1.0f;
    }

    @Override // androidx.media3.common.Rating
    public final Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.f13937a, 1);
        bundle.putFloat(f13908c, this.f13909b);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PercentageRating) {
            return this.f13909b == ((PercentageRating) obj).f13909b;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Float.valueOf(this.f13909b));
    }

    public PercentageRating() {
        this.f13909b = -1.0f;
    }
}
