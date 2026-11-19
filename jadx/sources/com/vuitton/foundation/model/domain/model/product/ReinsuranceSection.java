package com.vuitton.foundation.model.domain.model.product;

import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012.\u0010\u0007\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004`\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;", "", "Ljava/util/HashMap;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;", "", "Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;", "Lkotlin/collections/HashMap;", "reinsuranceList", "<init>", "(Ljava/util/HashMap;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReinsuranceSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f67931a;

    public ReinsuranceSection(HashMap<ReinsurancePageType, List<Reinsurance>> map) {
        map.getClass();
        this.f67931a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ReinsuranceSection) && Intrinsics.c(this.f67931a, ((ReinsuranceSection) obj).f67931a);
    }

    public final int hashCode() {
        return this.f67931a.hashCode();
    }

    public final String toString() {
        return "ReinsuranceSection(reinsuranceList=" + this.f67931a + ")";
    }
}
