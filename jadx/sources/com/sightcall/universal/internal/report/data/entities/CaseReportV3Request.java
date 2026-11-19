package com.sightcall.universal.internal.report.data.entities;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0080\b\u0018\u00002\u00020\u0001:\u0011\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\""}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;", "<init>", "(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;)V", "getData", "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "RecordingConstants", "UserConstants", "CallConstants", "ConsentModeConstants", "DisplayNameConstants", "MicroConstants", "CameraConstants", "ShareConstants", "ScreencastConstants", "TorchConstants", "AnnotationsConstants", "ChatConstants", "LiveTranslation", "GpsConstants", "VideoSaveConstants", "SnapshotConstants", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CaseReportV3Request {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    public CaseReportV3Request(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ CaseReportV3Request copy$default(CaseReportV3Request caseReportV3Request, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = caseReportV3Request.data;
        }
        return caseReportV3Request.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final CaseReportV3Request copy(Data data) {
        data.getClass();
        return new CaseReportV3Request(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CaseReportV3Request) && Intrinsics.c(this.data, ((CaseReportV3Request) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "CaseReportV3Request(data=" + this.data + ")";
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data;", "", "type", "", l.f24145h, "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;", "relationships", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;", "getRelationships", "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "Relationships", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("relationships")
        private final Relationships relationships;

        @SerializedName("type")
        private final String type;

        public Data(String str, Attributes attributes, Relationships relationships) {
            str.getClass();
            attributes.getClass();
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
            int iHashCode = (this.attributes.hashCode() + (this.type.hashCode() * 31)) * 31;
            Relationships relationships = this.relationships;
            return iHashCode + (relationships == null ? 0 : relationships.hashCode());
        }

        public String toString() {
            return "Data(type=" + this.type + ", attributes=" + this.attributes + ", relationships=" + this.relationships + ")";
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001:\u000e\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0006HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006$"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes;", "", "items", "", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "sentAt", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "getSentAt", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Item", "BaseItem", "UserConnected", "HostConnected", "UserJoined", "UserLeft", "CallFailed", "ConsentAccepted", "ConsentDeclined", "DisplayNameSet", "ChatMessageSent", "ChatMessageReceived", "CallEnded", "GpsReceived", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("items")
            private final List<Item> items;

            @SerializedName("sentAt")
            private final String sentAt;

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class BaseItem extends Item {
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public BaseItem(String str, String str2, String str3) {
                    super(str, str2, str3);
                    cj.z(str, str2, str3);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                }

                public static /* synthetic */ BaseItem copy$default(BaseItem baseItem, String str, String str2, String str3, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = baseItem.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = baseItem.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = baseItem.performedAt;
                    }
                    return baseItem.copy(str, str2, str3);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                public final BaseItem copy(String name, String userRole, String performedAt) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    return new BaseItem(name, userRole, performedAt);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof BaseItem)) {
                        return false;
                    }
                    BaseItem baseItem = (BaseItem) other;
                    return Intrinsics.c(this.name, baseItem.name) && Intrinsics.c(this.userRole, baseItem.userRole) && Intrinsics.c(this.performedAt, baseItem.performedAt);
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.performedAt.hashCode() + fc.b(this.name.hashCode() * 31, 31, this.userRole);
                }

                public String toString() {
                    return n00.r(this.performedAt, ")", fc.s("BaseItem(name=", this.name, ", userRole=", this.userRole, ", performedAt="));
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "chatMessageId", "chatMessageContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getChatMessageId", "getChatMessageContent", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ChatMessageReceived extends Item {
                private final String chatMessageContent;
                private final String chatMessageId;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ChatMessageReceived(String str, String str2, String str3, String str4, String str5) {
                    super(str, str2, str3);
                    pq0.z(str, str2, str3, str4, str5);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.chatMessageId = str4;
                    this.chatMessageContent = str5;
                }

                public static /* synthetic */ ChatMessageReceived copy$default(ChatMessageReceived chatMessageReceived, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = chatMessageReceived.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = chatMessageReceived.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = chatMessageReceived.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = chatMessageReceived.chatMessageId;
                    }
                    if ((i2 & 16) != 0) {
                        str5 = chatMessageReceived.chatMessageContent;
                    }
                    String str6 = str5;
                    String str7 = str3;
                    return chatMessageReceived.copy(str, str2, str7, str4, str6);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getChatMessageId() {
                    return this.chatMessageId;
                }

                /* JADX INFO: renamed from: component5, reason: from getter */
                public final String getChatMessageContent() {
                    return this.chatMessageContent;
                }

                public final ChatMessageReceived copy(String name, String userRole, String performedAt, String chatMessageId, String chatMessageContent) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    chatMessageId.getClass();
                    chatMessageContent.getClass();
                    return new ChatMessageReceived(name, userRole, performedAt, chatMessageId, chatMessageContent);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof ChatMessageReceived)) {
                        return false;
                    }
                    ChatMessageReceived chatMessageReceived = (ChatMessageReceived) other;
                    return Intrinsics.c(this.name, chatMessageReceived.name) && Intrinsics.c(this.userRole, chatMessageReceived.userRole) && Intrinsics.c(this.performedAt, chatMessageReceived.performedAt) && Intrinsics.c(this.chatMessageId, chatMessageReceived.chatMessageId) && Intrinsics.c(this.chatMessageContent, chatMessageReceived.chatMessageContent);
                }

                public final String getChatMessageContent() {
                    return this.chatMessageContent;
                }

                public final String getChatMessageId() {
                    return this.chatMessageId;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.chatMessageContent.hashCode() + fc.b(fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt), 31, this.chatMessageId);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    String str4 = this.chatMessageId;
                    String str5 = this.chatMessageContent;
                    StringBuilder sbS = fc.s("ChatMessageReceived(name=", str, ", userRole=", str2, ", performedAt=");
                    cj.C(sbS, str3, ", chatMessageId=", str4, ", chatMessageContent=");
                    return n00.r(str5, ")", sbS);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J=\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageSent;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "chatMessageId", "chatMessageContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getChatMessageId", "getChatMessageContent", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ChatMessageSent extends Item {
                private final String chatMessageContent;
                private final String chatMessageId;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ChatMessageSent(String str, String str2, String str3, String str4, String str5) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str5);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.chatMessageId = str4;
                    this.chatMessageContent = str5;
                }

                public static /* synthetic */ ChatMessageSent copy$default(ChatMessageSent chatMessageSent, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = chatMessageSent.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = chatMessageSent.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = chatMessageSent.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = chatMessageSent.chatMessageId;
                    }
                    if ((i2 & 16) != 0) {
                        str5 = chatMessageSent.chatMessageContent;
                    }
                    String str6 = str5;
                    String str7 = str3;
                    return chatMessageSent.copy(str, str2, str7, str4, str6);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getChatMessageId() {
                    return this.chatMessageId;
                }

                /* JADX INFO: renamed from: component5, reason: from getter */
                public final String getChatMessageContent() {
                    return this.chatMessageContent;
                }

                public final ChatMessageSent copy(String name, String userRole, String performedAt, String chatMessageId, String chatMessageContent) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    chatMessageContent.getClass();
                    return new ChatMessageSent(name, userRole, performedAt, chatMessageId, chatMessageContent);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof ChatMessageSent)) {
                        return false;
                    }
                    ChatMessageSent chatMessageSent = (ChatMessageSent) other;
                    return Intrinsics.c(this.name, chatMessageSent.name) && Intrinsics.c(this.userRole, chatMessageSent.userRole) && Intrinsics.c(this.performedAt, chatMessageSent.performedAt) && Intrinsics.c(this.chatMessageId, chatMessageSent.chatMessageId) && Intrinsics.c(this.chatMessageContent, chatMessageSent.chatMessageContent);
                }

                public final String getChatMessageContent() {
                    return this.chatMessageContent;
                }

                public final String getChatMessageId() {
                    return this.chatMessageId;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    int iB = fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                    String str = this.chatMessageId;
                    return this.chatMessageContent.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    String str4 = this.chatMessageId;
                    String str5 = this.chatMessageContent;
                    StringBuilder sbS = fc.s("ChatMessageSent(name=", str, ", userRole=", str2, ", performedAt=");
                    cj.C(sbS, str3, ", chatMessageId=", str4, ", chatMessageContent=");
                    return n00.r(str5, ")", sbS);
                }
            }

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u0007HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "consentId", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getConsentId", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ConsentAccepted extends Item {
                private final int consentId;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ConsentAccepted(String str, String str2, String str3, int i2) {
                    super(str, str2, str3);
                    cj.z(str, str2, str3);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.consentId = i2;
                }

                public static /* synthetic */ ConsentAccepted copy$default(ConsentAccepted consentAccepted, String str, String str2, String str3, int i2, int i3, Object obj) {
                    if ((i3 & 1) != 0) {
                        str = consentAccepted.name;
                    }
                    if ((i3 & 2) != 0) {
                        str2 = consentAccepted.userRole;
                    }
                    if ((i3 & 4) != 0) {
                        str3 = consentAccepted.performedAt;
                    }
                    if ((i3 & 8) != 0) {
                        i2 = consentAccepted.consentId;
                    }
                    return consentAccepted.copy(str, str2, str3, i2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final int getConsentId() {
                    return this.consentId;
                }

                public final ConsentAccepted copy(String name, String userRole, String performedAt, int consentId) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    return new ConsentAccepted(name, userRole, performedAt, consentId);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof ConsentAccepted)) {
                        return false;
                    }
                    ConsentAccepted consentAccepted = (ConsentAccepted) other;
                    return Intrinsics.c(this.name, consentAccepted.name) && Intrinsics.c(this.userRole, consentAccepted.userRole) && Intrinsics.c(this.performedAt, consentAccepted.performedAt) && this.consentId == consentAccepted.consentId;
                }

                public final int getConsentId() {
                    return this.consentId;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return Integer.hashCode(this.consentId) + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    int i2 = this.consentId;
                    StringBuilder sbS = fc.s("ConsentAccepted(name=", str, ", userRole=", str2, ", performedAt=");
                    sbS.append(str3);
                    sbS.append(", consentId=");
                    sbS.append(i2);
                    sbS.append(")");
                    return sbS.toString();
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "consentId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getConsentId", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ConsentDeclined extends Item {
                private final String consentId;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public ConsentDeclined(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.consentId = str4;
                }

                public static /* synthetic */ ConsentDeclined copy$default(ConsentDeclined consentDeclined, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = consentDeclined.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = consentDeclined.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = consentDeclined.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = consentDeclined.consentId;
                    }
                    return consentDeclined.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getConsentId() {
                    return this.consentId;
                }

                public final ConsentDeclined copy(String name, String userRole, String performedAt, String consentId) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    consentId.getClass();
                    return new ConsentDeclined(name, userRole, performedAt, consentId);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof ConsentDeclined)) {
                        return false;
                    }
                    ConsentDeclined consentDeclined = (ConsentDeclined) other;
                    return Intrinsics.c(this.name, consentDeclined.name) && Intrinsics.c(this.userRole, consentDeclined.userRole) && Intrinsics.c(this.performedAt, consentDeclined.performedAt) && Intrinsics.c(this.consentId, consentDeclined.consentId);
                }

                public final String getConsentId() {
                    return this.consentId;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.consentId.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("ConsentDeclined(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", consentId=", this.consentId, ")");
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$DisplayNameSet;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "displayName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getDisplayName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class DisplayNameSet extends Item {

                @SerializedName("displayName")
                private final String displayName;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public DisplayNameSet(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.displayName = str4;
                }

                public static /* synthetic */ DisplayNameSet copy$default(DisplayNameSet displayNameSet, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = displayNameSet.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = displayNameSet.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = displayNameSet.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = displayNameSet.displayName;
                    }
                    return displayNameSet.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getDisplayName() {
                    return this.displayName;
                }

                public final DisplayNameSet copy(String name, String userRole, String performedAt, String displayName) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    displayName.getClass();
                    return new DisplayNameSet(name, userRole, performedAt, displayName);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof DisplayNameSet)) {
                        return false;
                    }
                    DisplayNameSet displayNameSet = (DisplayNameSet) other;
                    return Intrinsics.c(this.name, displayNameSet.name) && Intrinsics.c(this.userRole, displayNameSet.userRole) && Intrinsics.c(this.performedAt, displayNameSet.performedAt) && Intrinsics.c(this.displayName, displayNameSet.displayName);
                }

                public final String getDisplayName() {
                    return this.displayName;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.displayName.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("DisplayNameSet(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", displayName=", this.displayName, ")");
                }
            }

            @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003Jr\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010%J\u0014\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0083\u0004J\n\u0010*\u001a\u00020+HÖ\u0081\u0004J\n\u0010,\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0014R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0017\u0010\u0014R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0018\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010¨\u0006-"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "gpsLatitude", "", "gpsLongitude", "gpsAccuracy", "gpsAltitude", "gpsAltitudeAccuracy", "gpsPerformedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getGpsLatitude", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getGpsLongitude", "getGpsAccuracy", "getGpsAltitude", "getGpsAltitudeAccuracy", "getGpsPerformedAt", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class GpsReceived extends Item {
                private final Double gpsAccuracy;
                private final Double gpsAltitude;
                private final String gpsAltitudeAccuracy;
                private final Double gpsLatitude;
                private final Double gpsLongitude;
                private final String gpsPerformedAt;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public GpsReceived(String str, String str2, String str3, Double d, Double d2, Double d3, Double d4, String str4, String str5) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str5);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.gpsLatitude = d;
                    this.gpsLongitude = d2;
                    this.gpsAccuracy = d3;
                    this.gpsAltitude = d4;
                    this.gpsAltitudeAccuracy = str4;
                    this.gpsPerformedAt = str5;
                }

                public static /* synthetic */ GpsReceived copy$default(GpsReceived gpsReceived, String str, String str2, String str3, Double d, Double d2, Double d3, Double d4, String str4, String str5, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = gpsReceived.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = gpsReceived.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = gpsReceived.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        d = gpsReceived.gpsLatitude;
                    }
                    if ((i2 & 16) != 0) {
                        d2 = gpsReceived.gpsLongitude;
                    }
                    if ((i2 & 32) != 0) {
                        d3 = gpsReceived.gpsAccuracy;
                    }
                    if ((i2 & 64) != 0) {
                        d4 = gpsReceived.gpsAltitude;
                    }
                    if ((i2 & 128) != 0) {
                        str4 = gpsReceived.gpsAltitudeAccuracy;
                    }
                    if ((i2 & 256) != 0) {
                        str5 = gpsReceived.gpsPerformedAt;
                    }
                    String str6 = str4;
                    String str7 = str5;
                    Double d5 = d3;
                    Double d6 = d4;
                    Double d7 = d2;
                    String str8 = str3;
                    return gpsReceived.copy(str, str2, str8, d, d7, d5, d6, str6, str7);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final Double getGpsLatitude() {
                    return this.gpsLatitude;
                }

                /* JADX INFO: renamed from: component5, reason: from getter */
                public final Double getGpsLongitude() {
                    return this.gpsLongitude;
                }

                /* JADX INFO: renamed from: component6, reason: from getter */
                public final Double getGpsAccuracy() {
                    return this.gpsAccuracy;
                }

                /* JADX INFO: renamed from: component7, reason: from getter */
                public final Double getGpsAltitude() {
                    return this.gpsAltitude;
                }

                /* JADX INFO: renamed from: component8, reason: from getter */
                public final String getGpsAltitudeAccuracy() {
                    return this.gpsAltitudeAccuracy;
                }

                /* JADX INFO: renamed from: component9, reason: from getter */
                public final String getGpsPerformedAt() {
                    return this.gpsPerformedAt;
                }

                public final GpsReceived copy(String name, String userRole, String performedAt, Double gpsLatitude, Double gpsLongitude, Double gpsAccuracy, Double gpsAltitude, String gpsAltitudeAccuracy, String gpsPerformedAt) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    gpsPerformedAt.getClass();
                    return new GpsReceived(name, userRole, performedAt, gpsLatitude, gpsLongitude, gpsAccuracy, gpsAltitude, gpsAltitudeAccuracy, gpsPerformedAt);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof GpsReceived)) {
                        return false;
                    }
                    GpsReceived gpsReceived = (GpsReceived) other;
                    return Intrinsics.c(this.name, gpsReceived.name) && Intrinsics.c(this.userRole, gpsReceived.userRole) && Intrinsics.c(this.performedAt, gpsReceived.performedAt) && Intrinsics.c(this.gpsLatitude, gpsReceived.gpsLatitude) && Intrinsics.c(this.gpsLongitude, gpsReceived.gpsLongitude) && Intrinsics.c(this.gpsAccuracy, gpsReceived.gpsAccuracy) && Intrinsics.c(this.gpsAltitude, gpsReceived.gpsAltitude) && Intrinsics.c(this.gpsAltitudeAccuracy, gpsReceived.gpsAltitudeAccuracy) && Intrinsics.c(this.gpsPerformedAt, gpsReceived.gpsPerformedAt);
                }

                public final Double getGpsAccuracy() {
                    return this.gpsAccuracy;
                }

                public final Double getGpsAltitude() {
                    return this.gpsAltitude;
                }

                public final String getGpsAltitudeAccuracy() {
                    return this.gpsAltitudeAccuracy;
                }

                public final Double getGpsLatitude() {
                    return this.gpsLatitude;
                }

                public final Double getGpsLongitude() {
                    return this.gpsLongitude;
                }

                public final String getGpsPerformedAt() {
                    return this.gpsPerformedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    int iB = fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                    Double d = this.gpsLatitude;
                    int iHashCode = (iB + (d == null ? 0 : d.hashCode())) * 31;
                    Double d2 = this.gpsLongitude;
                    int iHashCode2 = (iHashCode + (d2 == null ? 0 : d2.hashCode())) * 31;
                    Double d3 = this.gpsAccuracy;
                    int iHashCode3 = (iHashCode2 + (d3 == null ? 0 : d3.hashCode())) * 31;
                    Double d4 = this.gpsAltitude;
                    int iHashCode4 = (iHashCode3 + (d4 == null ? 0 : d4.hashCode())) * 31;
                    String str = this.gpsAltitudeAccuracy;
                    return this.gpsPerformedAt.hashCode() + ((iHashCode4 + (str != null ? str.hashCode() : 0)) * 31);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    Double d = this.gpsLatitude;
                    Double d2 = this.gpsLongitude;
                    Double d3 = this.gpsAccuracy;
                    Double d4 = this.gpsAltitude;
                    String str4 = this.gpsAltitudeAccuracy;
                    String str5 = this.gpsPerformedAt;
                    StringBuilder sbS = fc.s("GpsReceived(name=", str, ", userRole=", str2, ", performedAt=");
                    sbS.append(str3);
                    sbS.append(", gpsLatitude=");
                    sbS.append(d);
                    sbS.append(", gpsLongitude=");
                    sbS.append(d2);
                    sbS.append(", gpsAccuracy=");
                    sbS.append(d3);
                    sbS.append(", gpsAltitude=");
                    sbS.append(d4);
                    sbS.append(", gpsAltitudeAccuracy=");
                    sbS.append(str4);
                    sbS.append(", gpsPerformedAt=");
                    return n00.r(str5, ")", sbS);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$HostConnected;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "userSid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getUserSid", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class HostConnected extends Item {
                private final String name;
                private final String performedAt;
                private final String userRole;
                private final String userSid;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public HostConnected(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.userSid = str4;
                }

                public static /* synthetic */ HostConnected copy$default(HostConnected hostConnected, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = hostConnected.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = hostConnected.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = hostConnected.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = hostConnected.userSid;
                    }
                    return hostConnected.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getUserSid() {
                    return this.userSid;
                }

                public final HostConnected copy(String name, String userRole, String performedAt, String userSid) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    userSid.getClass();
                    return new HostConnected(name, userRole, performedAt, userSid);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof HostConnected)) {
                        return false;
                    }
                    HostConnected hostConnected = (HostConnected) other;
                    return Intrinsics.c(this.name, hostConnected.name) && Intrinsics.c(this.userRole, hostConnected.userRole) && Intrinsics.c(this.performedAt, hostConnected.performedAt) && Intrinsics.c(this.userSid, hostConnected.userSid);
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public final String getUserSid() {
                    return this.userSid;
                }

                public int hashCode() {
                    return this.userSid.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("HostConnected(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", userSid=", this.userSid, ")");
                }
            }

            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "", "name", "", "userRole", "performedAt", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static abstract class Item {

                @SerializedName("name")
                private final String name;

                @SerializedName("performedAt")
                private final String performedAt;

                @SerializedName("userRole")
                private final String userRole;

                public Item(String str, String str2, String str3) {
                    cj.z(str, str2, str3);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                }

                public String getName() {
                    return this.name;
                }

                public String getPerformedAt() {
                    return this.performedAt;
                }

                public String getUserRole() {
                    return this.userRole;
                }
            }

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013JN\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0014\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0083\u0004J\n\u0010 \u001a\u00020!HÖ\u0081\u0004J\n\u0010\"\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006#"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "userUid", "userSid", "analytics", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getUserUid", "getUserSid", "getAnalytics", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;", "equals", "other", "", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class UserConnected extends Item {
                private final Boolean analytics;
                private final String name;
                private final String performedAt;
                private final String userRole;
                private final String userSid;
                private final String userUid;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public UserConnected(String str, String str2, String str3, String str4, String str5, Boolean bool) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str5);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.userUid = str4;
                    this.userSid = str5;
                    this.analytics = bool;
                }

                public static /* synthetic */ UserConnected copy$default(UserConnected userConnected, String str, String str2, String str3, String str4, String str5, Boolean bool, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = userConnected.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = userConnected.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = userConnected.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = userConnected.userUid;
                    }
                    if ((i2 & 16) != 0) {
                        str5 = userConnected.userSid;
                    }
                    if ((i2 & 32) != 0) {
                        bool = userConnected.analytics;
                    }
                    String str6 = str5;
                    Boolean bool2 = bool;
                    return userConnected.copy(str, str2, str3, str4, str6, bool2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getUserUid() {
                    return this.userUid;
                }

                /* JADX INFO: renamed from: component5, reason: from getter */
                public final String getUserSid() {
                    return this.userSid;
                }

                /* JADX INFO: renamed from: component6, reason: from getter */
                public final Boolean getAnalytics() {
                    return this.analytics;
                }

                public final UserConnected copy(String name, String userRole, String performedAt, String userUid, String userSid, Boolean analytics) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    userSid.getClass();
                    return new UserConnected(name, userRole, performedAt, userUid, userSid, analytics);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof UserConnected)) {
                        return false;
                    }
                    UserConnected userConnected = (UserConnected) other;
                    return Intrinsics.c(this.name, userConnected.name) && Intrinsics.c(this.userRole, userConnected.userRole) && Intrinsics.c(this.performedAt, userConnected.performedAt) && Intrinsics.c(this.userUid, userConnected.userUid) && Intrinsics.c(this.userSid, userConnected.userSid) && Intrinsics.c(this.analytics, userConnected.analytics);
                }

                public final Boolean getAnalytics() {
                    return this.analytics;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public final String getUserSid() {
                    return this.userSid;
                }

                public final String getUserUid() {
                    return this.userUid;
                }

                public int hashCode() {
                    int iB = fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                    String str = this.userUid;
                    int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.userSid);
                    Boolean bool = this.analytics;
                    return iB2 + (bool != null ? bool.hashCode() : 0);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    String str4 = this.userUid;
                    String str5 = this.userSid;
                    Boolean bool = this.analytics;
                    StringBuilder sbS = fc.s("UserConnected(name=", str, ", userRole=", str2, ", performedAt=");
                    cj.C(sbS, str3, ", userUid=", str4, ", userSid=");
                    sbS.append(str5);
                    sbS.append(", analytics=");
                    sbS.append(bool);
                    sbS.append(")");
                    return sbS.toString();
                }
            }

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u0007HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "callId", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getCallId", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class UserJoined extends Item {
                private final int callId;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public UserJoined(String str, String str2, String str3, int i2) {
                    super(str, str2, str3);
                    cj.z(str, str2, str3);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.callId = i2;
                }

                public static /* synthetic */ UserJoined copy$default(UserJoined userJoined, String str, String str2, String str3, int i2, int i3, Object obj) {
                    if ((i3 & 1) != 0) {
                        str = userJoined.name;
                    }
                    if ((i3 & 2) != 0) {
                        str2 = userJoined.userRole;
                    }
                    if ((i3 & 4) != 0) {
                        str3 = userJoined.performedAt;
                    }
                    if ((i3 & 8) != 0) {
                        i2 = userJoined.callId;
                    }
                    return userJoined.copy(str, str2, str3, i2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final int getCallId() {
                    return this.callId;
                }

                public final UserJoined copy(String name, String userRole, String performedAt, int callId) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    return new UserJoined(name, userRole, performedAt, callId);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof UserJoined)) {
                        return false;
                    }
                    UserJoined userJoined = (UserJoined) other;
                    return Intrinsics.c(this.name, userJoined.name) && Intrinsics.c(this.userRole, userJoined.userRole) && Intrinsics.c(this.performedAt, userJoined.performedAt) && this.callId == userJoined.callId;
                }

                public final int getCallId() {
                    return this.callId;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return Integer.hashCode(this.callId) + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    String str3 = this.performedAt;
                    int i2 = this.callId;
                    StringBuilder sbS = fc.s("UserJoined(name=", str, ", userRole=", str2, ", performedAt=");
                    sbS.append(str3);
                    sbS.append(", callId=");
                    sbS.append(i2);
                    sbS.append(")");
                    return sbS.toString();
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Attributes(List<? extends Item> list, String str) {
                list.getClass();
                str.getClass();
                this.items = list;
                this.sentAt = str;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Attributes copy$default(Attributes attributes, List list, String str, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    list = attributes.items;
                }
                if ((i2 & 2) != 0) {
                    str = attributes.sentAt;
                }
                return attributes.copy(list, str);
            }

            public final List<Item> component1() {
                return this.items;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getSentAt() {
                return this.sentAt;
            }

            public final Attributes copy(List<? extends Item> items, String sentAt) {
                items.getClass();
                sentAt.getClass();
                return new Attributes(items, sentAt);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.items, attributes.items) && Intrinsics.c(this.sentAt, attributes.sentAt);
            }

            public final List<Item> getItems() {
                return this.items;
            }

            public final String getSentAt() {
                return this.sentAt;
            }

            public int hashCode() {
                return this.sentAt.hashCode() + (this.items.hashCode() * 31);
            }

            public String toString() {
                return "Attributes(items=" + this.items + ", sentAt=" + this.sentAt + ")";
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "callEndReason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getCallEndReason", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "CallEndReason", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CallEnded extends Item {
                private final String callEndReason;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CallEnded(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.callEndReason = str4;
                }

                public static /* synthetic */ CallEnded copy$default(CallEnded callEnded, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = callEnded.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = callEnded.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = callEnded.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = callEnded.callEndReason;
                    }
                    return callEnded.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getCallEndReason() {
                    return this.callEndReason;
                }

                public final CallEnded copy(String name, String userRole, String performedAt, String callEndReason) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    callEndReason.getClass();
                    return new CallEnded(name, userRole, performedAt, callEndReason);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof CallEnded)) {
                        return false;
                    }
                    CallEnded callEnded = (CallEnded) other;
                    return Intrinsics.c(this.name, callEnded.name) && Intrinsics.c(this.userRole, callEnded.userRole) && Intrinsics.c(this.performedAt, callEnded.performedAt) && Intrinsics.c(this.callEndReason, callEnded.callEndReason);
                }

                public final String getCallEndReason() {
                    return this.callEndReason;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.callEndReason.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("CallEnded(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", callEndReason=", this.callEndReason, ")");
                }

                @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "NetworkError", "LocalHangup", "RemoteHangup", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$LocalHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$NetworkError;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$RemoteHangup;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static abstract class CallEndReason {
                    private final String value;

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$LocalHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class LocalHangup extends CallEndReason {
                        public static final LocalHangup INSTANCE = new LocalHangup();

                        private LocalHangup() {
                            super("localHangup", null);
                        }
                    }

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$NetworkError;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class NetworkError extends CallEndReason {
                        public static final NetworkError INSTANCE = new NetworkError();

                        private NetworkError() {
                            super("networkError", null);
                        }
                    }

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$RemoteHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class RemoteHangup extends CallEndReason {
                        public static final RemoteHangup INSTANCE = new RemoteHangup();

                        private RemoteHangup() {
                            super("remoteHangup", null);
                        }
                    }

                    private CallEndReason(String str) {
                        this.value = str;
                    }

                    public final String getValue() {
                        return this.value;
                    }

                    public /* synthetic */ CallEndReason(String str, DefaultConstructorMarker defaultConstructorMarker) {
                        this(str);
                    }
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "failureEndReason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getFailureEndReason", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "CallFailedReason", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CallFailed extends Item {
                private final String failureEndReason;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CallFailed(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.failureEndReason = str4;
                }

                public static /* synthetic */ CallFailed copy$default(CallFailed callFailed, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = callFailed.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = callFailed.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = callFailed.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = callFailed.failureEndReason;
                    }
                    return callFailed.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getFailureEndReason() {
                    return this.failureEndReason;
                }

                public final CallFailed copy(String name, String userRole, String performedAt, String failureEndReason) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    failureEndReason.getClass();
                    return new CallFailed(name, userRole, performedAt, failureEndReason);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof CallFailed)) {
                        return false;
                    }
                    CallFailed callFailed = (CallFailed) other;
                    return Intrinsics.c(this.name, callFailed.name) && Intrinsics.c(this.userRole, callFailed.userRole) && Intrinsics.c(this.performedAt, callFailed.performedAt) && Intrinsics.c(this.failureEndReason, callFailed.failureEndReason);
                }

                public final String getFailureEndReason() {
                    return this.failureEndReason;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.failureEndReason.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("CallFailed(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", failureEndReason=", this.failureEndReason, ")");
                }

                @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "DeadParty", "Unexpected", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$DeadParty;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$Unexpected;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static abstract class CallFailedReason {
                    private final String value;

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$DeadParty;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class DeadParty extends CallFailedReason {
                        public static final DeadParty INSTANCE = new DeadParty();

                        private DeadParty() {
                            super("deadParty", null);
                        }
                    }

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$Unexpected;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class Unexpected extends CallFailedReason {
                        public static final Unexpected INSTANCE = new Unexpected();

                        private Unexpected() {
                            super("unexpected", null);
                        }
                    }

                    private CallFailedReason(String str) {
                        this.value = str;
                    }

                    public final String getValue() {
                        return this.value;
                    }

                    public /* synthetic */ CallFailedReason(String str, DefaultConstructorMarker defaultConstructorMarker) {
                        this(str);
                    }
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;", "name", "", "userRole", "performedAt", "callEndReason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUserRole", "getPerformedAt", "getCallEndReason", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLeftReason", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class UserLeft extends Item {
                private final String callEndReason;
                private final String name;
                private final String performedAt;
                private final String userRole;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public UserLeft(String str, String str2, String str3, String str4) {
                    super(str, str2, str3);
                    d21.y(str, str2, str3, str4);
                    this.name = str;
                    this.userRole = str2;
                    this.performedAt = str3;
                    this.callEndReason = str4;
                }

                public static /* synthetic */ UserLeft copy$default(UserLeft userLeft, String str, String str2, String str3, String str4, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = userLeft.name;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = userLeft.userRole;
                    }
                    if ((i2 & 4) != 0) {
                        str3 = userLeft.performedAt;
                    }
                    if ((i2 & 8) != 0) {
                        str4 = userLeft.callEndReason;
                    }
                    return userLeft.copy(str, str2, str3, str4);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getUserRole() {
                    return this.userRole;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getPerformedAt() {
                    return this.performedAt;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getCallEndReason() {
                    return this.callEndReason;
                }

                public final UserLeft copy(String name, String userRole, String performedAt, String callEndReason) {
                    name.getClass();
                    userRole.getClass();
                    performedAt.getClass();
                    callEndReason.getClass();
                    return new UserLeft(name, userRole, performedAt, callEndReason);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof UserLeft)) {
                        return false;
                    }
                    UserLeft userLeft = (UserLeft) other;
                    return Intrinsics.c(this.name, userLeft.name) && Intrinsics.c(this.userRole, userLeft.userRole) && Intrinsics.c(this.performedAt, userLeft.performedAt) && Intrinsics.c(this.callEndReason, userLeft.callEndReason);
                }

                public final String getCallEndReason() {
                    return this.callEndReason;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getName() {
                    return this.name;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getPerformedAt() {
                    return this.performedAt;
                }

                @Override // com.sightcall.universal.internal.report.data.entities.CaseReportV3Request.Data.Attributes.Item
                public String getUserRole() {
                    return this.userRole;
                }

                public int hashCode() {
                    return this.callEndReason.hashCode() + fc.b(fc.b(this.name.hashCode() * 31, 31, this.userRole), 31, this.performedAt);
                }

                public String toString() {
                    String str = this.name;
                    String str2 = this.userRole;
                    return tr.l(fc.s("UserLeft(name=", str, ", userRole=", str2, ", performedAt="), this.performedAt, ", callEndReason=", this.callEndReason, ")");
                }

                @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LocalHangup", "RemoteHangup", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$LocalHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$RemoteHangup;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static abstract class UserLeftReason {
                    private final String value;

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$LocalHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class LocalHangup extends UserLeftReason {
                        public static final LocalHangup INSTANCE = new LocalHangup();

                        private LocalHangup() {
                            super("localHangup", null);
                        }
                    }

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$RemoteHangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                    public static final class RemoteHangup extends UserLeftReason {
                        public static final RemoteHangup INSTANCE = new RemoteHangup();

                        private RemoteHangup() {
                            super("remoteHangup", null);
                        }
                    }

                    private UserLeftReason(String str) {
                        this.value = str;
                    }

                    public final String getValue() {
                        return this.value;
                    }

                    public /* synthetic */ UserLeftReason(String str, DefaultConstructorMarker defaultConstructorMarker) {
                        this(str);
                    }
                }
            }
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships;", "", "caseReport", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;", "<init>", "(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;)V", "getCaseReport", "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "CaseReport", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Relationships {

            @SerializedName("caseReport")
            private final CaseReport caseReport;

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

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;", "<init>", "(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;)V", "getData", "()Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "CaseReportData", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CaseReport {

                @SerializedName(DbParams.KEY_DATA)
                private final CaseReportData data;

                public CaseReport(CaseReportData caseReportData) {
                    caseReportData.getClass();
                    this.data = caseReportData;
                }

                public static /* synthetic */ CaseReport copy$default(CaseReport caseReport, CaseReportData caseReportData, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        caseReportData = caseReport.data;
                    }
                    return caseReport.copy(caseReportData);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final CaseReportData getData() {
                    return this.data;
                }

                public final CaseReport copy(CaseReportData data) {
                    data.getClass();
                    return new CaseReport(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof CaseReport) && Intrinsics.c(this.data, ((CaseReport) other).data);
                }

                public final CaseReportData getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "CaseReport(data=" + this.data + ")";
                }

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Relationships$CaseReport$CaseReportData;", "", "type", "", b.a.f24015b, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class CaseReportData {

                    @SerializedName(b.a.f24015b)
                    private final String id;

                    @SerializedName("type")
                    private final String type;

                    public CaseReportData(String str, String str2) {
                        str.getClass();
                        str2.getClass();
                        this.type = str;
                        this.id = str2;
                    }

                    public static /* synthetic */ CaseReportData copy$default(CaseReportData caseReportData, String str, String str2, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            str = caseReportData.type;
                        }
                        if ((i2 & 2) != 0) {
                            str2 = caseReportData.id;
                        }
                        return caseReportData.copy(str, str2);
                    }

                    /* JADX INFO: renamed from: component1, reason: from getter */
                    public final String getType() {
                        return this.type;
                    }

                    /* JADX INFO: renamed from: component2, reason: from getter */
                    public final String getId() {
                        return this.id;
                    }

                    public final CaseReportData copy(String type, String id) {
                        type.getClass();
                        id.getClass();
                        return new CaseReportData(type, id);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof CaseReportData)) {
                            return false;
                        }
                        CaseReportData caseReportData = (CaseReportData) other;
                        return Intrinsics.c(this.type, caseReportData.type) && Intrinsics.c(this.id, caseReportData.id);
                    }

                    public final String getId() {
                        return this.id;
                    }

                    public final String getType() {
                        return this.type;
                    }

                    public int hashCode() {
                        return this.id.hashCode() + (this.type.hashCode() * 31);
                    }

                    public String toString() {
                        return d21.l("CaseReportData(type=", this.type, ", id=", this.id, ")");
                    }

                    public /* synthetic */ CaseReportData(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i2 & 1) != 0 ? "caseReports" : str, str2);
                    }
                }
            }
        }

        public /* synthetic */ Data(String str, Attributes attributes, Relationships relationships, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "caseReportEventsArrays" : str, attributes, relationships);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "AnnotationsChanged", "AnnotationsErased", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class AnnotationsConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsChanged;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class AnnotationsChanged extends AnnotationsConstants {
            public static final AnnotationsChanged INSTANCE = new AnnotationsChanged();

            private AnnotationsChanged() {
                super("annotationsChanged", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants$AnnotationsErased;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$AnnotationsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class AnnotationsErased extends AnnotationsConstants {
            public static final AnnotationsErased INSTANCE = new AnnotationsErased();

            private AnnotationsErased() {
                super("annotationsErased", null);
            }
        }

        private AnnotationsConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ AnnotationsConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\b\t\n\u000b\fB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0005\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "CallFailed", "CallEnded", "Hangup", "CallRequestAccepted", "CallRequestDeclined", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallEnded;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallFailed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class CallConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallEnded;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CallEnded extends CallConstants {
            public static final CallEnded INSTANCE = new CallEnded();

            private CallEnded() {
                super("callEnded", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallFailed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CallFailed extends CallConstants {
            public static final CallFailed INSTANCE = new CallFailed();

            private CallFailed() {
                super("callFailed", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CallRequestAccepted extends CallConstants {
            public static final CallRequestAccepted INSTANCE = new CallRequestAccepted();

            private CallRequestAccepted() {
                super("callRequestAccepted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$CallRequestDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CallRequestDeclined extends CallConstants {
            public static final CallRequestDeclined INSTANCE = new CallRequestDeclined();

            private CallRequestDeclined() {
                super("callRequestDeclined", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants$Hangup;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CallConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Hangup extends CallConstants {
            public static final Hangup INSTANCE = new Hangup();

            private Hangup() {
                super("hangup", null);
            }
        }

        private CallConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ CallConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0012\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0012\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+¨\u0006,"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RemoteCameraStartRequested", "CameraStartRequested", "CameraStarted", "RemoteCameraStopRequested", "CameraStopRequested", "CameraStopped", "RemoteCameraFrontRequested", "CameraFrontRequested", "CameraSetToFront", "RemoteCameraRearRequested", "CameraRearRequested", "CameraSetToRear", "RemoteCameraPauseRequested", "CameraPauseRequested", "CameraPaused", "RemoteCameraResumeRequested", "CameraResumeRequested", "CameraResumed", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraFrontRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraPauseRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraRearRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraResumeRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStopRequested;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class CameraConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraFrontRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraFrontRequested extends CameraConstants {
            public static final CameraFrontRequested INSTANCE = new CameraFrontRequested();

            private CameraFrontRequested() {
                super("cameraFrontRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPauseRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraPauseRequested extends CameraConstants {
            public static final CameraPauseRequested INSTANCE = new CameraPauseRequested();

            private CameraPauseRequested() {
                super("cameraPauseRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraPaused;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraPaused extends CameraConstants {
            public static final CameraPaused INSTANCE = new CameraPaused();

            private CameraPaused() {
                super("cameraPaused", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraRearRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraRearRequested extends CameraConstants {
            public static final CameraRearRequested INSTANCE = new CameraRearRequested();

            private CameraRearRequested() {
                super("cameraRearRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumeRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraResumeRequested extends CameraConstants {
            public static final CameraResumeRequested INSTANCE = new CameraResumeRequested();

            private CameraResumeRequested() {
                super("cameraResumeRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraResumed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraResumed extends CameraConstants {
            public static final CameraResumed INSTANCE = new CameraResumed();

            private CameraResumed() {
                super("cameraResumed", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToFront;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraSetToFront extends CameraConstants {
            public static final CameraSetToFront INSTANCE = new CameraSetToFront();

            private CameraSetToFront() {
                super("cameraSetToFront", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraSetToRear;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraSetToRear extends CameraConstants {
            public static final CameraSetToRear INSTANCE = new CameraSetToRear();

            private CameraSetToRear() {
                super("cameraSetToRear", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraStartRequested extends CameraConstants {
            public static final CameraStartRequested INSTANCE = new CameraStartRequested();

            private CameraStartRequested() {
                super("cameraStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraStarted extends CameraConstants {
            public static final CameraStarted INSTANCE = new CameraStarted();

            private CameraStarted() {
                super("cameraStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraStopRequested extends CameraConstants {
            public static final CameraStopRequested INSTANCE = new CameraStopRequested();

            private CameraStopRequested() {
                super("cameraStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$CameraStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class CameraStopped extends CameraConstants {
            public static final CameraStopped INSTANCE = new CameraStopped();

            private CameraStopped() {
                super("cameraStopped", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraFrontRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraFrontRequested extends CameraConstants {
            public static final RemoteCameraFrontRequested INSTANCE = new RemoteCameraFrontRequested();

            private RemoteCameraFrontRequested() {
                super("remoteCameraFrontRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraPauseRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraPauseRequested extends CameraConstants {
            public static final RemoteCameraPauseRequested INSTANCE = new RemoteCameraPauseRequested();

            private RemoteCameraPauseRequested() {
                super("remoteCameraPauseRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraRearRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraRearRequested extends CameraConstants {
            public static final RemoteCameraRearRequested INSTANCE = new RemoteCameraRearRequested();

            private RemoteCameraRearRequested() {
                super("remoteCameraRearRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraResumeRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraResumeRequested extends CameraConstants {
            public static final RemoteCameraResumeRequested INSTANCE = new RemoteCameraResumeRequested();

            private RemoteCameraResumeRequested() {
                super("remoteCameraResumeRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraStartRequested extends CameraConstants {
            public static final RemoteCameraStartRequested INSTANCE = new RemoteCameraStartRequested();

            private RemoteCameraStartRequested() {
                super("remoteCameraStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants$RemoteCameraStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$CameraConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteCameraStopRequested extends CameraConstants {
            public static final RemoteCameraStopRequested INSTANCE = new RemoteCameraStopRequested();

            private RemoteCameraStopRequested() {
                super("remoteCameraStopRequested", null);
            }
        }

        private CameraConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ CameraConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ChatMessageSent", "ChatMessageReceived", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageSent;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ChatConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ChatMessageReceived extends ChatConstants {
            public static final ChatMessageReceived INSTANCE = new ChatMessageReceived();

            private ChatMessageReceived() {
                super("chatMessageReceived", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants$ChatMessageSent;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ChatConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ChatMessageSent extends ChatConstants {
            public static final ChatMessageSent INSTANCE = new ChatMessageSent();

            private ChatMessageSent() {
                super("chatMessageSent", null);
            }
        }

        private ChatConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ ChatConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ConsentAccepted", "ConsentDeclined", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentDeclined;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ConsentModeConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ConsentAccepted extends ConsentModeConstants {
            public static final ConsentAccepted INSTANCE = new ConsentAccepted();

            private ConsentAccepted() {
                super("consentAccepted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants$ConsentDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ConsentModeConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ConsentDeclined extends ConsentModeConstants {
            public static final ConsentDeclined INSTANCE = new ConsentDeclined();

            private ConsentDeclined() {
                super("consentDeclined", null);
            }
        }

        private ConsentModeConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ ConsentModeConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "DisplayNameSet", "DisplayNameSkipped", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSet;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSkipped;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class DisplayNameConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSet;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class DisplayNameSet extends DisplayNameConstants {
            public static final DisplayNameSet INSTANCE = new DisplayNameSet();

            private DisplayNameSet() {
                super("displayNameSet", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants$DisplayNameSkipped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$DisplayNameConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class DisplayNameSkipped extends DisplayNameConstants {
            public static final DisplayNameSkipped INSTANCE = new DisplayNameSkipped();

            private DisplayNameSkipped() {
                super("displayNameSkipped", null);
            }
        }

        private DisplayNameConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ DisplayNameConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\b\t\n\u000bB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0004\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "GpsRequested", "GpsAccepted", "GpsDeclined", "GpsReceived", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsRequested;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class GpsConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsAccepted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class GpsAccepted extends GpsConstants {
            public static final GpsAccepted INSTANCE = new GpsAccepted();

            private GpsAccepted() {
                super("gpsAccepted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsDeclined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class GpsDeclined extends GpsConstants {
            public static final GpsDeclined INSTANCE = new GpsDeclined();

            private GpsDeclined() {
                super("gpsDeclined", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsReceived;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class GpsReceived extends GpsConstants {
            public static final GpsReceived INSTANCE = new GpsReceived();

            private GpsReceived() {
                super("gpsReceived", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants$GpsRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$GpsConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class GpsRequested extends GpsConstants {
            public static final GpsRequested INSTANCE = new GpsRequested();

            private GpsRequested() {
                super("gpsRequested", null);
            }
        }

        private GpsConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ GpsConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LiveTranslationSessionStarted", "LiveTranslationSessionStopped", "LiveTranslationSessionError", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class LiveTranslation {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class LiveTranslationSessionError extends LiveTranslation {
            public static final LiveTranslationSessionError INSTANCE = new LiveTranslationSessionError();

            private LiveTranslationSessionError() {
                super("liveTranslationSessionError", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class LiveTranslationSessionStarted extends LiveTranslation {
            public static final LiveTranslationSessionStarted INSTANCE = new LiveTranslationSessionStarted();

            private LiveTranslationSessionStarted() {
                super("liveTranslationSessionStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class LiveTranslationSessionStopped extends LiveTranslation {
            public static final LiveTranslationSessionStopped INSTANCE = new LiveTranslationSessionStopped();

            private LiveTranslationSessionStopped() {
                super("liveTranslationSessionStopped", null);
            }
        }

        private LiveTranslation(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ LiveTranslation(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\b\t\n\u000b\f\rB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0006\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RemoteMicroStartRequested", "RemoteMicroStopRequested", "MicroStartRequested", "MicroStarted", "MicroStopRequested", "MicroStopped", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStopRequested;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class MicroConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class MicroStartRequested extends MicroConstants {
            public static final MicroStartRequested INSTANCE = new MicroStartRequested();

            private MicroStartRequested() {
                super("microStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class MicroStarted extends MicroConstants {
            public static final MicroStarted INSTANCE = new MicroStarted();

            private MicroStarted() {
                super("microStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class MicroStopRequested extends MicroConstants {
            public static final MicroStopRequested INSTANCE = new MicroStopRequested();

            private MicroStopRequested() {
                super("microStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$MicroStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class MicroStopped extends MicroConstants {
            public static final MicroStopped INSTANCE = new MicroStopped();

            private MicroStopped() {
                super("microStopped", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteMicroStartRequested extends MicroConstants {
            public static final RemoteMicroStartRequested INSTANCE = new RemoteMicroStartRequested();

            private RemoteMicroStartRequested() {
                super("remoteMicroStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants$RemoteMicroStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$MicroConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteMicroStopRequested extends MicroConstants {
            public static final RemoteMicroStopRequested INSTANCE = new RemoteMicroStopRequested();

            private RemoteMicroStopRequested() {
                super("remoteMicroStopRequested", null);
            }
        }

        private MicroConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ MicroConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\b\t\n\u000bB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0004\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RecordingStarted", "RecordingEnded", "RecordingPaused", "RecordingResumed", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingEnded;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingPaused;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingResumed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingStarted;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class RecordingConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingEnded;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RecordingEnded extends RecordingConstants {
            public static final RecordingEnded INSTANCE = new RecordingEnded();

            private RecordingEnded() {
                super("recordingEnded", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingPaused;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RecordingPaused extends RecordingConstants {
            public static final RecordingPaused INSTANCE = new RecordingPaused();

            private RecordingPaused() {
                super("recordingPaused", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingResumed;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RecordingResumed extends RecordingConstants {
            public static final RecordingResumed INSTANCE = new RecordingResumed();

            private RecordingResumed() {
                super("recordingResumed", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants$RecordingStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$RecordingConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RecordingStarted extends RecordingConstants {
            public static final RecordingStarted INSTANCE = new RecordingStarted();

            private RecordingStarted() {
                super("recordingStarted", null);
            }
        }

        private RecordingConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ RecordingConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\b\t\n\u000b\f\rB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0006\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RemoteScreencastStartRequested", "ScreencastStartRequested", "ScreencastStarted", "RemoteScreencastStopRequested", "ScreencastStopRequested", "ScreencastStopped", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ScreencastConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteScreencastStartRequested extends ScreencastConstants {
            public static final RemoteScreencastStartRequested INSTANCE = new RemoteScreencastStartRequested();

            private RemoteScreencastStartRequested() {
                super("remoteScreencastStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$RemoteScreencastStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteScreencastStopRequested extends ScreencastConstants {
            public static final RemoteScreencastStopRequested INSTANCE = new RemoteScreencastStopRequested();

            private RemoteScreencastStopRequested() {
                super("remoteScreencastStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ScreencastStartRequested extends ScreencastConstants {
            public static final ScreencastStartRequested INSTANCE = new ScreencastStartRequested();

            private ScreencastStartRequested() {
                super("shareStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ScreencastStarted extends ScreencastConstants {
            public static final ScreencastStarted INSTANCE = new ScreencastStarted();

            private ScreencastStarted() {
                super("screencastStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ScreencastStopRequested extends ScreencastConstants {
            public static final ScreencastStopRequested INSTANCE = new ScreencastStopRequested();

            private ScreencastStopRequested() {
                super("screencastStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants$ScreencastStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ScreencastConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ScreencastStopped extends ScreencastConstants {
            public static final ScreencastStopped INSTANCE = new ScreencastStopped();

            private ScreencastStopped() {
                super("screencastStopped", null);
            }
        }

        private ScreencastConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ ScreencastConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\b\t\n\u000b\f\r\u000eB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0007\u000f\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ShareStartRequested", "ShareStarted", "ShareStopRequested", "ShareStopped", "RemoteGalleryStartRequested", "ShareSaved", "RemotePickerRequested", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemoteGalleryStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemotePickerRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareSaved;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ShareConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemoteGalleryStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteGalleryStartRequested extends ShareConstants {
            public static final RemoteGalleryStartRequested INSTANCE = new RemoteGalleryStartRequested();

            private RemoteGalleryStartRequested() {
                super("remoteGalleryStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$RemotePickerRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemotePickerRequested extends ShareConstants {
            public static final RemotePickerRequested INSTANCE = new RemotePickerRequested();

            private RemotePickerRequested() {
                super("remotePickerRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareSaved;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareSaved extends ShareConstants {
            public static final ShareSaved INSTANCE = new ShareSaved();

            private ShareSaved() {
                super("shareSaved", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareStartRequested extends ShareConstants {
            public static final ShareStartRequested INSTANCE = new ShareStartRequested();

            private ShareStartRequested() {
                super("shareStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareStarted extends ShareConstants {
            public static final ShareStarted INSTANCE = new ShareStarted();

            private ShareStarted() {
                super("shareStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareStopRequested extends ShareConstants {
            public static final ShareStopRequested INSTANCE = new ShareStopRequested();

            private ShareStopRequested() {
                super("shareStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareStopped extends ShareConstants {
            public static final ShareStopped INSTANCE = new ShareStopped();

            private ShareStopped() {
                super("shareStopped", null);
            }
        }

        private ShareConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ ShareConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RemoteSnapshotRequested", "SnapshotStarted", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$RemoteSnapshotRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$SnapshotStarted;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SnapshotConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$RemoteSnapshotRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteSnapshotRequested extends SnapshotConstants {
            public static final RemoteSnapshotRequested INSTANCE = new RemoteSnapshotRequested();

            private RemoteSnapshotRequested() {
                super("remoteSnapshotRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants$SnapshotStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$SnapshotConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class SnapshotStarted extends SnapshotConstants {
            public static final SnapshotStarted INSTANCE = new SnapshotStarted();

            private SnapshotStarted() {
                super("snapshotStarted", null);
            }
        }

        private SnapshotConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ SnapshotConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\b\t\n\u000b\f\rB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0006\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "RemoteTorchStartRequested", "TorchStartRequested", "TorchStarted", "RemoteTorchStopRequested", "TorchStopRequested", "TorchStopped", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class TorchConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteTorchStartRequested extends TorchConstants {
            public static final RemoteTorchStartRequested INSTANCE = new RemoteTorchStartRequested();

            private RemoteTorchStartRequested() {
                super("remoteTorchStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$RemoteTorchStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class RemoteTorchStopRequested extends TorchConstants {
            public static final RemoteTorchStopRequested INSTANCE = new RemoteTorchStopRequested();

            private RemoteTorchStopRequested() {
                super("remoteTorchStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStartRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TorchStartRequested extends TorchConstants {
            public static final TorchStartRequested INSTANCE = new TorchStartRequested();

            private TorchStartRequested() {
                super("torchStartRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStarted;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TorchStarted extends TorchConstants {
            public static final TorchStarted INSTANCE = new TorchStarted();

            private TorchStarted() {
                super("torchStarted", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TorchStopRequested extends TorchConstants {
            public static final TorchStopRequested INSTANCE = new TorchStopRequested();

            private TorchStopRequested() {
                super("torchStopRequested", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants$TorchStopped;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$TorchConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TorchStopped extends TorchConstants {
            public static final TorchStopped INSTANCE = new TorchStopped();

            private TorchStopped() {
                super("torchStopped", null);
            }
        }

        private TorchConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ TorchConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "UserConnected", "UserJoined", "UserLeft", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserLeft;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class UserConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserConnected;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class UserConnected extends UserConstants {
            public static final UserConnected INSTANCE = new UserConnected();

            private UserConnected() {
                super("userConnected", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserJoined;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class UserJoined extends UserConstants {
            public static final UserJoined INSTANCE = new UserJoined();

            private UserJoined() {
                super("userJoined", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants$UserLeft;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$UserConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class UserLeft extends UserConstants {
            public static final UserLeft INSTANCE = new UserLeft();

            private UserLeft() {
                super("userLeft", null);
            }
        }

        private UserConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ UserConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\bB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0001\t¨\u0006\n"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "VideoSaveRequested", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants$VideoSaveRequested;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class VideoSaveConstants {
        private final String value;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants$VideoSaveRequested;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$VideoSaveConstants;", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class VideoSaveRequested extends VideoSaveConstants {
            public static final VideoSaveRequested INSTANCE = new VideoSaveRequested();

            private VideoSaveRequested() {
                super("videoSaveRequested", null);
            }
        }

        private VideoSaveConstants(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public /* synthetic */ VideoSaveConstants(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }
}
