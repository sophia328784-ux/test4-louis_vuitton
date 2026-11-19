package com.vuitton.foundation.model.domain.model.analytics;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;", "", "", "itemListId", "itemListName", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "itemId", "itemName", "", "price", "currency", "", "position", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ViewItemListTrackingValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66536c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Double f66537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66538f;
    public final int g;

    public ViewItemListTrackingValue(String str, String str2, String str3, String str4, Double d, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str4);
        this.f66534a = str;
        this.f66535b = str2;
        this.f66536c = str3;
        this.d = str4;
        this.f66537e = d;
        this.f66538f = str5;
        this.g = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewItemListTrackingValue)) {
            return false;
        }
        ViewItemListTrackingValue viewItemListTrackingValue = (ViewItemListTrackingValue) obj;
        if (!this.f66534a.equals(viewItemListTrackingValue.f66534a) || !this.f66535b.equals(viewItemListTrackingValue.f66535b)) {
            return false;
        }
        String str = viewItemListTrackingValue.f66536c;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66536c.equals(str) && this.d.equals(viewItemListTrackingValue.d) && Intrinsics.c(this.f66537e, viewItemListTrackingValue.f66537e) && Intrinsics.c(this.f66538f, viewItemListTrackingValue.f66538f) && this.g == viewItemListTrackingValue.g;
    }

    public final int hashCode() {
        int iB = fc.b(this.f66534a.hashCode() * 31, 31, this.f66535b);
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = fc.b(fc.b(iB, 31, this.f66536c), 31, this.d);
        Double d = this.f66537e;
        int iHashCode = (iB2 + (d == null ? 0 : d.hashCode())) * 31;
        String str = this.f66538f;
        return Integer.hashCode(this.g) + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ViewItemListTrackingValue(itemListId=", this.f66534a, ", itemListName=", this.f66535b, ", itemId=");
        cj.C(sbS, this.f66536c, ", itemName=", this.d, ", price=");
        sbS.append(this.f66537e);
        sbS.append(", currency=");
        sbS.append(this.f66538f);
        sbS.append(", position=");
        return a.i(this.g, ")", sbS);
    }
}
