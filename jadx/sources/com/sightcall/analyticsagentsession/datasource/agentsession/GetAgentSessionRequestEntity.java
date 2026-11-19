package com.sightcall.analyticsagentsession.datasource.agentsession;

import com.batch.android.s.b;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;)V", "getData", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "Companion", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GetAgentSessionRequestEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data;", "", "relationships", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;)V", "getRelationships", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;", "type", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", "getType", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Relationships", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName("relationships")
        private final Relationships relationships;

        @SerializedName("type")
        private final Type type;

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships;", "", "caseReport", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport;)V", "getCaseReport", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "CaseReport", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Relationships {

            @SerializedName("caseReport")
            private final CaseReport caseReport;

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport;", "", DbParams.KEY_DATA, "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport$Data;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport$Data;)V", "getData", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CaseReport {

                @SerializedName(DbParams.KEY_DATA)
                private final C0245Data data;

                /* JADX INFO: renamed from: com.sightcall.analyticsagentsession.datasource.agentsession.GetAgentSessionRequestEntity$Data$Relationships$CaseReport$Data, reason: collision with other inner class name */
                @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Data$Relationships$CaseReport$Data;", "", b.a.f24015b, "", "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "type", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", "getType", "()Lcom/sightcall/analyticsagentsession/datasource/agentsession/Type;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class C0245Data {

                    @SerializedName(b.a.f24015b)
                    private final String id;

                    @SerializedName("type")
                    private final Type type;

                    public C0245Data(String str) {
                        str.getClass();
                        this.id = str;
                        this.type = Type.CaseReports;
                    }

                    public static /* synthetic */ C0245Data copy$default(C0245Data c0245Data, String str, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            str = c0245Data.id;
                        }
                        return c0245Data.copy(str);
                    }

                    /* JADX INFO: renamed from: component1, reason: from getter */
                    public final String getId() {
                        return this.id;
                    }

                    public final C0245Data copy(String id) {
                        id.getClass();
                        return new C0245Data(id);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        return (other instanceof C0245Data) && Intrinsics.c(this.id, ((C0245Data) other).id);
                    }

                    public final String getId() {
                        return this.id;
                    }

                    public final Type getType() {
                        return this.type;
                    }

                    public int hashCode() {
                        return this.id.hashCode();
                    }

                    public String toString() {
                        return fc.h("Data(id=", this.id, ")");
                    }
                }

                public CaseReport(C0245Data c0245Data) {
                    c0245Data.getClass();
                    this.data = c0245Data;
                }

                public static /* synthetic */ CaseReport copy$default(CaseReport caseReport, C0245Data c0245Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0245Data = caseReport.data;
                    }
                    return caseReport.copy(c0245Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0245Data getData() {
                    return this.data;
                }

                public final CaseReport copy(C0245Data data) {
                    data.getClass();
                    return new CaseReport(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof CaseReport) && Intrinsics.c(this.data, ((CaseReport) other).data);
                }

                public final C0245Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "CaseReport(data=" + this.data + ")";
                }
            }

            public Relationships(CaseReport caseReport) {
                caseReport.getClass();
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
                caseReport.getClass();
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
                return this.caseReport.hashCode();
            }

            public String toString() {
                return "Relationships(caseReport=" + this.caseReport + ")";
            }
        }

        public Data(Relationships relationships) {
            relationships.getClass();
            this.relationships = relationships;
            this.type = Type.AnalyticsSessions;
        }

        public static /* synthetic */ Data copy$default(Data data, Relationships relationships, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                relationships = data.relationships;
            }
            return data.copy(relationships);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Data copy(Relationships relationships) {
            relationships.getClass();
            return new Data(relationships);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.c(this.relationships, ((Data) other).relationships);
        }

        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Type getType() {
            return this.type;
        }

        public int hashCode() {
            return this.relationships.hashCode();
        }

        public String toString() {
            return "Data(relationships=" + this.relationships + ")";
        }
    }

    public GetAgentSessionRequestEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ GetAgentSessionRequestEntity copy$default(GetAgentSessionRequestEntity getAgentSessionRequestEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = getAgentSessionRequestEntity.data;
        }
        return getAgentSessionRequestEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final GetAgentSessionRequestEntity copy(Data data) {
        data.getClass();
        return new GetAgentSessionRequestEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof GetAgentSessionRequestEntity) && Intrinsics.c(this.data, ((GetAgentSessionRequestEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "GetAgentSessionRequestEntity(data=" + this.data + ")";
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Companion;", "", "<init>", "()V", "create", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;", "caseReportId", "", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GetAgentSessionRequestEntity create(String caseReportId) {
            caseReportId.getClass();
            return new GetAgentSessionRequestEntity(new Data(new Data.Relationships(new Data.Relationships.CaseReport(new Data.Relationships.CaseReport.C0245Data(caseReportId)))));
        }

        private Companion() {
        }
    }
}
