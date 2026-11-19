package com.vuitton.foundation.model.domain.model.analytics;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;", "", "", "itemListId", "itemListName", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "itemId", "itemName", "", "price", "", "position", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectItemTrackingValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66529c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Double f66530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f66531f;

    public SelectItemTrackingValue(String str, String str2, String str3, String str4, Double d, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str4);
        this.f66527a = str;
        this.f66528b = str2;
        this.f66529c = str3;
        this.d = str4;
        this.f66530e = d;
        this.f66531f = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectItemTrackingValue)) {
            return false;
        }
        SelectItemTrackingValue selectItemTrackingValue = (SelectItemTrackingValue) obj;
        if (!this.f66527a.equals(selectItemTrackingValue.f66527a) || !this.f66528b.equals(selectItemTrackingValue.f66528b)) {
            return false;
        }
        String str = selectItemTrackingValue.f66529c;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66529c.equals(str) && this.d.equals(selectItemTrackingValue.d) && Intrinsics.c(this.f66530e, selectItemTrackingValue.f66530e) && this.f66531f == selectItemTrackingValue.f66531f;
    }

    public final int hashCode() {
        int iB = fc.b(this.f66527a.hashCode() * 31, 31, this.f66528b);
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = fc.b(fc.b(iB, 31, this.f66529c), 31, this.d);
        Double d = this.f66530e;
        return Integer.hashCode(this.f66531f) + ((iB2 + (d == null ? 0 : d.hashCode())) * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("SelectItemTrackingValue(itemListId=", this.f66527a, ", itemListName=", this.f66528b, ", itemId=");
        cj.C(sbS, this.f66529c, ", itemName=", this.d, ", price=");
        sbS.append(this.f66530e);
        sbS.append(", position=");
        sbS.append(this.f66531f);
        sbS.append(")");
        return sbS.toString();
    }
}
