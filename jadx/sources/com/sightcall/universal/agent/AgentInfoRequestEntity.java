package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/agent/AgentInfoRequestEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;", "<init>", "(Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;)V", "getData", "()Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AgentInfoRequestEntity {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0014\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;", "", b.a.f24015b, "", "type", "doNotOverrideAgentInfo", "", l.f24145h, "Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)V", "getId", "()Ljava/lang/String;", "getType", "getDoNotOverrideAgentInfo", "()Z", "getAttributes", "()Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("doNotOverrideAgentInfo")
        private final boolean doNotOverrideAgentInfo;

        @SerializedName(b.a.f24015b)
        private final String id;

        @SerializedName("type")
        private final String type;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003JY\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\"\u001a\u00020#HÖ\u0081\u0004J\n\u0010$\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006%"}, d2 = {"Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;", "", "osName", "", "osVersion", "deviceName", "softwareType", "packageName", "packageVersion", "mobilesdkVersion", "mobileSolution", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOsName", "()Ljava/lang/String;", "getOsVersion", "getDeviceName", "getSoftwareType", "getPackageName", "getPackageVersion", "getMobilesdkVersion", "getMobileSolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("deviceName")
            private final String deviceName;

            @SerializedName("mobileSolution")
            private final String mobileSolution;

            @SerializedName("mobilesdkVersion")
            private final String mobilesdkVersion;

            @SerializedName("osName")
            private final String osName;

            @SerializedName("osVersion")
            private final String osVersion;

            @SerializedName("packageName")
            private final String packageName;

            @SerializedName("packageVersion")
            private final String packageVersion;

            @SerializedName("softwareType")
            private final String softwareType;

            public Attributes(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                pq0.z(str, str2, str3, str4, str5);
                cj.z(str6, str7, str8);
                this.osName = str;
                this.osVersion = str2;
                this.deviceName = str3;
                this.softwareType = str4;
                this.packageName = str5;
                this.packageVersion = str6;
                this.mobilesdkVersion = str7;
                this.mobileSolution = str8;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = attributes.osName;
                }
                if ((i2 & 2) != 0) {
                    str2 = attributes.osVersion;
                }
                if ((i2 & 4) != 0) {
                    str3 = attributes.deviceName;
                }
                if ((i2 & 8) != 0) {
                    str4 = attributes.softwareType;
                }
                if ((i2 & 16) != 0) {
                    str5 = attributes.packageName;
                }
                if ((i2 & 32) != 0) {
                    str6 = attributes.packageVersion;
                }
                if ((i2 & 64) != 0) {
                    str7 = attributes.mobilesdkVersion;
                }
                if ((i2 & 128) != 0) {
                    str8 = attributes.mobileSolution;
                }
                String str9 = str7;
                String str10 = str8;
                String str11 = str5;
                String str12 = str6;
                return attributes.copy(str, str2, str3, str4, str11, str12, str9, str10);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getOsName() {
                return this.osName;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getOsVersion() {
                return this.osVersion;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getDeviceName() {
                return this.deviceName;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final String getSoftwareType() {
                return this.softwareType;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final String getPackageName() {
                return this.packageName;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getPackageVersion() {
                return this.packageVersion;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final String getMobilesdkVersion() {
                return this.mobilesdkVersion;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final String getMobileSolution() {
                return this.mobileSolution;
            }

            public final Attributes copy(String osName, String osVersion, String deviceName, String softwareType, String packageName, String packageVersion, String mobilesdkVersion, String mobileSolution) {
                pq0.z(osName, osVersion, deviceName, softwareType, packageName);
                packageVersion.getClass();
                mobilesdkVersion.getClass();
                mobileSolution.getClass();
                return new Attributes(osName, osVersion, deviceName, softwareType, packageName, packageVersion, mobilesdkVersion, mobileSolution);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.osName, attributes.osName) && Intrinsics.c(this.osVersion, attributes.osVersion) && Intrinsics.c(this.deviceName, attributes.deviceName) && Intrinsics.c(this.softwareType, attributes.softwareType) && Intrinsics.c(this.packageName, attributes.packageName) && Intrinsics.c(this.packageVersion, attributes.packageVersion) && Intrinsics.c(this.mobilesdkVersion, attributes.mobilesdkVersion) && Intrinsics.c(this.mobileSolution, attributes.mobileSolution);
            }

            public final String getDeviceName() {
                return this.deviceName;
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

            public final String getPackageName() {
                return this.packageName;
            }

            public final String getPackageVersion() {
                return this.packageVersion;
            }

            public final String getSoftwareType() {
                return this.softwareType;
            }

            public int hashCode() {
                return this.mobileSolution.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.osName.hashCode() * 31, 31, this.osVersion), 31, this.deviceName), 31, this.softwareType), 31, this.packageName), 31, this.packageVersion), 31, this.mobilesdkVersion);
            }

            public String toString() {
                String str = this.osName;
                String str2 = this.osVersion;
                String str3 = this.deviceName;
                String str4 = this.softwareType;
                String str5 = this.packageName;
                String str6 = this.packageVersion;
                String str7 = this.mobilesdkVersion;
                String str8 = this.mobileSolution;
                StringBuilder sbS = fc.s("Attributes(osName=", str, ", osVersion=", str2, ", deviceName=");
                cj.C(sbS, str3, ", softwareType=", str4, ", packageName=");
                cj.C(sbS, str5, ", packageVersion=", str6, ", mobilesdkVersion=");
                return tr.l(sbS, str7, ", mobileSolution=", str8, ")");
            }
        }

        public Data(String str, String str2, boolean z, Attributes attributes) {
            str.getClass();
            str2.getClass();
            attributes.getClass();
            this.id = str;
            this.type = str2;
            this.doNotOverrideAgentInfo = z;
            this.attributes = attributes;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, String str2, boolean z, Attributes attributes, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.id;
            }
            if ((i2 & 2) != 0) {
                str2 = data.type;
            }
            if ((i2 & 4) != 0) {
                z = data.doNotOverrideAgentInfo;
            }
            if ((i2 & 8) != 0) {
                attributes = data.attributes;
            }
            return data.copy(str, str2, z, attributes);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getDoNotOverrideAgentInfo() {
            return this.doNotOverrideAgentInfo;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Data copy(String id, String type, boolean doNotOverrideAgentInfo, Attributes attributes) {
            id.getClass();
            type.getClass();
            attributes.getClass();
            return new Data(id, type, doNotOverrideAgentInfo, attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.id, data.id) && Intrinsics.c(this.type, data.type) && this.doNotOverrideAgentInfo == data.doNotOverrideAgentInfo && Intrinsics.c(this.attributes, data.attributes);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final boolean getDoNotOverrideAgentInfo() {
            return this.doNotOverrideAgentInfo;
        }

        public final String getId() {
            return this.id;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            return this.attributes.hashCode() + o60.b(fc.b(this.id.hashCode() * 31, 31, this.type), 31, this.doNotOverrideAgentInfo);
        }

        public String toString() {
            String str = this.id;
            String str2 = this.type;
            boolean z = this.doNotOverrideAgentInfo;
            Attributes attributes = this.attributes;
            StringBuilder sbS = fc.s("Data(id=", str, ", type=", str2, ", doNotOverrideAgentInfo=");
            sbS.append(z);
            sbS.append(", attributes=");
            sbS.append(attributes);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public AgentInfoRequestEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ AgentInfoRequestEntity copy$default(AgentInfoRequestEntity agentInfoRequestEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = agentInfoRequestEntity.data;
        }
        return agentInfoRequestEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final AgentInfoRequestEntity copy(Data data) {
        data.getClass();
        return new AgentInfoRequestEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AgentInfoRequestEntity) && Intrinsics.c(this.data, ((AgentInfoRequestEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "AgentInfoRequestEntity(data=" + this.data + ")";
    }
}
