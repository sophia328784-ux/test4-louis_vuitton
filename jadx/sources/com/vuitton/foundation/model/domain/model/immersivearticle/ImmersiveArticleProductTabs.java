package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.batch.android.s.b;
import com.sightcall.universal.agent.Product;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabs;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", Product.TYPE, "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductTabs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67688c;
    public final ImmersiveArticleCta d;

    public ImmersiveArticleProductTabs(String str, String str2, List<ProductTiny> list, ImmersiveArticleCta immersiveArticleCta) {
        pq0.B(str, str2, list);
        this.f67686a = str;
        this.f67687b = str2;
        this.f67688c = list;
        this.d = immersiveArticleCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductTabs)) {
            return false;
        }
        ImmersiveArticleProductTabs immersiveArticleProductTabs = (ImmersiveArticleProductTabs) obj;
        return Intrinsics.c(this.f67686a, immersiveArticleProductTabs.f67686a) && Intrinsics.c(this.f67687b, immersiveArticleProductTabs.f67687b) && Intrinsics.c(this.f67688c, immersiveArticleProductTabs.f67688c) && Intrinsics.c(this.d, immersiveArticleProductTabs.d);
    }

    public final int hashCode() {
        int iA = n00.a(fc.b(this.f67686a.hashCode() * 31, 31, this.f67687b), 31, this.f67688c);
        ImmersiveArticleCta immersiveArticleCta = this.d;
        return iA + (immersiveArticleCta == null ? 0 : immersiveArticleCta.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductTabs(id=", this.f67686a, ", title=", this.f67687b, ", products=");
        sbS.append(this.f67688c);
        sbS.append(", cta=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ImmersiveArticleProductTabs(String str, String str2, List list, ImmersiveArticleCta immersiveArticleCta, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, (i2 & 8) != 0 ? null : immersiveArticleCta);
    }
}
