package com.sightcall.universal.agent.registration;

import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;", "Lcom/sightcall/universal/agent/registration/RegistrationRequest;", "type", "", l.f24145h, "Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NewRegistrationRequest implements RegistrationRequest {

    @SerializedName(l.f24145h)
    private final Attributes attributes;

    @SerializedName("type")
    private final String type;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;", "", "ssoToken", "", "pushNotificationToken", "pushNotificationProvider", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSsoToken", "()Ljava/lang/String;", "getPushNotificationToken", "getPushNotificationProvider", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Attributes {

        @SerializedName("pushNotificationProvider")
        private final String pushNotificationProvider;

        @SerializedName("pushNotificationToken")
        private final String pushNotificationToken;

        @SerializedName("ssoToken")
        private final String ssoToken;

        public Attributes(String str, String str2, String str3) {
            cj.z(str, str2, str3);
            this.ssoToken = str;
            this.pushNotificationToken = str2;
            this.pushNotificationProvider = str3;
        }

        public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = attributes.ssoToken;
            }
            if ((i2 & 2) != 0) {
                str2 = attributes.pushNotificationToken;
            }
            if ((i2 & 4) != 0) {
                str3 = attributes.pushNotificationProvider;
            }
            return attributes.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getSsoToken() {
            return this.ssoToken;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPushNotificationToken() {
            return this.pushNotificationToken;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPushNotificationProvider() {
            return this.pushNotificationProvider;
        }

        public final Attributes copy(String ssoToken, String pushNotificationToken, String pushNotificationProvider) {
            ssoToken.getClass();
            pushNotificationToken.getClass();
            pushNotificationProvider.getClass();
            return new Attributes(ssoToken, pushNotificationToken, pushNotificationProvider);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Attributes)) {
                return false;
            }
            Attributes attributes = (Attributes) other;
            return Intrinsics.c(this.ssoToken, attributes.ssoToken) && Intrinsics.c(this.pushNotificationToken, attributes.pushNotificationToken) && Intrinsics.c(this.pushNotificationProvider, attributes.pushNotificationProvider);
        }

        public final String getPushNotificationProvider() {
            return this.pushNotificationProvider;
        }

        public final String getPushNotificationToken() {
            return this.pushNotificationToken;
        }

        public final String getSsoToken() {
            return this.ssoToken;
        }

        public int hashCode() {
            return this.pushNotificationProvider.hashCode() + fc.b(this.ssoToken.hashCode() * 31, 31, this.pushNotificationToken);
        }

        public String toString() {
            return n00.r(this.pushNotificationProvider, ")", fc.s("Attributes(ssoToken=", this.ssoToken, ", pushNotificationToken=", this.pushNotificationToken, ", pushNotificationProvider="));
        }
    }

    public NewRegistrationRequest(String str, Attributes attributes) {
        str.getClass();
        attributes.getClass();
        this.type = str;
        this.attributes = attributes;
    }

    public static /* synthetic */ NewRegistrationRequest copy$default(NewRegistrationRequest newRegistrationRequest, String str, Attributes attributes, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = newRegistrationRequest.type;
        }
        if ((i2 & 2) != 0) {
            attributes = newRegistrationRequest.attributes;
        }
        return newRegistrationRequest.copy(str, attributes);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final NewRegistrationRequest copy(String type, Attributes attributes) {
        type.getClass();
        attributes.getClass();
        return new NewRegistrationRequest(type, attributes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NewRegistrationRequest)) {
            return false;
        }
        NewRegistrationRequest newRegistrationRequest = (NewRegistrationRequest) other;
        return Intrinsics.c(this.type, newRegistrationRequest.type) && Intrinsics.c(this.attributes, newRegistrationRequest.attributes);
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.attributes.hashCode() + (this.type.hashCode() * 31);
    }

    public String toString() {
        return "NewRegistrationRequest(type=" + this.type + ", attributes=" + this.attributes + ")";
    }

    public /* synthetic */ NewRegistrationRequest(String str, Attributes attributes, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "refreshTokens" : str, attributes);
    }
}
