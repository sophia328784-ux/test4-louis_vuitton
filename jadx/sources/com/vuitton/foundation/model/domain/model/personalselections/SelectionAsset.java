package com.vuitton.foundation.model.domain.model.personalselections;

import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionAsset;", "", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "annotation", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "relatedSkus", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Asset f67806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67808c;

    public SelectionAsset(Asset asset, String str, List<SkuId> list) {
        asset.getClass();
        list.getClass();
        this.f67806a = asset;
        this.f67807b = str;
        this.f67808c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionAsset)) {
            return false;
        }
        SelectionAsset selectionAsset = (SelectionAsset) obj;
        return Intrinsics.c(this.f67806a, selectionAsset.f67806a) && Intrinsics.c(this.f67807b, selectionAsset.f67807b) && Intrinsics.c(this.f67808c, selectionAsset.f67808c);
    }

    public final int hashCode() {
        int iHashCode = this.f67806a.hashCode() * 31;
        String str = this.f67807b;
        return this.f67808c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionAsset(asset=");
        sb.append(this.f67806a);
        sb.append(", annotation=");
        sb.append(this.f67807b);
        sb.append(", relatedSkus=");
        return a.o(sb, this.f67808c, ")");
    }
}
