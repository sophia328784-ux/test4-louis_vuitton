package com.vuitton.foundation.model.domain.model.product.availability;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;", "place", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GetProductAvailabilityInStoreParam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlaceGeocoding f67940b;

    public GetProductAvailabilityInStoreParam(String str, PlaceGeocoding placeGeocoding, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        placeGeocoding.getClass();
        this.f67939a = str;
        this.f67940b = placeGeocoding;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetProductAvailabilityInStoreParam)) {
            return false;
        }
        GetProductAvailabilityInStoreParam getProductAvailabilityInStoreParam = (GetProductAvailabilityInStoreParam) obj;
        String str = getProductAvailabilityInStoreParam.f67939a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67939a.equals(str) && this.f67940b.equals(getProductAvailabilityInStoreParam.f67940b);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67940b.hashCode() + (this.f67939a.hashCode() * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return "GetProductAvailabilityInStoreParam(sku=" + this.f67939a + ", place=" + this.f67940b + ")";
    }
}
