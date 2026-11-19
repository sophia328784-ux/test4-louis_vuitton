package com.sightcall.capabilities.datasource.rtcc.entities;

import com.batch.android.s.b;
import com.google.gson.annotations.SerializedName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ0\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;", "", b.a.f24015b, "", "uid", "update", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getId", "()Ljava/lang/String;", "getUid", "getUpdate", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;", "equals", "other", "hashCode", "", "toString", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CapabilitiesRequestEntity {

    @SerializedName(b.a.f24015b)
    private final String id;

    @SerializedName("uid")
    private final String uid;

    @SerializedName("update")
    private final Boolean update;

    public CapabilitiesRequestEntity(String str, String str2, Boolean bool) {
        str.getClass();
        this.id = str;
        this.uid = str2;
        this.update = bool;
    }

    public static /* synthetic */ CapabilitiesRequestEntity copy$default(CapabilitiesRequestEntity capabilitiesRequestEntity, String str, String str2, Boolean bool, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = capabilitiesRequestEntity.id;
        }
        if ((i2 & 2) != 0) {
            str2 = capabilitiesRequestEntity.uid;
        }
        if ((i2 & 4) != 0) {
            bool = capabilitiesRequestEntity.update;
        }
        return capabilitiesRequestEntity.copy(str, str2, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Boolean getUpdate() {
        return this.update;
    }

    public final CapabilitiesRequestEntity copy(String id, String uid, Boolean update) {
        id.getClass();
        return new CapabilitiesRequestEntity(id, uid, update);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CapabilitiesRequestEntity)) {
            return false;
        }
        CapabilitiesRequestEntity capabilitiesRequestEntity = (CapabilitiesRequestEntity) other;
        return Intrinsics.c(this.id, capabilitiesRequestEntity.id) && Intrinsics.c(this.uid, capabilitiesRequestEntity.uid) && Intrinsics.c(this.update, capabilitiesRequestEntity.update);
    }

    public final String getId() {
        return this.id;
    }

    public final String getUid() {
        return this.uid;
    }

    public final Boolean getUpdate() {
        return this.update;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.uid;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.update;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        String str = this.id;
        String str2 = this.uid;
        Boolean bool = this.update;
        StringBuilder sbS = fc.s("CapabilitiesRequestEntity(id=", str, ", uid=", str2, ", update=");
        sbS.append(bool);
        sbS.append(")");
        return sbS.toString();
    }
}
