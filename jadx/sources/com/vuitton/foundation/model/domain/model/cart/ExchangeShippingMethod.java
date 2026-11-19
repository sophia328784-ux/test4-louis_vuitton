package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;", "", "", "additionalInformation", "title", "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeShippingMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeShippingType f66968c;

    public ExchangeShippingMethod(String str, String str2, ExchangeShippingType exchangeShippingType) {
        str2.getClass();
        exchangeShippingType.getClass();
        this.f66966a = str;
        this.f66967b = str2;
        this.f66968c = exchangeShippingType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeShippingMethod)) {
            return false;
        }
        ExchangeShippingMethod exchangeShippingMethod = (ExchangeShippingMethod) obj;
        return Intrinsics.c(this.f66966a, exchangeShippingMethod.f66966a) && Intrinsics.c(this.f66967b, exchangeShippingMethod.f66967b) && this.f66968c == exchangeShippingMethod.f66968c;
    }

    public final int hashCode() {
        String str = this.f66966a;
        return this.f66968c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f66967b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExchangeShippingMethod(additionalInformation=", this.f66966a, ", title=", this.f66967b, ", type=");
        sbS.append(this.f66968c);
        sbS.append(")");
        return sbS.toString();
    }
}
