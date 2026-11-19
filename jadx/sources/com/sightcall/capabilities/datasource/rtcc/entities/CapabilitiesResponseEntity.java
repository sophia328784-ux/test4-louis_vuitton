package com.sightcall.capabilities.datasource.rtcc.entities;

import com.batch.android.s.b;
import com.google.gson.annotations.SerializedName;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;", "", b.a.f24015b, "", "caps", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getCaps", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CapabilitiesResponseEntity {

    @SerializedName("caps")
    private final List<String> caps;

    @SerializedName("requestId")
    private final String id;

    public CapabilitiesResponseEntity(String str, List<String> list) {
        str.getClass();
        list.getClass();
        this.id = str;
        this.caps = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CapabilitiesResponseEntity copy$default(CapabilitiesResponseEntity capabilitiesResponseEntity, String str, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = capabilitiesResponseEntity.id;
        }
        if ((i2 & 2) != 0) {
            list = capabilitiesResponseEntity.caps;
        }
        return capabilitiesResponseEntity.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final List<String> component2() {
        return this.caps;
    }

    public final CapabilitiesResponseEntity copy(String id, List<String> caps) {
        id.getClass();
        caps.getClass();
        return new CapabilitiesResponseEntity(id, caps);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CapabilitiesResponseEntity)) {
            return false;
        }
        CapabilitiesResponseEntity capabilitiesResponseEntity = (CapabilitiesResponseEntity) other;
        return Intrinsics.c(this.id, capabilitiesResponseEntity.id) && Intrinsics.c(this.caps, capabilitiesResponseEntity.caps);
    }

    public final List<String> getCaps() {
        return this.caps;
    }

    public final String getId() {
        return this.id;
    }

    public int hashCode() {
        return this.caps.hashCode() + (this.id.hashCode() * 31);
    }

    public String toString() {
        return cj.k("CapabilitiesResponseEntity(id=", this.id, ", caps=", this.caps, ")");
    }
}
