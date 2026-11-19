package com.sightcall.capabilities.datasource.rtcc.entities;

import com.batch.android.s.b;
import com.google.gson.annotations.SerializedName;
import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;", "", b.a.f24015b, "", "addCapabilities", "", "removeCapabilities", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getAddCapabilities", "()Ljava/util/List;", "getRemoveCapabilities", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CapabilitiesUpdateEntity {

    @SerializedName("add")
    private final List<String> addCapabilities;

    @SerializedName("requestId")
    private final String id;

    @SerializedName("remove")
    private final List<String> removeCapabilities;

    public CapabilitiesUpdateEntity(String str, List<String> list, List<String> list2) {
        str.getClass();
        list.getClass();
        list2.getClass();
        this.id = str;
        this.addCapabilities = list;
        this.removeCapabilities = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CapabilitiesUpdateEntity copy$default(CapabilitiesUpdateEntity capabilitiesUpdateEntity, String str, List list, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = capabilitiesUpdateEntity.id;
        }
        if ((i2 & 2) != 0) {
            list = capabilitiesUpdateEntity.addCapabilities;
        }
        if ((i2 & 4) != 0) {
            list2 = capabilitiesUpdateEntity.removeCapabilities;
        }
        return capabilitiesUpdateEntity.copy(str, list, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final List<String> component2() {
        return this.addCapabilities;
    }

    public final List<String> component3() {
        return this.removeCapabilities;
    }

    public final CapabilitiesUpdateEntity copy(String id, List<String> addCapabilities, List<String> removeCapabilities) {
        id.getClass();
        addCapabilities.getClass();
        removeCapabilities.getClass();
        return new CapabilitiesUpdateEntity(id, addCapabilities, removeCapabilities);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CapabilitiesUpdateEntity)) {
            return false;
        }
        CapabilitiesUpdateEntity capabilitiesUpdateEntity = (CapabilitiesUpdateEntity) other;
        return Intrinsics.c(this.id, capabilitiesUpdateEntity.id) && Intrinsics.c(this.addCapabilities, capabilitiesUpdateEntity.addCapabilities) && Intrinsics.c(this.removeCapabilities, capabilitiesUpdateEntity.removeCapabilities);
    }

    public final List<String> getAddCapabilities() {
        return this.addCapabilities;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getRemoveCapabilities() {
        return this.removeCapabilities;
    }

    public int hashCode() {
        return this.removeCapabilities.hashCode() + n00.a(this.id.hashCode() * 31, 31, this.addCapabilities);
    }

    public String toString() {
        String str = this.id;
        List<String> list = this.addCapabilities;
        return a.o(d21.t("CapabilitiesUpdateEntity(id=", str, ", addCapabilities=", list, ", removeCapabilities="), this.removeCapabilities, ")");
    }
}
