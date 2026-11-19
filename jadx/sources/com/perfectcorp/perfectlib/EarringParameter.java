package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class EarringParameter implements VtoSetting.Parameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39551a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f39552a;

        public final EarringParameter build() {
            return new EarringParameter(this);
        }

        public final Builder isLeft(boolean z) {
            this.f39552a = z;
            return this;
        }
    }

    public EarringParameter(Builder builder) {
        this.f39551a = builder.f39552a;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("EarringParameter");
        toStringHelper.b("isLeft", Boolean.valueOf(this.f39551a));
        return toStringHelper.toString();
    }
}
