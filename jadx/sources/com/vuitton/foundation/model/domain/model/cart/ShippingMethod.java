package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;", "", "", "title", "description", "", "priceRaw", "disclaimer", "Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;", "additionalInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShippingMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f66995c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShippingMethodAdditionalInformation f66996e;

    public ShippingMethod(String str, String str2, int i2, String str3, ShippingMethodAdditionalInformation shippingMethodAdditionalInformation) {
        str.getClass();
        str2.getClass();
        this.f66993a = str;
        this.f66994b = str2;
        this.f66995c = i2;
        this.d = str3;
        this.f66996e = shippingMethodAdditionalInformation;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingMethod)) {
            return false;
        }
        ShippingMethod shippingMethod = (ShippingMethod) obj;
        return Intrinsics.c(this.f66993a, shippingMethod.f66993a) && Intrinsics.c(this.f66994b, shippingMethod.f66994b) && this.f66995c == shippingMethod.f66995c && Intrinsics.c(this.d, shippingMethod.d) && Intrinsics.c(this.f66996e, shippingMethod.f66996e);
    }

    public final int hashCode() {
        int iB = tr.b(this.f66995c, fc.b(this.f66993a.hashCode() * 31, 31, this.f66994b), 31);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ShippingMethodAdditionalInformation shippingMethodAdditionalInformation = this.f66996e;
        return iHashCode + (shippingMethodAdditionalInformation != null ? shippingMethodAdditionalInformation.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShippingMethod(title=", this.f66993a, ", description=", this.f66994b, ", priceRaw=");
        sbS.append(this.f66995c);
        sbS.append(", disclaimer=");
        sbS.append(this.d);
        sbS.append(", additionalInformation=");
        sbS.append(this.f66996e);
        sbS.append(")");
        return sbS.toString();
    }
}
