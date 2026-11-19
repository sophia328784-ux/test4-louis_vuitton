package com.vuitton.foundation.model.domain.model.product;

import defpackage.fc;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "identifier", "Ljava/time/LocalDateTime;", "dateTime", "categoryId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LastViewedProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LocalDateTime f67898c;
    public final String d;

    public LastViewedProduct(String str, String str2, LocalDateTime localDateTime, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f67896a = str;
        this.f67897b = str2;
        this.f67898c = localDateTime;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LastViewedProduct)) {
            return false;
        }
        LastViewedProduct lastViewedProduct = (LastViewedProduct) obj;
        String str = lastViewedProduct.f67896a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67896a.equals(str) && this.f67897b.equals(lastViewedProduct.f67897b) && Intrinsics.c(this.f67898c, lastViewedProduct.f67898c) && Intrinsics.c(this.d, lastViewedProduct.d);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f67896a.hashCode() * 31, 31, this.f67897b);
        LocalDateTime localDateTime = this.f67898c;
        int iHashCode = (iB + (localDateTime == null ? 0 : localDateTime.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("LastViewedProduct(skuId=", this.f67896a, ", identifier=", this.f67897b, ", dateTime=");
        sbS.append(this.f67898c);
        sbS.append(", categoryId=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
