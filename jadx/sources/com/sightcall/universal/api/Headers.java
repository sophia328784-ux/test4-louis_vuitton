package com.sightcall.universal.api;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lcom/sightcall/universal/api/Headers;", "", "<init>", "()V", "ContentType", LVConstants.LV_JSON_KEY, "Authorization", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Headers {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/sightcall/universal/api/Headers$Accept;", "", "<init>", "()V", "JsonApi", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Accept {
        public static final Accept INSTANCE = new Accept();
        public static final String JsonApi = "Accept: application/vnd.api+json";

        private Accept() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0005\t\n\u000b\f\rB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization;", "", "<init>", "()V", "Raw", "", "Token", "Hash", "AuthV3", "Bearer", "PlaneTokenV3", "ApiKey", "TokenReference", "External", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Authorization {
        public static final String AuthV3 = "Authorization";
        public static final String Hash = "X-Authorization-Hash";
        public static final Authorization INSTANCE = new Authorization();
        public static final String Raw = "X-Authorization";
        public static final String Token = "X-Authorization-Token";

        private Authorization() {
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;", "", ConfigurationName.KEY, "", "<init>", "(Ljava/lang/String;)V", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ApiKey {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String key;

            private ApiKey(String str) {
                this.key = str;
            }

            @JvmStatic
            public static final ApiKey with(String str) {
                return INSTANCE.with(str);
            }

            public String toString() {
                return tr.g("Apikey ", this.key);
            }

            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;", "", "<init>", "()V", "with", "Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;", ConfigurationName.KEY, "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @JvmStatic
                public final ApiKey with(String key) {
                    key.getClass();
                    return new ApiKey(key, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ ApiKey(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$Bearer;", "", "token", "", "<init>", "(Ljava/lang/String;)V", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Bearer {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String token;

            private Bearer(String str) {
                this.token = str;
            }

            @JvmStatic
            public static final Bearer with(String str) {
                return INSTANCE.with(str);
            }

            public String toString() {
                return tr.g("Bearer ", this.token);
            }

            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$Bearer$Companion;", "", "<init>", "()V", "with", "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;", "token", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @JvmStatic
                public final Bearer with(String token) {
                    token.getClass();
                    return new Bearer(token, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Bearer(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$External;", "", "token", "", "<init>", "(Ljava/lang/String;)V", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class External {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String token;

            private External(String str) {
                this.token = str;
            }

            @JvmStatic
            public static final External with(String str) {
                return INSTANCE.with(str);
            }

            public String toString() {
                return tr.g("External ", this.token);
            }

            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$External$Companion;", "", "<init>", "()V", "with", "Lcom/sightcall/universal/api/Headers$Authorization$External;", "token", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @JvmStatic
                public final External with(String token) {
                    token.getClass();
                    return new External(token, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ External(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;", "", "token", "", "<init>", "(Ljava/lang/String;)V", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class PlaneTokenV3 {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String token;

            private PlaneTokenV3(String str) {
                this.token = str;
            }

            @JvmStatic
            public static final PlaneTokenV3 with(String str) {
                return INSTANCE.with(str);
            }

            public String toString() {
                return tr.g("Token ", this.token);
            }

            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3$Companion;", "", "<init>", "()V", "with", "Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;", "token", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @JvmStatic
                public final PlaneTokenV3 with(String token) {
                    token.getClass();
                    return new PlaneTokenV3(token, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ PlaneTokenV3(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0013\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;", "", "reference", "", "<init>", "(Ljava/lang/String;)V", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TokenReference {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final String reference;

            private TokenReference(String str) {
                this.reference = str;
            }

            @JvmStatic
            public static final TokenReference with(String str) {
                return INSTANCE.with(str);
            }

            public String toString() {
                return String.format("Token reference=\"%s\"", Arrays.copyOf(new Object[]{this.reference}, 1));
            }

            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/api/Headers$Authorization$TokenReference$Companion;", "", "<init>", "()V", "with", "Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;", "reference", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @JvmStatic
                public final TokenReference with(String reference) {
                    return new TokenReference(reference, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ TokenReference(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/sightcall/universal/api/Headers$ContentType;", "", "<init>", "()V", "JsonApi", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ContentType {
        public static final ContentType INSTANCE = new ContentType();
        public static final String JsonApi = "Content-Type: application/vnd.api+json; charset=UTF-8";

        private ContentType() {
        }
    }
}
