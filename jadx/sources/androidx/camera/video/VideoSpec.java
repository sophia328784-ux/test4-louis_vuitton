package androidx.camera.video;

import android.util.Range;
import defpackage.r81;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class VideoSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Range f2855a = new Range(0, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final QualitySelector f2856b;

    public static abstract class Builder {
        public abstract VideoSpec a();
    }

    static {
        Quality quality = Quality.f2768c;
        List listAsList = Arrays.asList(quality, Quality.f2767b, Quality.f2766a);
        FallbackStrategy fallbackStrategy = FallbackStrategy.f2757a;
        f2856b = QualitySelector.a(listAsList, new AutoValue_FallbackStrategy_RuleStrategy(quality, 1));
    }

    public static Builder a() {
        AutoValue_VideoSpec.Builder builder = new AutoValue_VideoSpec.Builder();
        QualitySelector qualitySelector = f2856b;
        if (qualitySelector == null) {
            r81.d("Null qualitySelector");
            return null;
        }
        builder.f2751a = qualitySelector;
        builder.f2752b = 0;
        Range range = f2855a;
        if (range == null) {
            r81.d("Null bitrate");
            return null;
        }
        builder.f2753c = range;
        builder.d = -1;
        return builder;
    }

    public abstract Range b();

    public abstract int c();
}
