package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ThumbRating extends Rating {
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13949e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f13951c;

    static {
        String str = Util.f14242a;
        d = Integer.toString(1, 36);
        f13949e = Integer.toString(2, 36);
    }

    public ThumbRating() {
        this.f13950b = false;
        this.f13951c = false;
    }

    @Override // androidx.media3.common.Rating
    public final boolean b() {
        return this.f13950b;
    }

    @Override // androidx.media3.common.Rating
    public final Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.f13937a, 3);
        bundle.putBoolean(d, this.f13950b);
        bundle.putBoolean(f13949e, this.f13951c);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        return this.f13951c == thumbRating.f13951c && this.f13950b == thumbRating.f13950b;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f13950b), Boolean.valueOf(this.f13951c));
    }

    public ThumbRating(boolean z) {
        this.f13950b = true;
        this.f13951c = z;
    }
}
