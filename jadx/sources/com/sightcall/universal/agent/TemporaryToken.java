package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.Transient;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class TemporaryToken {

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    final String id;

    @Transient
    boolean isResent;

    @Json(name = "type")
    final String type = "temporary-tokens";

    public enum Media {
        SMS,
        EMAIL
    }

    private TemporaryToken(String str, Attributes attributes) {
        this.id = str;
        this.attributes = attributes;
    }

    public static TemporaryToken email(String str) {
        return new TemporaryToken(null, new Attributes(Media.EMAIL, str, null));
    }

    public static TemporaryToken resend(TemporaryToken temporaryToken) {
        return new TemporaryToken(temporaryToken.id(), new Attributes("resend"));
    }

    public static TemporaryToken sms(String str, String str2) {
        return new TemporaryToken(null, new Attributes(Media.SMS, str, str2));
    }

    public String id() {
        return this.id;
    }

    public boolean isResent() {
        return this.isResent;
    }

    public Media media() {
        return this.attributes.media;
    }

    public String recipient() {
        return this.attributes.recipient;
    }

    public static class Attributes {

        @Json(name = "action")
        final String action;

        @Json(name = "country-code")
        final String countryCode;

        @Json(name = "media")
        final Media media;

        @Json(name = "recipient")
        final String recipient;

        public Attributes(Media media, String str, String str2) {
            this.media = media;
            this.recipient = str;
            this.countryCode = str2;
            this.action = null;
        }

        public Attributes(String str) {
            this.media = null;
            this.recipient = null;
            this.countryCode = null;
            this.action = str;
        }
    }

    public static TemporaryToken sms(String str) {
        return sms(str, null);
    }
}
