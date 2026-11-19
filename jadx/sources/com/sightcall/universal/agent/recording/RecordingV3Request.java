package com.sightcall.universal.agent.recording;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Usecase;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RecordingV3Request {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    public RecordingV3Request(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ RecordingV3Request copy$default(RecordingV3Request recordingV3Request, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = recordingV3Request.data;
        }
        return recordingV3Request.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final RecordingV3Request copy(Data data) {
        data.getClass();
        return new RecordingV3Request(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RecordingV3Request) && Intrinsics.c(this.data, ((RecordingV3Request) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "RecordingV3Request(data=" + this.data + ")";
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data;", "", "type", "", l.f24145h, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;", "relationships", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;", "getRelationships", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "Relationships", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("relationships")
        private final Relationships relationships;

        @SerializedName("type")
        private final String type;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Attributes;", "", "reference", "", "realtime", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getReference", "()Ljava/lang/String;", "getRealtime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("realtime")
            private final String realtime;

            @SerializedName("reference")
            private final String reference;

            public Attributes(String str, String str2) {
                this.reference = str;
                this.realtime = str2;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, String str2, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = attributes.reference;
                }
                if ((i2 & 2) != 0) {
                    str2 = attributes.realtime;
                }
                return attributes.copy(str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getReference() {
                return this.reference;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getRealtime() {
                return this.realtime;
            }

            public final Attributes copy(String reference, String realtime) {
                return new Attributes(reference, realtime);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.reference, attributes.reference) && Intrinsics.c(this.realtime, attributes.realtime);
            }

            public final String getRealtime() {
                return this.realtime;
            }

            public final String getReference() {
                return this.reference;
            }

            public int hashCode() {
                String str = this.reference;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.realtime;
                return iHashCode + (str2 != null ? str2.hashCode() : 0);
            }

            public String toString() {
                return d21.l("Attributes(reference=", this.reference, ", realtime=", this.realtime, ")");
            }
        }

        public Data(String str, Attributes attributes, Relationships relationships) {
            str.getClass();
            attributes.getClass();
            relationships.getClass();
            this.type = str;
            this.attributes = attributes;
            this.relationships = relationships;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, Attributes attributes, Relationships relationships, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.type;
            }
            if ((i2 & 2) != 0) {
                attributes = data.attributes;
            }
            if ((i2 & 4) != 0) {
                relationships = data.relationships;
            }
            return data.copy(str, attributes, relationships);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Data copy(String type, Attributes attributes, Relationships relationships) {
            type.getClass();
            attributes.getClass();
            relationships.getClass();
            return new Data(type, attributes, relationships);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.type, data.type) && Intrinsics.c(this.attributes, data.attributes) && Intrinsics.c(this.relationships, data.relationships);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            return this.relationships.hashCode() + ((this.attributes.hashCode() + (this.type.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "Data(type=" + this.type + ", attributes=" + this.attributes + ", relationships=" + this.relationships + ")";
        }

        @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0006%&'()*B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JE\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0014\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010!\u001a\u00020\"HÖ\u0081\u0004J\n\u0010#\u001a\u00020$HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006+"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;", "", "caseReport", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;", "usecase", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;", "acdProduct", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;", "acdLanguage", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;", "acdLocation", "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;)V", "getCaseReport", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;", "getUsecase", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;", "getAcdProduct", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;", "getAcdLanguage", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;", "getAcdLocation", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "CaseReport", "UseCase", "AcdProduct", "AcdLanguage", "AcdLocations", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Relationships {

            @SerializedName("acdLanguage")
            private final AcdLanguage acdLanguage;

            @SerializedName("acdLocation")
            private final AcdLocations acdLocation;

            @SerializedName("acdProduct")
            private final AcdProduct acdProduct;

            @SerializedName("caseReport")
            private final CaseReport caseReport;

            @SerializedName("usecase")
            private final UseCase usecase;

            /* JADX INFO: renamed from: com.sightcall.universal.agent.recording.RecordingV3Request$Data$Relationships$Data, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "", b.a.f24015b, "", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getType", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class C0246Data {

                @SerializedName(b.a.f24015b)
                private final String id;

                @SerializedName("type")
                private final String type;

                public C0246Data(String str, String str2) {
                    str.getClass();
                    str2.getClass();
                    this.id = str;
                    this.type = str2;
                }

                public static /* synthetic */ C0246Data copy$default(C0246Data c0246Data, String str, String str2, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = c0246Data.id;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = c0246Data.type;
                    }
                    return c0246Data.copy(str, str2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getId() {
                    return this.id;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getType() {
                    return this.type;
                }

                public final C0246Data copy(String id, String type) {
                    id.getClass();
                    type.getClass();
                    return new C0246Data(id, type);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof C0246Data)) {
                        return false;
                    }
                    C0246Data c0246Data = (C0246Data) other;
                    return Intrinsics.c(this.id, c0246Data.id) && Intrinsics.c(this.type, c0246Data.type);
                }

                public final String getId() {
                    return this.id;
                }

                public final String getType() {
                    return this.type;
                }

                public int hashCode() {
                    return this.type.hashCode() + (this.id.hashCode() * 31);
                }

                public String toString() {
                    return d21.l("Data(id=", this.id, ", type=", this.type, ")");
                }
            }

            public Relationships(CaseReport caseReport, UseCase useCase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocations) {
                this.caseReport = caseReport;
                this.usecase = useCase;
                this.acdProduct = acdProduct;
                this.acdLanguage = acdLanguage;
                this.acdLocation = acdLocations;
            }

            public static /* synthetic */ Relationships copy$default(Relationships relationships, CaseReport caseReport, UseCase useCase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocations, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    caseReport = relationships.caseReport;
                }
                if ((i2 & 2) != 0) {
                    useCase = relationships.usecase;
                }
                if ((i2 & 4) != 0) {
                    acdProduct = relationships.acdProduct;
                }
                if ((i2 & 8) != 0) {
                    acdLanguage = relationships.acdLanguage;
                }
                if ((i2 & 16) != 0) {
                    acdLocations = relationships.acdLocation;
                }
                AcdLocations acdLocations2 = acdLocations;
                AcdProduct acdProduct2 = acdProduct;
                return relationships.copy(caseReport, useCase, acdProduct2, acdLanguage, acdLocations2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final UseCase getUsecase() {
                return this.usecase;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final AcdProduct getAcdProduct() {
                return this.acdProduct;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final AcdLanguage getAcdLanguage() {
                return this.acdLanguage;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final AcdLocations getAcdLocation() {
                return this.acdLocation;
            }

            public final Relationships copy(CaseReport caseReport, UseCase usecase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocation) {
                return new Relationships(caseReport, usecase, acdProduct, acdLanguage, acdLocation);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Relationships)) {
                    return false;
                }
                Relationships relationships = (Relationships) other;
                return Intrinsics.c(this.caseReport, relationships.caseReport) && Intrinsics.c(this.usecase, relationships.usecase) && Intrinsics.c(this.acdProduct, relationships.acdProduct) && Intrinsics.c(this.acdLanguage, relationships.acdLanguage) && Intrinsics.c(this.acdLocation, relationships.acdLocation);
            }

            public final AcdLanguage getAcdLanguage() {
                return this.acdLanguage;
            }

            public final AcdLocations getAcdLocation() {
                return this.acdLocation;
            }

            public final AcdProduct getAcdProduct() {
                return this.acdProduct;
            }

            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            public final UseCase getUsecase() {
                return this.usecase;
            }

            public int hashCode() {
                CaseReport caseReport = this.caseReport;
                int iHashCode = (caseReport == null ? 0 : caseReport.hashCode()) * 31;
                UseCase useCase = this.usecase;
                int iHashCode2 = (iHashCode + (useCase == null ? 0 : useCase.hashCode())) * 31;
                AcdProduct acdProduct = this.acdProduct;
                int iHashCode3 = (iHashCode2 + (acdProduct == null ? 0 : acdProduct.hashCode())) * 31;
                AcdLanguage acdLanguage = this.acdLanguage;
                int iHashCode4 = (iHashCode3 + (acdLanguage == null ? 0 : acdLanguage.hashCode())) * 31;
                AcdLocations acdLocations = this.acdLocation;
                return iHashCode4 + (acdLocations != null ? acdLocations.hashCode() : 0);
            }

            public String toString() {
                return "Relationships(caseReport=" + this.caseReport + ", usecase=" + this.usecase + ", acdProduct=" + this.acdProduct + ", acdLanguage=" + this.acdLanguage + ", acdLocation=" + this.acdLocation + ")";
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLanguage;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V", b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdLanguage {

                @SerializedName(DbParams.KEY_DATA)
                private final C0246Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdLanguage(String str) {
                    this(new C0246Data(str, "acdLanguages"));
                    str.getClass();
                }

                public static /* synthetic */ AcdLanguage copy$default(AcdLanguage acdLanguage, C0246Data c0246Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0246Data = acdLanguage.data;
                    }
                    return acdLanguage.copy(c0246Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0246Data getData() {
                    return this.data;
                }

                public final AcdLanguage copy(C0246Data data) {
                    data.getClass();
                    return new AcdLanguage(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdLanguage) && Intrinsics.c(this.data, ((AcdLanguage) other).data);
                }

                public final C0246Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdLanguage(data=" + this.data + ")";
                }

                public AcdLanguage(C0246Data c0246Data) {
                    c0246Data.getClass();
                    this.data = c0246Data;
                }
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdLocations;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V", b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdLocations {

                @SerializedName(DbParams.KEY_DATA)
                private final C0246Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdLocations(String str) {
                    this(new C0246Data(str, "acdLocations"));
                    str.getClass();
                }

                public static /* synthetic */ AcdLocations copy$default(AcdLocations acdLocations, C0246Data c0246Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0246Data = acdLocations.data;
                    }
                    return acdLocations.copy(c0246Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0246Data getData() {
                    return this.data;
                }

                public final AcdLocations copy(C0246Data data) {
                    data.getClass();
                    return new AcdLocations(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdLocations) && Intrinsics.c(this.data, ((AcdLocations) other).data);
                }

                public final C0246Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdLocations(data=" + this.data + ")";
                }

                public AcdLocations(C0246Data c0246Data) {
                    c0246Data.getClass();
                    this.data = c0246Data;
                }
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V", b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdProduct {

                @SerializedName(DbParams.KEY_DATA)
                private final C0246Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdProduct(String str) {
                    this(new C0246Data(str, "acdProducts"));
                    str.getClass();
                }

                public static /* synthetic */ AcdProduct copy$default(AcdProduct acdProduct, C0246Data c0246Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0246Data = acdProduct.data;
                    }
                    return acdProduct.copy(c0246Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0246Data getData() {
                    return this.data;
                }

                public final AcdProduct copy(C0246Data data) {
                    data.getClass();
                    return new AcdProduct(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdProduct) && Intrinsics.c(this.data, ((AcdProduct) other).data);
                }

                public final C0246Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdProduct(data=" + this.data + ")";
                }

                public AcdProduct(C0246Data c0246Data) {
                    c0246Data.getClass();
                    this.data = c0246Data;
                }
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$CaseReport;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V", b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CaseReport {

                @SerializedName(DbParams.KEY_DATA)
                private final C0246Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public CaseReport(String str) {
                    this(new C0246Data(str, "caseReports"));
                    str.getClass();
                }

                public static /* synthetic */ CaseReport copy$default(CaseReport caseReport, C0246Data c0246Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0246Data = caseReport.data;
                    }
                    return caseReport.copy(c0246Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0246Data getData() {
                    return this.data;
                }

                public final CaseReport copy(C0246Data data) {
                    data.getClass();
                    return new CaseReport(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof CaseReport) && Intrinsics.c(this.data, ((CaseReport) other).data);
                }

                public final C0246Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "CaseReport(data=" + this.data + ")";
                }

                public CaseReport(C0246Data c0246Data) {
                    c0246Data.getClass();
                    this.data = c0246Data;
                }
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$UseCase;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V", b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class UseCase {

                @SerializedName(DbParams.KEY_DATA)
                private final C0246Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public UseCase(String str) {
                    this(new C0246Data(str, Usecase.TYPE));
                    str.getClass();
                }

                public static /* synthetic */ UseCase copy$default(UseCase useCase, C0246Data c0246Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0246Data = useCase.data;
                    }
                    return useCase.copy(c0246Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0246Data getData() {
                    return this.data;
                }

                public final UseCase copy(C0246Data data) {
                    data.getClass();
                    return new UseCase(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof UseCase) && Intrinsics.c(this.data, ((UseCase) other).data);
                }

                public final C0246Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "UseCase(data=" + this.data + ")";
                }

                public UseCase(C0246Data c0246Data) {
                    c0246Data.getClass();
                    this.data = c0246Data;
                }
            }
        }

        public /* synthetic */ Data(String str, Attributes attributes, Relationships relationships, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "recordingSessions" : str, attributes, relationships);
        }
    }
}
