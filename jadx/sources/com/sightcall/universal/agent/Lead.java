package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Lead {

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    final String id;

    @Json(name = "type")
    final String type;

    public static class Attributes {

        @Json(name = "company-name")
        final String companyName;

        @Json(name = "company-region")
        final Region companyRegion;

        @Json(name = "email-address")
        final String emailAddress;

        @Json(name = "first-name")
        final String firstName;

        @Json(name = "last-name")
        final String lastName;

        public Attributes(Builder builder) {
            this.firstName = builder.firstName;
            this.lastName = builder.lastName;
            this.emailAddress = builder.emailAddress;
            this.companyName = builder.companyName;
            this.companyRegion = builder.companyRegion;
        }
    }

    public static class Builder {
        private String companyName;
        private Region companyRegion;
        private String emailAddress;
        private String firstName;
        private String lastName;

        public Lead build() {
            return new Lead(this, 0);
        }

        public Builder companyName(String str) {
            this.companyName = str;
            return this;
        }

        public Builder companyRegion(Region region) {
            this.companyRegion = region;
            return this;
        }

        public Builder emailAddress(String str) {
            this.emailAddress = str;
            return this;
        }

        public Builder firstName(String str) {
            this.firstName = str;
            return this;
        }

        public Builder lastName(String str) {
            this.lastName = str;
            return this;
        }
    }

    public enum Region {
        APAC,
        EMEA,
        AMERICAS
    }

    private Lead(Builder builder) {
        this.type = "prospects";
        this.id = null;
        this.attributes = new Attributes(builder);
    }

    public String companyName() {
        return this.attributes.companyName;
    }

    public Region companyRegion() {
        return this.attributes.companyRegion;
    }

    public String emailAddress() {
        return this.attributes.emailAddress;
    }

    public String firstName() {
        return this.attributes.firstName;
    }

    public String id() {
        return this.id;
    }

    public String lastName() {
        return this.attributes.lastName;
    }

    public /* synthetic */ Lead(Builder builder, int i2) {
        this(builder);
    }
}
