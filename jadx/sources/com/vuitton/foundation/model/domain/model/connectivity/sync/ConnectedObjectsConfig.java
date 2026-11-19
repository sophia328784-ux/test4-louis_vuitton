package com.vuitton.foundation.model.domain.model.connectivity.sync;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;", "", "", "", "assets", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;", "sectionHome", "version", "", "configRevision", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;Ljava/lang/String;Ljava/lang/Long;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConnectedObjectsConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SectionHome f67332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67333c;
    public final Long d;

    public /* synthetic */ ConnectedObjectsConfig(List list, SectionHome sectionHome, String str, Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : sectionHome, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : l);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConnectedObjectsConfig)) {
            return false;
        }
        ConnectedObjectsConfig connectedObjectsConfig = (ConnectedObjectsConfig) obj;
        return Intrinsics.c(this.f67331a, connectedObjectsConfig.f67331a) && Intrinsics.c(this.f67332b, connectedObjectsConfig.f67332b) && Intrinsics.c(this.f67333c, connectedObjectsConfig.f67333c) && Intrinsics.c(this.d, connectedObjectsConfig.d);
    }

    public final int hashCode() {
        List list = this.f67331a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        SectionHome sectionHome = this.f67332b;
        int iHashCode2 = (iHashCode + (sectionHome == null ? 0 : sectionHome.hashCode())) * 31;
        String str = this.f67333c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.d;
        return iHashCode3 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "ConnectedObjectsConfig(assets=" + this.f67331a + ", sectionHome=" + this.f67332b + ", version=" + this.f67333c + ", configRevision=" + this.d + ")";
    }

    public ConnectedObjectsConfig(List<String> list, SectionHome sectionHome, String str, Long l) {
        this.f67331a = list;
        this.f67332b = sectionHome;
        this.f67333c = str;
        this.d = l;
    }

    public ConnectedObjectsConfig() {
        this(null, null, null, null, 15, null);
    }
}
