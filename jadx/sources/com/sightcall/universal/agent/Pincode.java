package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Pincode implements JsonApi.Included {
    public static final String TYPE = "pincodes";

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    final String id;

    @Json(name = "relationships")
    Relationships relationships;

    @Json(name = "type")
    final String type = TYPE;

    public enum Media {
        SMS,
        EMAIL,
        URL
    }

    public static class Relationships {

        @Json(name = "case-report")
        public JsonApi.Wrapper<JsonApi.Linkage> caseReport;

        @Json(name = "usecase")
        public JsonApi.Wrapper<JsonApi.Linkage> usecase;

        public Relationships(Usecase usecase) {
            this.usecase = usecase != null ? JsonApi.wrap(JsonApi.Linkage.of(usecase)) : null;
        }
    }

    private Pincode(String str, Attributes attributes, Relationships relationships) {
        this.id = str;
        this.attributes = attributes;
        this.relationships = relationships;
    }

    private static Pincode create(Media media, Usecase usecase, String str, String str2, String str3) {
        return new Pincode(null, new Attributes(media, str, str2, null, str3, null), new Relationships(new Usecase(usecase.id())));
    }

    public static Pincode email(Usecase usecase, String str, String str2) {
        return create(Media.EMAIL, usecase, str2, null, str);
    }

    public static Pincode resend(String str) {
        return new Pincode(str, new Attributes("resend"), null);
    }

    public static Pincode sms(Usecase usecase, String str, String str2, String str3) {
        return create(Media.SMS, usecase, str2, str3, str);
    }

    public static Pincode url(Usecase usecase, String str) {
        return create(Media.URL, usecase, null, null, str);
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return TYPE;
    }

    public static class Attributes {

        @Json(name = "action")
        final String action;

        @Json(name = "country-code")
        final String countryCode;

        @Json(name = "media")
        final Media media;

        @Json(name = "mpi")
        final String mpi;

        @Json(name = "recipient")
        final String recipient;

        @Json(name = "reference")
        final String reference;

        @Json(name = "guest-url")
        final String url;

        public Attributes(Media media, String str, String str2, String str3, String str4, String str5) {
            this.media = media;
            this.recipient = str;
            this.countryCode = str2;
            this.reference = str4;
            this.url = str5;
            this.mpi = str3;
            this.action = null;
        }

        public Attributes(String str) {
            this.media = null;
            this.recipient = null;
            this.countryCode = null;
            this.reference = null;
            this.url = null;
            this.mpi = null;
            this.action = str;
        }
    }
}
