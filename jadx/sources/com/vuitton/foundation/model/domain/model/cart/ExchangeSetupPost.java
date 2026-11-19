package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "shippingGroupId", "reasonCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeSetupPost {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66956c;

    public ExchangeSetupPost(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f66954a = str;
        this.f66955b = str2;
        this.f66956c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupPost)) {
            return false;
        }
        ExchangeSetupPost exchangeSetupPost = (ExchangeSetupPost) obj;
        String str = exchangeSetupPost.f66954a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66954a.equals(str) && this.f66955b.equals(exchangeSetupPost.f66955b) && this.f66956c.equals(exchangeSetupPost.f66956c);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66956c.hashCode() + fc.b(this.f66954a.hashCode() * 31, 31, this.f66955b);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return n00.r(this.f66956c, ")", fc.s("ExchangeSetupPost(sku=", this.f66954a, ", shippingGroupId=", this.f66955b, ", reasonCode="));
    }
}
