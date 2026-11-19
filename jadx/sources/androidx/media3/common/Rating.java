package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public abstract class Rating {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f13937a;

    static {
        String str = Util.f14242a;
        f13937a = Integer.toString(0, 36);
    }

    public static Rating a(Bundle bundle) {
        String str = f13937a;
        int i2 = bundle.getInt(str, -1);
        if (i2 == 0) {
            String str2 = HeartRating.d;
            Preconditions.g(bundle.getInt(str, -1) == 0);
            return bundle.getBoolean(HeartRating.d, false) ? new HeartRating(bundle.getBoolean(HeartRating.f13777e, false)) : new HeartRating();
        }
        if (i2 == 1) {
            String str3 = PercentageRating.f13908c;
            Preconditions.g(bundle.getInt(str, -1) == 1);
            float f2 = bundle.getFloat(PercentageRating.f13908c, -1.0f);
            return f2 == -1.0f ? new PercentageRating() : new PercentageRating(f2);
        }
        if (i2 == 2) {
            String str4 = StarRating.d;
            Preconditions.g(bundle.getInt(str, -1) == 2);
            int i3 = bundle.getInt(StarRating.d, 5);
            float f3 = bundle.getFloat(StarRating.f13938e, -1.0f);
            return f3 == -1.0f ? new StarRating(i3) : new StarRating(i3, f3);
        }
        if (i2 != 3) {
            md.n(pq0.k(i2, "Unknown RatingType: "));
            return null;
        }
        String str5 = ThumbRating.d;
        Preconditions.g(bundle.getInt(str, -1) == 3);
        return bundle.getBoolean(ThumbRating.d, false) ? new ThumbRating(bundle.getBoolean(ThumbRating.f13949e, false)) : new ThumbRating();
    }

    public abstract boolean b();

    public abstract Bundle c();
}
