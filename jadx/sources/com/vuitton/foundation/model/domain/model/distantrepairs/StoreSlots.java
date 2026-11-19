package com.vuitton.foundation.model.domain.model.distantrepairs;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;", "", "", "date", "", "Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;", "inStoreSlots", "distantSlots", "storeId", "storeTimeZone", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreSlots {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67539c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67540e;

    public StoreSlots(String str, List<RepairTimeSlot> list, List<RepairTimeSlot> list2, String str2, String str3) {
        str.getClass();
        list.getClass();
        list2.getClass();
        str2.getClass();
        str3.getClass();
        this.f67537a = str;
        this.f67538b = list;
        this.f67539c = list2;
        this.d = str2;
        this.f67540e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreSlots)) {
            return false;
        }
        StoreSlots storeSlots = (StoreSlots) obj;
        return Intrinsics.c(this.f67537a, storeSlots.f67537a) && Intrinsics.c(this.f67538b, storeSlots.f67538b) && Intrinsics.c(this.f67539c, storeSlots.f67539c) && Intrinsics.c(this.d, storeSlots.d) && Intrinsics.c(this.f67540e, storeSlots.f67540e);
    }

    public final int hashCode() {
        return this.f67540e.hashCode() + fc.b(n00.a(n00.a(this.f67537a.hashCode() * 31, 31, this.f67538b), 31, this.f67539c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("StoreSlots(date=", this.f67537a, ", inStoreSlots=", this.f67538b, ", distantSlots=");
        o60.B(", storeId=", this.d, ", storeTimeZone=", sbT, this.f67539c);
        return n00.r(this.f67540e, ")", sbT);
    }
}
