package com.sightcall.session.datasource.reference.v3.startup;

import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.Reason;
import com.sightcall.session.datasource.reference.v3.Type;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;)V", "getData", "()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReferenceStartupRequestEntity {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    public ReferenceStartupRequestEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ ReferenceStartupRequestEntity copy$default(ReferenceStartupRequestEntity referenceStartupRequestEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = referenceStartupRequestEntity.data;
        }
        return referenceStartupRequestEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final ReferenceStartupRequestEntity copy(Data data) {
        data.getClass();
        return new ReferenceStartupRequestEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReferenceStartupRequestEntity) && Intrinsics.c(this.data, ((ReferenceStartupRequestEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "ReferenceStartupRequestEntity(data=" + this.data + ")";
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data;", "", l.f24145h, "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;)V", "getAttributes", "()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;", "type", "Lcom/sightcall/session/datasource/reference/v3/Type;", "getType", "()Lcom/sightcall/session/datasource/reference/v3/Type;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Attributes", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("type")
        private final Type type;

        public Data(Attributes attributes) {
            attributes.getClass();
            this.attributes = attributes;
            this.type = Type.References;
        }

        public static /* synthetic */ Data copy$default(Data data, Attributes attributes, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                attributes = data.attributes;
            }
            return data.copy(attributes);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Data copy(Attributes attributes) {
            attributes.getClass();
            return new Data(attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.c(this.attributes, ((Data) other).attributes);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            return this.attributes.hashCode();
        }

        public String toString() {
            return "Data(attributes=" + this.attributes + ")";
        }

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u000eHÆ\u0003Jw\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0014\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010-\u001a\u00020.HÖ\u0081\u0004J\n\u0010/\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity$Data$Attributes;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "osName", "osVersion", "softwareType", "softwareName", "softwareVersion", "deviceType", "deviceModel", "mobilesdkVersion", "mobileSolution", "reason", "Lcom/sightcall/session/datasource/reference/v3/Reason;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/Reason;)V", "getUrl", "()Ljava/lang/String;", "getOsName", "getOsVersion", "getSoftwareType", "getSoftwareName", "getSoftwareVersion", "getDeviceType", "getDeviceModel", "getMobilesdkVersion", "getMobileSolution", "getReason", "()Lcom/sightcall/session/datasource/reference/v3/Reason;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("deviceModel")
            private final String deviceModel;

            @SerializedName("deviceType")
            private final String deviceType;

            @SerializedName("mobileSolution")
            private final String mobileSolution;

            @SerializedName("mobilesdkVersion")
            private final String mobilesdkVersion;

            @SerializedName("osName")
            private final String osName;

            @SerializedName("osVersion")
            private final String osVersion;

            @SerializedName("reason")
            private final Reason reason;

            @SerializedName("softwareName")
            private final String softwareName;

            @SerializedName("softwareType")
            private final String softwareType;

            @SerializedName("softwareVersion")
            private final String softwareVersion;

            @SerializedName(ConfigurationName.DOWNLOAD_PLUGIN_URL)
            private final String url;

            public /* synthetic */ Attributes(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Reason reason, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, (i2 & 1024) != 0 ? Reason.Startup : reason);
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Reason reason, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = attributes.url;
                }
                if ((i2 & 2) != 0) {
                    str2 = attributes.osName;
                }
                if ((i2 & 4) != 0) {
                    str3 = attributes.osVersion;
                }
                if ((i2 & 8) != 0) {
                    str4 = attributes.softwareType;
                }
                if ((i2 & 16) != 0) {
                    str5 = attributes.softwareName;
                }
                if ((i2 & 32) != 0) {
                    str6 = attributes.softwareVersion;
                }
                if ((i2 & 64) != 0) {
                    str7 = attributes.deviceType;
                }
                if ((i2 & 128) != 0) {
                    str8 = attributes.deviceModel;
                }
                if ((i2 & 256) != 0) {
                    str9 = attributes.mobilesdkVersion;
                }
                if ((i2 & 512) != 0) {
                    str10 = attributes.mobileSolution;
                }
                if ((i2 & 1024) != 0) {
                    reason = attributes.reason;
                }
                String str11 = str10;
                Reason reason2 = reason;
                String str12 = str8;
                String str13 = str9;
                String str14 = str6;
                String str15 = str7;
                String str16 = str5;
                String str17 = str3;
                return attributes.copy(str, str2, str17, str4, str16, str14, str15, str12, str13, str11, reason2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUrl() {
                return this.url;
            }

            /* JADX INFO: renamed from: component10, reason: from getter */
            public final String getMobileSolution() {
                return this.mobileSolution;
            }

            /* JADX INFO: renamed from: component11, reason: from getter */
            public final Reason getReason() {
                return this.reason;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getOsName() {
                return this.osName;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getOsVersion() {
                return this.osVersion;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final String getSoftwareType() {
                return this.softwareType;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final String getSoftwareName() {
                return this.softwareName;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getSoftwareVersion() {
                return this.softwareVersion;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final String getDeviceType() {
                return this.deviceType;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final String getDeviceModel() {
                return this.deviceModel;
            }

            /* JADX INFO: renamed from: component9, reason: from getter */
            public final String getMobilesdkVersion() {
                return this.mobilesdkVersion;
            }

            public final Attributes copy(String url, String osName, String osVersion, String softwareType, String softwareName, String softwareVersion, String deviceType, String deviceModel, String mobilesdkVersion, String mobileSolution, Reason reason) {
                pq0.z(url, osName, osVersion, softwareType, softwareName);
                pq0.z(softwareVersion, deviceType, deviceModel, mobilesdkVersion, mobileSolution);
                reason.getClass();
                return new Attributes(url, osName, osVersion, softwareType, softwareName, softwareVersion, deviceType, deviceModel, mobilesdkVersion, mobileSolution, reason);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.url, attributes.url) && Intrinsics.c(this.osName, attributes.osName) && Intrinsics.c(this.osVersion, attributes.osVersion) && Intrinsics.c(this.softwareType, attributes.softwareType) && Intrinsics.c(this.softwareName, attributes.softwareName) && Intrinsics.c(this.softwareVersion, attributes.softwareVersion) && Intrinsics.c(this.deviceType, attributes.deviceType) && Intrinsics.c(this.deviceModel, attributes.deviceModel) && Intrinsics.c(this.mobilesdkVersion, attributes.mobilesdkVersion) && Intrinsics.c(this.mobileSolution, attributes.mobileSolution) && this.reason == attributes.reason;
            }

            public final String getDeviceModel() {
                return this.deviceModel;
            }

            public final String getDeviceType() {
                return this.deviceType;
            }

            public final String getMobileSolution() {
                return this.mobileSolution;
            }

            public final String getMobilesdkVersion() {
                return this.mobilesdkVersion;
            }

            public final String getOsName() {
                return this.osName;
            }

            public final String getOsVersion() {
                return this.osVersion;
            }

            public final Reason getReason() {
                return this.reason;
            }

            public final String getSoftwareName() {
                return this.softwareName;
            }

            public final String getSoftwareType() {
                return this.softwareType;
            }

            public final String getSoftwareVersion() {
                return this.softwareVersion;
            }

            public final String getUrl() {
                return this.url;
            }

            public int hashCode() {
                return this.reason.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.url.hashCode() * 31, 31, this.osName), 31, this.osVersion), 31, this.softwareType), 31, this.softwareName), 31, this.softwareVersion), 31, this.deviceType), 31, this.deviceModel), 31, this.mobilesdkVersion), 31, this.mobileSolution);
            }

            public String toString() {
                String str = this.url;
                String str2 = this.osName;
                String str3 = this.osVersion;
                String str4 = this.softwareType;
                String str5 = this.softwareName;
                String str6 = this.softwareVersion;
                String str7 = this.deviceType;
                String str8 = this.deviceModel;
                String str9 = this.mobilesdkVersion;
                String str10 = this.mobileSolution;
                Reason reason = this.reason;
                StringBuilder sbS = fc.s("Attributes(url=", str, ", osName=", str2, ", osVersion=");
                cj.C(sbS, str3, ", softwareType=", str4, ", softwareName=");
                cj.C(sbS, str5, ", softwareVersion=", str6, ", deviceType=");
                cj.C(sbS, str7, ", deviceModel=", str8, ", mobilesdkVersion=");
                cj.C(sbS, str9, ", mobileSolution=", str10, ", reason=");
                sbS.append(reason);
                sbS.append(")");
                return sbS.toString();
            }

            public Attributes(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Reason reason) {
                pq0.z(str, str2, str3, str4, str5);
                pq0.z(str6, str7, str8, str9, str10);
                reason.getClass();
                this.url = str;
                this.osName = str2;
                this.osVersion = str3;
                this.softwareType = str4;
                this.softwareName = str5;
                this.softwareVersion = str6;
                this.deviceType = str7;
                this.deviceModel = str8;
                this.mobilesdkVersion = str9;
                this.mobileSolution = str10;
                this.reason = reason;
            }
        }
    }
}
