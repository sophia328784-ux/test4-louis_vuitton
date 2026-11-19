package com.vuitton.foundation.model.domain.error.cart;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;", "Lcom/vuitton/foundation/model/domain/error/cart/CartError;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MaxSkuQuantityReached extends CartError {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66216c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxSkuQuantityReached(String str) {
        super(str, null);
        str.getClass();
        this.f66216c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MaxSkuQuantityReached) && Intrinsics.c(this.f66216c, ((MaxSkuQuantityReached) obj).f66216c);
    }

    public final int hashCode() {
        return this.f66216c.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return fc.h("MaxSkuQuantityReached(errorMessage=", this.f66216c, ")");
    }
}
