package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class StarRating extends Rating {
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13938e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f13940c;

    static {
        String str = Util.f14242a;
        d = Integer.toString(1, 36);
        f13938e = Integer.toString(2, 36);
    }

    public StarRating(int i2, float f2) {
        boolean z = false;
        Preconditions.h(i2 > 0, "maxStars must be a positive integer");
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= i2) {
            z = true;
        }
        Preconditions.h(z, "starRating is out of range [0, maxStars]");
        this.f13939b = i2;
        this.f13940c = f2;
    }

    @Override // androidx.media3.common.Rating
    public final boolean b() {
        return this.f13940c != -1.0f;
    }

    @Override // androidx.media3.common.Rating
    public final Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.f13937a, 2);
        bundle.putInt(d, this.f13939b);
        bundle.putFloat(f13938e, this.f13940c);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.f13939b == starRating.f13939b && this.f13940c == starRating.f13940c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f13939b), Float.valueOf(this.f13940c));
    }

    public StarRating(int i2) {
        Preconditions.h(i2 > 0, "maxStars must be a positive integer");
        this.f13939b = i2;
        this.f13940c = -1.0f;
    }
}
