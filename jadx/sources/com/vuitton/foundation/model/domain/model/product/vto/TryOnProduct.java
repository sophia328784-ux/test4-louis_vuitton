package com.vuitton.foundation.model.domain.model.product.vto;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "vtoId", "Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;", "type", "stackingType", "", "isDualEnabled", "name", "Lcom/vuitton/foundation/model/domain/model/product/vto/Color;", "color", "", "Lcom/vuitton/foundation/model/domain/model/product/vto/Look;", "looks", "hasTutorial", "isLimitedEdition", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/Color;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TryOnProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BeautyProductType f68083c;
    public final BeautyProductType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f68084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68085f;
    public final Color g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f68086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f68087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f68088j;

    public TryOnProduct(String str, String str2, BeautyProductType beautyProductType, BeautyProductType beautyProductType2, boolean z, String str3, Color color, List list, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        beautyProductType.getClass();
        str3.getClass();
        color.getClass();
        this.f68081a = str;
        this.f68082b = str2;
        this.f68083c = beautyProductType;
        this.d = beautyProductType2;
        this.f68084e = z;
        this.f68085f = str3;
        this.g = color;
        this.f68086h = list;
        this.f68087i = z2;
        this.f68088j = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TryOnProduct)) {
            return false;
        }
        TryOnProduct tryOnProduct = (TryOnProduct) obj;
        String str = tryOnProduct.f68081a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f68081a.equals(str) && this.f68082b.equals(tryOnProduct.f68082b) && this.f68083c == tryOnProduct.f68083c && this.d == tryOnProduct.d && this.f68084e == tryOnProduct.f68084e && this.f68085f.equals(tryOnProduct.f68085f) && this.g.equals(tryOnProduct.g) && Intrinsics.c(this.f68086h, tryOnProduct.f68086h) && this.f68087i == tryOnProduct.f68087i && this.f68088j == tryOnProduct.f68088j;
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = (this.f68083c.hashCode() + fc.b(this.f68081a.hashCode() * 31, 31, this.f68082b)) * 31;
        BeautyProductType beautyProductType = this.d;
        int iHashCode2 = (this.g.hashCode() + fc.b(o60.b((iHashCode + (beautyProductType == null ? 0 : beautyProductType.hashCode())) * 31, 31, this.f68084e), 31, this.f68085f)) * 31;
        List list = this.f68086h;
        return Boolean.hashCode(this.f68088j) + o60.b((iHashCode2 + (list != null ? list.hashCode() : 0)) * 31, 31, this.f68087i);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("TryOnProduct(sku=", this.f68081a, ", vtoId=", this.f68082b, ", type=");
        sbS.append(this.f68083c);
        sbS.append(", stackingType=");
        sbS.append(this.d);
        sbS.append(", isDualEnabled=");
        cj.A(", name=", this.f68085f, ", color=", sbS, this.f68084e);
        sbS.append(this.g);
        sbS.append(", looks=");
        sbS.append(this.f68086h);
        sbS.append(", hasTutorial=");
        return pq0.p(sbS, this.f68087i, ", isLimitedEdition=", this.f68088j, ")");
    }
}
