package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_StreamSpec extends StreamSpec {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f2205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Size f2206c;
    public final DynamicRange d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Range f2208f;
    public final Config g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2209h;

    public static final class Builder extends StreamSpec.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Size f2210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Size f2211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DynamicRange f2212c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Range f2213e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Config f2214f;
        public Boolean g;

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec a() {
            String strConcat = this.f2210a == null ? " resolution" : "";
            if (this.f2211b == null) {
                strConcat = strConcat.concat(" originalConfiguredResolution");
            }
            if (this.f2212c == null) {
                strConcat = strConcat.concat(" dynamicRange");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" sessionType");
            }
            if (this.f2213e == null) {
                strConcat = strConcat.concat(" expectedFrameRateRange");
            }
            if (this.g == null) {
                strConcat = strConcat.concat(" zslDisabled");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_StreamSpec(this.f2210a, this.f2211b, this.f2212c, this.d.intValue(), this.f2213e, this.f2214f, this.g.booleanValue());
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder b(DynamicRange dynamicRange) {
            if (dynamicRange != null) {
                this.f2212c = dynamicRange;
                return this;
            }
            r81.d("Null dynamicRange");
            return null;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder c(Range range) {
            if (range != null) {
                this.f2213e = range;
                return this;
            }
            r81.d("Null expectedFrameRateRange");
            return null;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder d(Config config) {
            this.f2214f = config;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder e(Size size) {
            this.f2211b = size;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder f(Size size) {
            if (size != null) {
                this.f2210a = size;
                return this;
            }
            r81.d("Null resolution");
            return null;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder g(int i2) {
            this.d = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public final StreamSpec.Builder h(boolean z) {
            this.g = Boolean.valueOf(z);
            return this;
        }
    }

    public AutoValue_StreamSpec(Size size, Size size2, DynamicRange dynamicRange, int i2, Range range, Config config, boolean z) {
        this.f2205b = size;
        this.f2206c = size2;
        this.d = dynamicRange;
        this.f2207e = i2;
        this.f2208f = range;
        this.g = config;
        this.f2209h = z;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final DynamicRange b() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final Range c() {
        return this.f2208f;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final Config d() {
        return this.g;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final Size e() {
        return this.f2206c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamSpec)) {
            return false;
        }
        StreamSpec streamSpec = (StreamSpec) obj;
        if (!this.f2205b.equals(streamSpec.f()) || !this.f2206c.equals(streamSpec.e()) || !this.d.equals(streamSpec.b()) || this.f2207e != streamSpec.g() || !this.f2208f.equals(streamSpec.c())) {
            return false;
        }
        Config config = this.g;
        if (config == null) {
            if (streamSpec.d() != null) {
                return false;
            }
        } else if (!config.equals(streamSpec.d())) {
            return false;
        }
        return this.f2209h == streamSpec.h();
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final Size f() {
        return this.f2205b;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final int g() {
        return this.f2207e;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final boolean h() {
        return this.f2209h;
    }

    public final int hashCode() {
        int iHashCode = (((((((((this.f2205b.hashCode() ^ 1000003) * 1000003) ^ this.f2206c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f2207e) * 1000003) ^ this.f2208f.hashCode()) * 1000003;
        Config config = this.g;
        return (this.f2209h ? 1231 : 1237) ^ ((iHashCode ^ (config == null ? 0 : config.hashCode())) * 1000003);
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public final StreamSpec.Builder i() {
        Builder builder = new Builder();
        builder.f2210a = f();
        builder.f2211b = e();
        builder.f2212c = b();
        builder.d = Integer.valueOf(g());
        builder.f2213e = c();
        builder.f2214f = d();
        builder.g = Boolean.valueOf(h());
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamSpec{resolution=");
        sb.append(this.f2205b);
        sb.append(", originalConfiguredResolution=");
        sb.append(this.f2206c);
        sb.append(", dynamicRange=");
        sb.append(this.d);
        sb.append(", sessionType=");
        sb.append(this.f2207e);
        sb.append(", expectedFrameRateRange=");
        sb.append(this.f2208f);
        sb.append(", implementationOptions=");
        sb.append(this.g);
        sb.append(", zslDisabled=");
        return defpackage.a.p(sb, this.f2209h, "}");
    }
}
