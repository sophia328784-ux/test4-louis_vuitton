package com.sightcall.universal.agent.registration;

import android.content.Context;
import android.os.Build;
import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class OldRegistration extends RegistrationResponse implements RegistrationRequest {

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    String id;

    @Json(name = "type")
    final String type;

    public static class Attributes {

        @Json(name = "fcm-token")
        final String fcmToken;

        @Json(name = "reference")
        final String googleAppId;

        @Json(name = "device")
        final String model = String.valueOf(Build.MODEL);

        @Json(name = "os-version")
        final String os = String.valueOf(SdkUtilsKt.sdkVersion());

        @Json(name = "temporary-token")
        final String temporaryToken;

        public Attributes(String str, String str2, String str3) {
            this.temporaryToken = str;
            this.fcmToken = str2;
            this.googleAppId = str3;
        }
    }

    public static class Builder {
        private String fcmToken = Universal.fcm().token();
        private String googleAppId;
        private String temporaryToken;

        public Builder(Context context) {
            this.googleAppId = context.getString(R.string.google_app_id);
        }

        public OldRegistration build() {
            return new OldRegistration(this, 0);
        }

        public Builder fcmToken(String str) {
            this.fcmToken = str;
            return this;
        }

        public Builder googleAppId(String str) {
            this.googleAppId = str;
            return this;
        }

        public Builder temporaryToken(String str) {
            this.temporaryToken = str;
            return this;
        }
    }

    private OldRegistration(Builder builder) {
        this.type = "authorization-tokens";
        this.id = null;
        this.attributes = new Attributes(builder.temporaryToken, builder.fcmToken, builder.googleAppId);
    }

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    /* JADX INFO: renamed from: accessToken */
    public String getId() {
        return this.id;
    }

    @Override // com.sightcall.universal.agent.registration.RegistrationResponse
    public String refreshToken() {
        return null;
    }

    private OldRegistration(String str, Attributes attributes) {
        this.type = "authorization-tokens";
        this.id = str;
        this.attributes = attributes;
    }

    public /* synthetic */ OldRegistration(Builder builder, int i2) {
        this(builder);
    }
}
