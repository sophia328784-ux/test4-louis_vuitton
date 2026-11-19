package com.sightcall.universal.agent.recording;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Response;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RecordingV3Response {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data;", "", "type", "", b.a.f24015b, l.f24145h, "Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;)V", "getType", "()Ljava/lang/String;", "getId", "getAttributes", "()Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName(b.a.f24015b)
        private final String id;

        @SerializedName("type")
        private final String type;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Response$Data$Attributes;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "mode", "", "<init>", "(Ljava/lang/String;I)V", "getUrl", "()Ljava/lang/String;", "getMode", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("mode")
            private final int mode;

            @SerializedName(ConfigurationName.DOWNLOAD_PLUGIN_URL)
            private final String url;

            public Attributes(String str, int i2) {
                str.getClass();
                this.url = str;
                this.mode = i2;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    str = attributes.url;
                }
                if ((i3 & 2) != 0) {
                    i2 = attributes.mode;
                }
                return attributes.copy(str, i2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUrl() {
                return this.url;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getMode() {
                return this.mode;
            }

            public final Attributes copy(String url, int mode) {
                url.getClass();
                return new Attributes(url, mode);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.url, attributes.url) && this.mode == attributes.mode;
            }

            public final int getMode() {
                return this.mode;
            }

            public final String getUrl() {
                return this.url;
            }

            public int hashCode() {
                return Integer.hashCode(this.mode) + (this.url.hashCode() * 31);
            }

            public String toString() {
                return "Attributes(url=" + this.url + ", mode=" + this.mode + ")";
            }
        }

        public Data(String str, String str2, Attributes attributes) {
            str.getClass();
            str2.getClass();
            attributes.getClass();
            this.type = str;
            this.id = str2;
            this.attributes = attributes;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, String str2, Attributes attributes, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.type;
            }
            if ((i2 & 2) != 0) {
                str2 = data.id;
            }
            if ((i2 & 4) != 0) {
                attributes = data.attributes;
            }
            return data.copy(str, str2, attributes);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Data copy(String type, String id, Attributes attributes) {
            type.getClass();
            id.getClass();
            attributes.getClass();
            return new Data(type, id, attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.type, data.type) && Intrinsics.c(this.id, data.id) && Intrinsics.c(this.attributes, data.attributes);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final String getId() {
            return this.id;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            return this.attributes.hashCode() + fc.b(this.type.hashCode() * 31, 31, this.id);
        }

        public String toString() {
            String str = this.type;
            String str2 = this.id;
            Attributes attributes = this.attributes;
            StringBuilder sbS = fc.s("Data(type=", str, ", id=", str2, ", attributes=");
            sbS.append(attributes);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public RecordingV3Response(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ RecordingV3Response copy$default(RecordingV3Response recordingV3Response, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = recordingV3Response.data;
        }
        return recordingV3Response.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final RecordingV3Response copy(Data data) {
        data.getClass();
        return new RecordingV3Response(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RecordingV3Response) && Intrinsics.c(this.data, ((RecordingV3Response) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "RecordingV3Response(data=" + this.data + ")";
    }
}
