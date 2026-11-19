package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartInfo;", "", "", "backOrderStatus", "", "quantity", "price", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "productSkus", "currency", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class CartInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f55139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55141c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55142e;

    public CartInfo(Boolean bool, String str, String str2, List<SkuId> list, String str3) {
        str.getClass();
        str2.getClass();
        list.getClass();
        str3.getClass();
        this.f55139a = bool;
        this.f55140b = str;
        this.f55141c = str2;
        this.d = list;
        this.f55142e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartInfo)) {
            return false;
        }
        CartInfo cartInfo = (CartInfo) obj;
        return Intrinsics.c(this.f55139a, cartInfo.f55139a) && Intrinsics.c(this.f55140b, cartInfo.f55140b) && Intrinsics.c(this.f55141c, cartInfo.f55141c) && Intrinsics.c(this.d, cartInfo.d) && Intrinsics.c(this.f55142e, cartInfo.f55142e);
    }

    public final int hashCode() {
        Boolean bool = this.f55139a;
        return this.f55142e.hashCode() + n00.a(fc.b(fc.b((bool == null ? 0 : bool.hashCode()) * 31, 31, this.f55140b), 31, this.f55141c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartInfo(backOrderStatus=");
        sb.append(this.f55139a);
        sb.append(", quantity=");
        sb.append(this.f55140b);
        sb.append(", price=");
        d21.z(this.f55141c, ", productSkus=", ", currency=", sb, this.d);
        return n00.r(this.f55142e, ")", sb);
    }
}
