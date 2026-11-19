package com.vuitton.foundation.model.domain.model.dynamicyield;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "slotId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DYRecommendation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67561b;

    public DYRecommendation(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f67560a = str;
        this.f67561b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DYRecommendation)) {
            return false;
        }
        DYRecommendation dYRecommendation = (DYRecommendation) obj;
        String str = dYRecommendation.f67560a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67560a.equals(str) && this.f67561b.equals(dYRecommendation.f67561b);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67561b.hashCode() + (this.f67560a.hashCode() * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return d21.l("DYRecommendation(sku=", this.f67560a, ", slotId=", this.f67561b, ")");
    }
}
