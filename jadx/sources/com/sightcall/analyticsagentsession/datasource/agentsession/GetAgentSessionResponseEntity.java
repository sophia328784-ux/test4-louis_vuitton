package com.sightcall.analyticsagentsession.datasource.agentsession;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;)V", "getData", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GetAgentSessionResponseEntity {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001f B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J5\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0014\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;", "", b.a.f24015b, "", "type", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", l.f24145h, "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;", "relationships", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;", "<init>", "(Ljava/lang/String;Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;)V", "getId", "()Ljava/lang/String;", "getType", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", "getAttributes", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;", "getRelationships", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "Relationships", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName(b.a.f24015b)
        private final String id;

        @SerializedName("relationships")
        private final Relationships relationships;

        @SerializedName("type")
        private final Type type;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;", "", "uploadUrl", "", "<init>", "(Ljava/lang/String;)V", "getUploadUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("uploadUrl")
            private final String uploadUrl;

            public Attributes(String str) {
                str.getClass();
                this.uploadUrl = str;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = attributes.uploadUrl;
                }
                return attributes.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUploadUrl() {
                return this.uploadUrl;
            }

            public final Attributes copy(String uploadUrl) {
                uploadUrl.getClass();
                return new Attributes(uploadUrl);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Attributes) && Intrinsics.c(this.uploadUrl, ((Attributes) other).uploadUrl);
            }

            public final String getUploadUrl() {
                return this.uploadUrl;
            }

            public int hashCode() {
                return this.uploadUrl.hashCode();
            }

            public String toString() {
                return fc.h("Attributes(uploadUrl=", this.uploadUrl, ")");
            }
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships;", "", "caseReport", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;)V", "getCaseReport", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "CaseReport", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Relationships {

            @SerializedName("caseReport")
            private final CaseReport caseReport;

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport;", "", "links", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport$Links;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport$Links;)V", "getLinks", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport$Links;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Links", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CaseReport {

                @SerializedName("links")
                private final Links links;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Relationships$CaseReport$Links;", "", "self", "", "related", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getSelf", "()Ljava/lang/String;", "getRelated", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class Links {

                    @SerializedName("related")
                    private final String related;

                    @SerializedName("self")
                    private final String self;

                    public Links(String str, String str2) {
                        this.self = str;
                        this.related = str2;
                    }

                    public static /* synthetic */ Links copy$default(Links links, String str, String str2, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            str = links.self;
                        }
                        if ((i2 & 2) != 0) {
                            str2 = links.related;
                        }
                        return links.copy(str, str2);
                    }

                    /* JADX INFO: renamed from: component1, reason: from getter */
                    public final String getSelf() {
                        return this.self;
                    }

                    /* JADX INFO: renamed from: component2, reason: from getter */
                    public final String getRelated() {
                        return this.related;
                    }

                    public final Links copy(String self, String related) {
                        return new Links(self, related);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof Links)) {
                            return false;
                        }
                        Links links = (Links) other;
                        return Intrinsics.c(this.self, links.self) && Intrinsics.c(this.related, links.related);
                    }

                    public final String getRelated() {
                        return this.related;
                    }

                    public final String getSelf() {
                        return this.self;
                    }

                    public int hashCode() {
                        String str = this.self;
                        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                        String str2 = this.related;
                        return iHashCode + (str2 != null ? str2.hashCode() : 0);
                    }

                    public String toString() {
                        return d21.l("Links(self=", this.self, ", related=", this.related, ")");
                    }
                }

                public CaseReport(Links links) {
                    this.links = links;
                }

                public static /* synthetic */ CaseReport copy$default(CaseReport caseReport, Links links, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        links = caseReport.links;
                    }
                    return caseReport.copy(links);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final Links getLinks() {
                    return this.links;
                }

                public final CaseReport copy(Links links) {
                    return new CaseReport(links);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof CaseReport) && Intrinsics.c(this.links, ((CaseReport) other).links);
                }

                public final Links getLinks() {
                    return this.links;
                }

                public int hashCode() {
                    Links links = this.links;
                    if (links == null) {
                        return 0;
                    }
                    return links.hashCode();
                }

                public String toString() {
                    return "CaseReport(links=" + this.links + ")";
                }
            }

            public Relationships(CaseReport caseReport) {
                this.caseReport = caseReport;
            }

            public static /* synthetic */ Relationships copy$default(Relationships relationships, CaseReport caseReport, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    caseReport = relationships.caseReport;
                }
                return relationships.copy(caseReport);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            public final Relationships copy(CaseReport caseReport) {
                return new Relationships(caseReport);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Relationships) && Intrinsics.c(this.caseReport, ((Relationships) other).caseReport);
            }

            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            public int hashCode() {
                CaseReport caseReport = this.caseReport;
                if (caseReport == null) {
                    return 0;
                }
                return caseReport.hashCode();
            }

            public String toString() {
                return "Relationships(caseReport=" + this.caseReport + ")";
            }
        }

        public Data(String str, Type type, Attributes attributes, Relationships relationships) {
            str.getClass();
            attributes.getClass();
            this.id = str;
            this.type = type;
            this.attributes = attributes;
            this.relationships = relationships;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, Type type, Attributes attributes, Relationships relationships, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.id;
            }
            if ((i2 & 2) != 0) {
                type = data.type;
            }
            if ((i2 & 4) != 0) {
                attributes = data.attributes;
            }
            if ((i2 & 8) != 0) {
                relationships = data.relationships;
            }
            return data.copy(str, type, attributes, relationships);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Type getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Data copy(String id, Type type, Attributes attributes, Relationships relationships) {
            id.getClass();
            attributes.getClass();
            return new Data(id, type, attributes, relationships);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.id, data.id) && this.type == data.type && Intrinsics.c(this.attributes, data.attributes) && Intrinsics.c(this.relationships, data.relationships);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final String getId() {
            return this.id;
        }

        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            Type type = this.type;
            int iHashCode2 = (this.attributes.hashCode() + ((iHashCode + (type == null ? 0 : type.hashCode())) * 31)) * 31;
            Relationships relationships = this.relationships;
            return iHashCode2 + (relationships != null ? relationships.hashCode() : 0);
        }

        public String toString() {
            return "Data(id=" + this.id + ", type=" + this.type + ", attributes=" + this.attributes + ", relationships=" + this.relationships + ")";
        }
    }

    public GetAgentSessionResponseEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ GetAgentSessionResponseEntity copy$default(GetAgentSessionResponseEntity getAgentSessionResponseEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = getAgentSessionResponseEntity.data;
        }
        return getAgentSessionResponseEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final GetAgentSessionResponseEntity copy(Data data) {
        data.getClass();
        return new GetAgentSessionResponseEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof GetAgentSessionResponseEntity) && Intrinsics.c(this.data, ((GetAgentSessionResponseEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "GetAgentSessionResponseEntity(data=" + this.data + ")";
    }
}
