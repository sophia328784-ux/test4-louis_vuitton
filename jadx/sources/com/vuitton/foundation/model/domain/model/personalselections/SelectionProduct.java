package com.vuitton.foundation.model.domain.model.personalselections;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "imageURL", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;", "interaction", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67811c;
    public final SelectionProductInteraction d;

    public SelectionProduct(String str, String str2, String str3, SelectionProductInteraction selectionProductInteraction, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f67809a = str;
        this.f67810b = str2;
        this.f67811c = str3;
        this.d = selectionProductInteraction;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionProduct)) {
            return false;
        }
        SelectionProduct selectionProduct = (SelectionProduct) obj;
        String str = selectionProduct.f67809a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67809a.equals(str) && this.f67810b.equals(selectionProduct.f67810b) && this.f67811c.equals(selectionProduct.f67811c) && Intrinsics.c(this.d, selectionProduct.d);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(fc.b(this.f67809a.hashCode() * 31, 31, this.f67810b), 31, this.f67811c);
        SelectionProductInteraction selectionProductInteraction = this.d;
        return iB + (selectionProductInteraction == null ? 0 : selectionProductInteraction.hashCode());
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("SelectionProduct(sku=", this.f67809a, ", name=", this.f67810b, ", imageURL=");
        sbS.append(this.f67811c);
        sbS.append(", interaction=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
