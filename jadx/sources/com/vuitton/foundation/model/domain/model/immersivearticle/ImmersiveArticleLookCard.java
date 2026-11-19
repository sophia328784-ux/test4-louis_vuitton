package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleLookCard;", "", "", ConfigurationName.KEY, "title", "subtitle", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;", "skuType", "", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "assets", "", "isShopTheLook", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleLookCard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67672c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LookSkuType f67673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f67674f;
    public final boolean g;

    public ImmersiveArticleLookCard(String str, String str2, String str3, String str4, LookSkuType lookSkuType, List list, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str4);
        this.f67670a = str;
        this.f67671b = str2;
        this.f67672c = str3;
        this.d = str4;
        this.f67673e = lookSkuType;
        this.f67674f = list;
        this.g = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleLookCard)) {
            return false;
        }
        ImmersiveArticleLookCard immersiveArticleLookCard = (ImmersiveArticleLookCard) obj;
        if (!this.f67670a.equals(immersiveArticleLookCard.f67670a) || !this.f67671b.equals(immersiveArticleLookCard.f67671b) || !this.f67672c.equals(immersiveArticleLookCard.f67672c)) {
            return false;
        }
        String str = immersiveArticleLookCard.d;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.d.equals(str) && this.f67673e == immersiveArticleLookCard.f67673e && Intrinsics.c(this.f67674f, immersiveArticleLookCard.f67674f) && this.g == immersiveArticleLookCard.g;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f67670a.hashCode() * 31, 31, this.f67671b), 31, this.f67672c);
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = fc.b(iB, 31, this.d);
        LookSkuType lookSkuType = this.f67673e;
        int iHashCode = (iB2 + (lookSkuType == null ? 0 : lookSkuType.hashCode())) * 31;
        List list = this.f67674f;
        return Boolean.hashCode(this.g) + ((iHashCode + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ImmersiveArticleLookCard(key=", this.f67670a, ", title=", this.f67671b, ", subtitle=");
        cj.C(sbS, this.f67672c, ", sku=", this.d, ", skuType=");
        sbS.append(this.f67673e);
        sbS.append(", assets=");
        sbS.append(this.f67674f);
        sbS.append(", isShopTheLook=");
        return a.p(sbS, this.g, ")");
    }
}
