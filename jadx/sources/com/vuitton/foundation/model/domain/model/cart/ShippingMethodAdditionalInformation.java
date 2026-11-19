package com.vuitton.foundation.model.domain.model.cart;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;", "", "", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShippingMethodAdditionalInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66998b;

    public ShippingMethodAdditionalInformation(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66997a = str;
        this.f66998b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingMethodAdditionalInformation)) {
            return false;
        }
        ShippingMethodAdditionalInformation shippingMethodAdditionalInformation = (ShippingMethodAdditionalInformation) obj;
        return Intrinsics.c(this.f66997a, shippingMethodAdditionalInformation.f66997a) && Intrinsics.c(this.f66998b, shippingMethodAdditionalInformation.f66998b);
    }

    public final int hashCode() {
        return this.f66998b.hashCode() + (this.f66997a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("ShippingMethodAdditionalInformation(title=", this.f66997a, ", description=", this.f66998b, ")");
    }
}
