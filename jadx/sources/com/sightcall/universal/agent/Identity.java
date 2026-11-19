package com.sightcall.universal.agent;

import android.content.Context;
import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.api.JsonApi;
import com.sightcall.universal.fcm.messages.Test;
import com.squareup.moshi.Json;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class Identity {

    @Json(name = l.f24145h)
    Attributes attributes;

    @Json(name = b.a.f24015b)
    String id;

    @Json(name = "relationships")
    Relationships relationships;

    @Json(name = "type")
    String type;

    public static class Attributes {

        @Json(name = "accept-consent")
        String acceptConsent;

        @Json(name = "connected-at")
        Date connectedAt;

        @Json(name = "device")
        String device;

        @Json(name = "displayname")
        String displayName;

        @Json(name = "email-address")
        String email;

        @Json(name = "fcm-token")
        String fcmToken;

        @Json(name = "reference")
        String googleAppId;

        @Json(name = Test.KEY)
        Boolean isTest;

        @Json(name = "language")
        String language;

        @Json(name = "login")
        String login;

        @Json(name = "os-version")
        String osVersion;

        @Json(name = "phone-number")
        String phoneNumber;

        @Json(name = "recording")
        Boolean recording;

        @Json(name = "registered-at")
        Date registeredAt;

        @Json(name = "require-consent")
        Boolean requireConsent;

        @Json(name = "type")
        String type;
    }

    public static class Builder {
        private String fcmToken;
        private String googleAppId;

        public Builder(Context context) {
            this.googleAppId = context.getString(R.string.google_app_id);
        }

        public Identity build() {
            return new Identity(this, 0);
        }

        public Builder fcmToken(String str) {
            this.fcmToken = str;
            return this;
        }

        public Builder googleAppId(String str) {
            this.googleAppId = str;
            return this;
        }
    }

    public static class Relationships {

        @Json(name = "consent")
        JsonApi.Wrapper<JsonApi.Linkage> consent;

        @Json(name = "guest-language")
        JsonApi.Wrapper<JsonApi.Linkage> guestLanguage;

        @Json(name = "guest-location")
        JsonApi.Wrapper<JsonApi.Linkage> guestLocation;

        @Json(name = "guest-product")
        JsonApi.Wrapper<JsonApi.Linkage> guestProduct;

        @Json(name = "offline-media-usecases")
        JsonApi.Wrapper<JsonApi.Linkage[]> offlineMediaUsecases;

        @Json(name = "pincode")
        JsonApi.Wrapper<JsonApi.Linkage> pincode;

        @Json(name = ProviderCustomization.TYPE)
        JsonApi.Wrapper<JsonApi.Linkage[]> providerCustomizations;

        @Json(name = Usecase.TYPE)
        JsonApi.Wrapper<JsonApi.Linkage[]> usecases;
    }

    private Identity(Builder builder) {
        this.type = "identities";
        Attributes attributes = new Attributes();
        this.attributes = attributes;
        attributes.osVersion = String.valueOf(SdkUtilsKt.sdkVersion());
        this.attributes.fcmToken = builder.fcmToken;
        this.attributes.googleAppId = builder.googleAppId;
    }

    public static Identity acceptConsent(Consent consent) {
        Identity identity = new Identity();
        Attributes attributes = new Attributes();
        identity.attributes = attributes;
        attributes.acceptConsent = consent.id;
        return identity;
    }

    private Identity() {
        this.type = "identities";
    }

    public /* synthetic */ Identity(Builder builder, int i2) {
        this(builder);
    }
}
