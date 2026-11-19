package com.vuitton.android.presentation.redirectlink;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"com/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skusProductsList", "", "date", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LinkEffect$Navigation$Direct$Common$ToSharedWishlist implements LinkEffect.Navigation.Direct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f51964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51965b;

    public LinkEffect$Navigation$Direct$Common$ToSharedWishlist(List<SkuId> list, String str) {
        list.getClass();
        this.f51964a = list;
        this.f51965b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkEffect$Navigation$Direct$Common$ToSharedWishlist)) {
            return false;
        }
        LinkEffect$Navigation$Direct$Common$ToSharedWishlist linkEffect$Navigation$Direct$Common$ToSharedWishlist = (LinkEffect$Navigation$Direct$Common$ToSharedWishlist) obj;
        return Intrinsics.c(this.f51964a, linkEffect$Navigation$Direct$Common$ToSharedWishlist.f51964a) && Intrinsics.c(this.f51965b, linkEffect$Navigation$Direct$Common$ToSharedWishlist.f51965b);
    }

    public final int hashCode() {
        int iHashCode = this.f51964a.hashCode() * 31;
        String str = this.f51965b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ToSharedWishlist(skusProductsList=" + this.f51964a + ", date=" + this.f51965b + ")";
    }
}
