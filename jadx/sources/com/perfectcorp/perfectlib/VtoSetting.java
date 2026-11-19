package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public final class VtoSetting {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40016c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f40017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f40018f;
    public final Parameter g;

    public interface Parameter {
    }

    public VtoSetting(Builder builder) {
        String str = builder.f40019a;
        int i2 = Nulls.f42040a;
        this.f40014a = Strings.b(str);
        this.f40015b = Strings.b(builder.f40020b);
        this.f40016c = Strings.b(builder.f40021c);
        this.d = Strings.b(builder.d);
        this.f40017e = Strings.b(builder.f40022e);
        this.f40018f = Strings.b(builder.f40023f);
        this.g = builder.g;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final String getPaletteGuid() {
        return this.d;
    }

    public final String getPatternGuid() {
        return this.f40017e;
    }

    public final String getProductGuid() {
        return this.f40015b;
    }

    public final String getSkuGuid() {
        return this.f40016c;
    }

    public final String getSkuSetGuid() {
        return this.f40014a;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("VtoSetting");
        toStringHelper.b("skuSetGuid", this.f40014a);
        toStringHelper.b("skuGuid", this.f40015b);
        toStringHelper.b("skuItemGuid", this.f40016c);
        toStringHelper.b("paletteGuid", this.d);
        toStringHelper.b("patternGuid", this.f40017e);
        toStringHelper.b("wearingStyleGuid", this.f40018f);
        toStringHelper.b("parameter", this.g);
        return toStringHelper.toString();
    }

    public static Builder builder(VtoSetting vtoSetting) {
        return new Builder(vtoSetting);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f40019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f40020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f40021c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f40022e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f40023f;
        public Parameter g;

        public Builder(VtoSetting vtoSetting) {
            this.f40019a = vtoSetting.f40014a;
            this.f40020b = vtoSetting.f40015b;
            this.f40021c = vtoSetting.f40016c;
            this.d = vtoSetting.d;
            this.f40022e = vtoSetting.f40017e;
            this.f40023f = vtoSetting.f40018f;
            this.g = vtoSetting.g;
        }

        public final VtoSetting build() {
            String str;
            if (TextUtils.isEmpty(this.f40019a) && TextUtils.isEmpty(this.f40020b) && TextUtils.isEmpty(this.f40021c)) {
                str = "Should setup one of skuSetGuid, productGuid or skuGuid first, all of them are empty!";
            } else if (!TextUtils.isEmpty(this.f40019a) && !TextUtils.isEmpty(this.f40020b)) {
                str = "Only can setup one of skuSetGuid and productGuid, both of them are not empty!";
            } else {
                if (TextUtils.isEmpty(this.f40019a) || TextUtils.isEmpty(this.f40021c)) {
                    return new VtoSetting(this);
                }
                str = "Only can setup one of skuSetGuid and skuGuid, both of them are not empty!";
            }
            md.k(str);
            return null;
        }

        public final Builder setPaletteGuid(String str) {
            this.d = str;
            return this;
        }

        public final Builder setParameter(Parameter parameter) {
            this.g = parameter;
            return this;
        }

        public final Builder setPatternGuid(String str) {
            this.f40022e = str;
            return this;
        }

        public final Builder setProductGuid(String str) {
            this.f40020b = str;
            return this;
        }

        public final Builder setSkuGuid(String str) {
            this.f40021c = str;
            return this;
        }

        public final Builder setSkuSetGuid(String str) {
            this.f40019a = str;
            return this;
        }

        public final Builder setWearingStyleGuid(String str) {
            this.f40023f = str;
            return this;
        }

        public Builder() {
        }
    }
}
