package androidx.camera.video;

import android.util.Range;
import defpackage.r81;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Range f2708a = new Range(0, Integer.MAX_VALUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Range f2709b = new Range(0, Integer.MAX_VALUE);

    public static abstract class Builder {
        public abstract AudioSpec a();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChannelCount {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    static {
        AutoValue_AudioSpec.Builder builder = (AutoValue_AudioSpec.Builder) a();
        builder.f2717e = 0;
        builder.a();
    }

    public static Builder a() {
        AutoValue_AudioSpec.Builder builder = new AutoValue_AudioSpec.Builder();
        builder.f2715b = -1;
        builder.f2716c = -1;
        builder.f2717e = -1;
        Range range = f2708a;
        if (range == null) {
            r81.d("Null bitrate");
            return null;
        }
        builder.f2714a = range;
        Range range2 = f2709b;
        if (range2 != null) {
            builder.d = range2;
            return builder;
        }
        r81.d("Null sampleRate");
        return null;
    }

    public abstract Range b();

    public abstract int c();

    public abstract Range d();

    public abstract int e();

    public abstract int f();
}
