package com.sightcall.session.datasource.reference.v3.switchRole;

import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.Reason;
import com.sightcall.session.datasource.reference.v3.Type;
import com.sightcall.session.datasource.reference.v3.UserRole;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;)V", "getData", "()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "Companion", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReferenceSwitchRequestEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    public ReferenceSwitchRequestEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ ReferenceSwitchRequestEntity copy$default(ReferenceSwitchRequestEntity referenceSwitchRequestEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = referenceSwitchRequestEntity.data;
        }
        return referenceSwitchRequestEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final ReferenceSwitchRequestEntity copy(Data data) {
        data.getClass();
        return new ReferenceSwitchRequestEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReferenceSwitchRequestEntity) && Intrinsics.c(this.data, ((ReferenceSwitchRequestEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "ReferenceSwitchRequestEntity(data=" + this.data + ")";
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;", "", "<init>", "()V", "create", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;", "userRole", "Lcom/sightcall/session/datasource/reference/v3/UserRole;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final ReferenceSwitchRequestEntity create(UserRole userRole) {
            userRole.getClass();
            return new ReferenceSwitchRequestEntity(new Data(new Data.Attributes(userRole, null, 2, 0 == true ? 1 : 0)));
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;", "", l.f24145h, "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;)V", "getAttributes", "()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;", "type", "Lcom/sightcall/session/datasource/reference/v3/Type;", "getType", "()Lcom/sightcall/session/datasource/reference/v3/Type;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Attributes", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
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

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;", "", "userRole", "Lcom/sightcall/session/datasource/reference/v3/UserRole;", "reason", "Lcom/sightcall/session/datasource/reference/v3/Reason;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/UserRole;Lcom/sightcall/session/datasource/reference/v3/Reason;)V", "getUserRole", "()Lcom/sightcall/session/datasource/reference/v3/UserRole;", "getReason", "()Lcom/sightcall/session/datasource/reference/v3/Reason;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("reason")
            private final Reason reason;

            @SerializedName("userRole")
            private final UserRole userRole;

            public Attributes(UserRole userRole, Reason reason) {
                userRole.getClass();
                reason.getClass();
                this.userRole = userRole;
                this.reason = reason;
            }

            public static /* synthetic */ Attributes copy$default(Attributes attributes, UserRole userRole, Reason reason, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    userRole = attributes.userRole;
                }
                if ((i2 & 2) != 0) {
                    reason = attributes.reason;
                }
                return attributes.copy(userRole, reason);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final UserRole getUserRole() {
                return this.userRole;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Reason getReason() {
                return this.reason;
            }

            public final Attributes copy(UserRole userRole, Reason reason) {
                userRole.getClass();
                reason.getClass();
                return new Attributes(userRole, reason);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return this.userRole == attributes.userRole && this.reason == attributes.reason;
            }

            public final Reason getReason() {
                return this.reason;
            }

            public final UserRole getUserRole() {
                return this.userRole;
            }

            public int hashCode() {
                return this.reason.hashCode() + (this.userRole.hashCode() * 31);
            }

            public String toString() {
                return "Attributes(userRole=" + this.userRole + ", reason=" + this.reason + ")";
            }

            public /* synthetic */ Attributes(UserRole userRole, Reason reason, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(userRole, (i2 & 2) != 0 ? Reason.Switch : reason);
            }
        }
    }
}
