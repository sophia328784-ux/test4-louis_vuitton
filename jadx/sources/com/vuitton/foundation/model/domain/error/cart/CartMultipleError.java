package com.vuitton.foundation.model.domain.error.cart;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "Lcom/vuitton/foundation/model/domain/error/cart/CartError;", "error", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/error/cart/CartError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartMultipleError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartError f66211b;

    public CartMultipleError(String str, CartError cartError, DefaultConstructorMarker defaultConstructorMarker) {
        cartError.getClass();
        this.f66210a = str;
        this.f66211b = cartError;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CartMultipleError) {
                CartMultipleError cartMultipleError = (CartMultipleError) obj;
                String str = cartMultipleError.f66210a;
                String str2 = this.f66210a;
                if (str2 == null) {
                    if (str == null) {
                        zEquals = true;
                    } else {
                        zEquals = false;
                    }
                } else if (str == null) {
                    zEquals = false;
                } else {
                    SkuId.Companion companion = SkuId.INSTANCE;
                    zEquals = str2.equals(str);
                }
                if (zEquals && this.f66211b.equals(cartMultipleError.f66211b)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f66210a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        return this.f66211b.hashCode() + (iHashCode * 31);
    }

    public final String toString() {
        String str = this.f66210a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return "CartMultipleError(skuId=" + str + ", error=" + this.f66211b + ")";
    }
}
