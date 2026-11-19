package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.cj;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;", "", "", "title", "", "Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;", "recommendations", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShadeFinderResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f68080b;

    public ShadeFinderResponse(String str, List<Recommendation> list) {
        str.getClass();
        list.getClass();
        this.f68079a = str;
        this.f68080b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeFinderResponse)) {
            return false;
        }
        ShadeFinderResponse shadeFinderResponse = (ShadeFinderResponse) obj;
        return Intrinsics.c(this.f68079a, shadeFinderResponse.f68079a) && Intrinsics.c(this.f68080b, shadeFinderResponse.f68080b);
    }

    public final int hashCode() {
        return this.f68080b.hashCode() + (this.f68079a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("ShadeFinderResponse(title=", this.f68079a, ", recommendations=", this.f68080b, ")");
    }
}
