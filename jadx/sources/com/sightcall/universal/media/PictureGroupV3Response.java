package com.sightcall.universal.media;

import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Response;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Response$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Response$Data;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Response$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PictureGroupV3Response {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Response$Data;", "", "type", "", l.f24145h, "Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("type")
        private final String type;

        @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Response$Data$Attributes;", "", "uploadUrl", "", "uploadToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getUploadUrl", "()Ljava/lang/String;", "getUploadToken", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("uploadToken")
            private final String uploadToken;

            @SerializedName("uploadUrl")
            private final String uploadUrl;

            public Attributes(String str, String str2) {
                str.getClass();
                str2.getClass();
                this.uploadUrl = str;
                this.uploadToken = str2;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = attributes.uploadUrl;
                }
                if ((i2 & 2) != 0) {
                    str2 = attributes.uploadToken;
                }
                return attributes.copy(str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUploadUrl() {
                return this.uploadUrl;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getUploadToken() {
                return this.uploadToken;
            }

            public final Attributes copy(String uploadUrl, String uploadToken) {
                uploadUrl.getClass();
                uploadToken.getClass();
                return new Attributes(uploadUrl, uploadToken);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.uploadUrl, attributes.uploadUrl) && Intrinsics.c(this.uploadToken, attributes.uploadToken);
            }

            public final String getUploadToken() {
                return this.uploadToken;
            }

            public final String getUploadUrl() {
                return this.uploadUrl;
            }

            public int hashCode() {
                return this.uploadToken.hashCode() + (this.uploadUrl.hashCode() * 31);
            }

            public String toString() {
                return d21.l("Attributes(uploadUrl=", this.uploadUrl, ", uploadToken=", this.uploadToken, ")");
            }
        }

        public Data(String str, Attributes attributes) {
            str.getClass();
            attributes.getClass();
            this.type = str;
            this.attributes = attributes;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, Attributes attributes, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.type;
            }
            if ((i2 & 2) != 0) {
                attributes = data.attributes;
            }
            return data.copy(str, attributes);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Data copy(String type, Attributes attributes) {
            type.getClass();
            attributes.getClass();
            return new Data(type, attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.type, data.type) && Intrinsics.c(this.attributes, data.attributes);
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
            return "Data(type=" + this.type + ", attributes=" + this.attributes + ")";
        }
    }

    public PictureGroupV3Response(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ PictureGroupV3Response copy$default(PictureGroupV3Response pictureGroupV3Response, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = pictureGroupV3Response.data;
        }
        return pictureGroupV3Response.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final PictureGroupV3Response copy(Data data) {
        data.getClass();
        return new PictureGroupV3Response(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PictureGroupV3Response) && Intrinsics.c(this.data, ((PictureGroupV3Response) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "PictureGroupV3Response(data=" + this.data + ")";
    }
}
