package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;", "", "", "rate", "", "message", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutFeedback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f66939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66940b;

    public CheckoutFeedback(Integer num, String str) {
        this.f66939a = num;
        this.f66940b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutFeedback)) {
            return false;
        }
        CheckoutFeedback checkoutFeedback = (CheckoutFeedback) obj;
        return Intrinsics.c(this.f66939a, checkoutFeedback.f66939a) && Intrinsics.c(this.f66940b, checkoutFeedback.f66940b);
    }

    public final int hashCode() {
        Integer num = this.f66939a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f66940b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "CheckoutFeedback(rate=" + this.f66939a + ", message=" + this.f66940b + ")";
    }
}
