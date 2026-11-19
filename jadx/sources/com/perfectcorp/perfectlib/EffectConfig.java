package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class EffectConfig {
    public static final EffectConfig DEFAULT = builder().setHairDye(HairDyeEffectConfig.builder().build()).build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HairDyeEffectConfig f39553a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HairDyeEffectConfig f39554a = HairDyeEffectConfig.DEFAULT;

        public final EffectConfig build() {
            return new EffectConfig(this);
        }

        public final Builder setHairDye(HairDyeEffectConfig hairDyeEffectConfig) {
            if (hairDyeEffectConfig == null) {
                hairDyeEffectConfig = HairDyeEffectConfig.DEFAULT;
            }
            this.f39554a = hairDyeEffectConfig;
            return this;
        }
    }

    public EffectConfig(Builder builder) {
        HairDyeEffectConfig hairDyeEffectConfig = builder.f39554a;
        Objects.requireNonNull(hairDyeEffectConfig);
        this.f39553a = hairDyeEffectConfig;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final HairDyeEffectConfig getHairDye() {
        return this.f39553a;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("EffectConfig");
        toStringHelper.b("hairDye", this.f39553a);
        return toStringHelper.toString();
    }
}
