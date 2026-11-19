package com.vuitton.foundation.model.domain.model.wishlist;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;", "", "", "Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;", "items", "", "shareUrl", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Wishlist {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68283b;

    public Wishlist(List<WishlistItem> list, String str) {
        list.getClass();
        this.f68282a = list;
        this.f68283b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Wishlist)) {
            return false;
        }
        Wishlist wishlist = (Wishlist) obj;
        return Intrinsics.c(this.f68282a, wishlist.f68282a) && Intrinsics.c(this.f68283b, wishlist.f68283b);
    }

    public final int hashCode() {
        int iHashCode = this.f68282a.hashCode() * 31;
        String str = this.f68283b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "Wishlist(items=" + this.f68282a + ", shareUrl=" + this.f68283b + ")";
    }
}
