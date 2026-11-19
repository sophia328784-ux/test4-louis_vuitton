package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class NailParameter implements VtoSetting.Parameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NailPosition f39719a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public NailPosition f39720a;

        public final NailParameter build() {
            return new NailParameter(this);
        }

        public final Builder nailPosition(NailPosition nailPosition) {
            Objects.requireNonNull(nailPosition, "nailPosition can't be null");
            this.f39720a = nailPosition;
            return this;
        }
    }

    public NailParameter(Builder builder) {
        NailPosition nailPosition = builder.f39720a;
        Objects.requireNonNull(nailPosition, "nailPosition can't be null");
        this.f39719a = nailPosition;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("NailParameter");
        toStringHelper.b("nailPosition", this.f39719a);
        return toStringHelper.toString();
    }
}
