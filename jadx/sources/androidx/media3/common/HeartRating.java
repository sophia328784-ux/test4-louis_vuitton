package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HeartRating extends Rating {
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13777e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f13779c;

    static {
        String str = Util.f14242a;
        d = Integer.toString(1, 36);
        f13777e = Integer.toString(2, 36);
    }

    public HeartRating() {
        this.f13778b = false;
        this.f13779c = false;
    }

    @Override // androidx.media3.common.Rating
    public final boolean b() {
        return this.f13778b;
    }

    @Override // androidx.media3.common.Rating
    public final Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt(Rating.f13937a, 0);
        bundle.putBoolean(d, this.f13778b);
        bundle.putBoolean(f13777e, this.f13779c);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.f13779c == heartRating.f13779c && this.f13778b == heartRating.f13778b;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f13778b), Boolean.valueOf(this.f13779c));
    }

    public HeartRating(boolean z) {
        this.f13778b = true;
        this.f13779c = z;
    }
}
