package com.vuitton.foundation.model.domain.model.account.orders;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;", "validation", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;", "steps", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Timeline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Validation f66340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66341b;

    public Timeline(Validation validation, List<DeliveryState> list) {
        validation.getClass();
        list.getClass();
        this.f66340a = validation;
        this.f66341b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        return this.f66340a == timeline.f66340a && Intrinsics.c(this.f66341b, timeline.f66341b);
    }

    public final int hashCode() {
        return this.f66341b.hashCode() + (this.f66340a.hashCode() * 31);
    }

    public final String toString() {
        return "Timeline(validation=" + this.f66340a + ", steps=" + this.f66341b + ")";
    }
}
