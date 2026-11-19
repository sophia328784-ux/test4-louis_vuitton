package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class LookSetting {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39672a;

    public LookSetting(Builder builder) {
        String str = builder.f39673a;
        int i2 = Nulls.f42040a;
        this.f39672a = Strings.b(str);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static LookSetting create(String str) {
        return new Builder().setLookGuid(str).build();
    }

    public final String getLookGuid() {
        return this.f39672a;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("LookSetting");
        toStringHelper.b("lookGuid", this.f39672a);
        return toStringHelper.toString();
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f39673a;

        public Builder(LookSetting lookSetting) {
            this.f39673a = lookSetting.f39672a;
        }

        public final LookSetting build() {
            return new LookSetting(this);
        }

        public final Builder setLookGuid(String str) {
            Objects.requireNonNull(str, "lookGuid can't be null");
            this.f39673a = str;
            return this;
        }

        public Builder() {
        }
    }
}
