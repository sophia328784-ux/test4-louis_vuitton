package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;

/* JADX INFO: loaded from: classes.dex */
public abstract class StreamSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Range f2348a = new Range(0, 0);

    public static abstract class Builder {
        public abstract StreamSpec a();

        public abstract Builder b(DynamicRange dynamicRange);

        public abstract Builder c(Range range);

        public abstract Builder d(Config config);

        public abstract Builder e(Size size);

        public abstract Builder f(Size size);

        public abstract Builder g(int i2);

        public abstract Builder h(boolean z);
    }

    public static Builder a(Size size) {
        AutoValue_StreamSpec.Builder builder = new AutoValue_StreamSpec.Builder();
        builder.f(size);
        builder.f2211b = size;
        builder.d = 0;
        builder.c(f2348a);
        builder.b(DynamicRange.d);
        builder.g = Boolean.FALSE;
        return builder;
    }

    public abstract DynamicRange b();

    public abstract Range c();

    public abstract Config d();

    public abstract Size e();

    public abstract Size f();

    public abstract int g();

    public abstract boolean h();

    public abstract Builder i();
}
