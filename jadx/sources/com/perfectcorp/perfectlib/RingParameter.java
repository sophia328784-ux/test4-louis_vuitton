package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class RingParameter implements VtoSetting.Parameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RingPosition f39827a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RingPosition f39828a;

        public final RingParameter build() {
            return new RingParameter(this);
        }

        public final Builder ringPosition(RingPosition ringPosition) {
            Objects.requireNonNull(ringPosition, "ringPosition can't be null");
            this.f39828a = ringPosition;
            return this;
        }
    }

    public RingParameter(Builder builder) {
        RingPosition ringPosition = builder.f39828a;
        Objects.requireNonNull(ringPosition, "ringPosition can't be null");
        this.f39827a = ringPosition;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("RingParameter");
        toStringHelper.b("ringPosition", this.f39827a);
        return toStringHelper.toString();
    }
}
