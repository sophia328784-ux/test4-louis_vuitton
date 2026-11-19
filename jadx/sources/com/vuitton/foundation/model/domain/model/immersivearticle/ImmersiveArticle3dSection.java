package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticle3dSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticle3dSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67628b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticle3dSection(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f67627a = str;
        this.f67628b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticle3dSection)) {
            return false;
        }
        ImmersiveArticle3dSection immersiveArticle3dSection = (ImmersiveArticle3dSection) obj;
        if (!Intrinsics.c(this.f67627a, immersiveArticle3dSection.f67627a)) {
            return false;
        }
        String str = immersiveArticle3dSection.f67628b;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67628b, str);
    }

    public final int hashCode() {
        int iHashCode = this.f67627a.hashCode() * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67628b.hashCode() + iHashCode;
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return d21.l("ImmersiveArticle3dSection(key=", this.f67627a, ", sku=", this.f67628b, ")");
    }
}
