package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.sightcall.universal.agent.Product;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;", "", "", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", Product.TYPE, "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;", "imageStyle", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;", "displayStyle", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductListData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyle f67681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductDisplayStyle f67682c;

    public ImmersiveArticleProductListData(List<ProductTiny> list, ImmersiveArticleProductImageStyle immersiveArticleProductImageStyle, ImmersiveArticleProductDisplayStyle immersiveArticleProductDisplayStyle) {
        list.getClass();
        immersiveArticleProductImageStyle.getClass();
        immersiveArticleProductDisplayStyle.getClass();
        this.f67680a = list;
        this.f67681b = immersiveArticleProductImageStyle;
        this.f67682c = immersiveArticleProductDisplayStyle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductListData)) {
            return false;
        }
        ImmersiveArticleProductListData immersiveArticleProductListData = (ImmersiveArticleProductListData) obj;
        return Intrinsics.c(this.f67680a, immersiveArticleProductListData.f67680a) && this.f67681b == immersiveArticleProductListData.f67681b && this.f67682c == immersiveArticleProductListData.f67682c;
    }

    public final int hashCode() {
        return this.f67682c.hashCode() + ((this.f67681b.hashCode() + (this.f67680a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ImmersiveArticleProductListData(products=" + this.f67680a + ", imageStyle=" + this.f67681b + ", displayStyle=" + this.f67682c + ")";
    }
}
