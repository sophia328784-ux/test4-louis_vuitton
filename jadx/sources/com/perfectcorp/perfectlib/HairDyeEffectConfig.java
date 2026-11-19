package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.ValueChecker;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class HairDyeEffectConfig {
    public static final HairDyeEffectConfig DEFAULT = builder().build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f39621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39622b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f39623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f39624b = 40;

        public final HairDyeEffectConfig build() {
            return new HairDyeEffectConfig(this);
        }

        public final Builder setBlendStrength(int i2) {
            Preconditions.g(ValueChecker.f39439a.apply(Integer.valueOf(i2)), "blendStrength".concat(" isn't in 0~100"));
            this.f39624b = i2;
            return this;
        }

        public final Builder setCoverageRatio(float f2) {
            Preconditions.g(ValueChecker.d.apply(Float.valueOf(f2)), "coverageRatio isn't in -1~1");
            this.f39623a = f2;
            return this;
        }
    }

    public HairDyeEffectConfig(Builder builder) {
        this.f39621a = builder.f39623a;
        this.f39622b = builder.f39624b;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final int getBlendStrength() {
        return this.f39622b;
    }

    public final float getCoverageRatio() {
        return this.f39621a;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("HairDyeEffectConfig");
        toStringHelper.b("coverageRatio", Float.valueOf(this.f39621a));
        toStringHelper.b("blendStrength", Integer.valueOf(this.f39622b));
        return toStringHelper.toString();
    }
}
