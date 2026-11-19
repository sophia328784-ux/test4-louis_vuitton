package com.vuitton.foundation.model.domain.model.osa;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;", "", "", "Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;", "onGoing", "history", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OnlineStoreAppointments {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67771b;

    public OnlineStoreAppointments(List<OsaItem> list, List<OsaItem> list2) {
        list.getClass();
        list2.getClass();
        this.f67770a = list;
        this.f67771b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnlineStoreAppointments)) {
            return false;
        }
        OnlineStoreAppointments onlineStoreAppointments = (OnlineStoreAppointments) obj;
        return Intrinsics.c(this.f67770a, onlineStoreAppointments.f67770a) && Intrinsics.c(this.f67771b, onlineStoreAppointments.f67771b);
    }

    public final int hashCode() {
        return this.f67771b.hashCode() + (this.f67770a.hashCode() * 31);
    }

    public final String toString() {
        return "OnlineStoreAppointments(onGoing=" + this.f67770a + ", history=" + this.f67771b + ")";
    }
}
