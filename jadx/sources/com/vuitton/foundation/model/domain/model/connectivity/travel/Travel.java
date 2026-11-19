package com.vuitton.foundation.model.domain.model.connectivity.travel;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Travel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TravelType f67382b;

    public Travel(String str, TravelType travelType, DefaultConstructorMarker defaultConstructorMarker) {
        this.f67381a = str;
        this.f67382b = travelType;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF67381a() {
        return this.f67381a;
    }
}
