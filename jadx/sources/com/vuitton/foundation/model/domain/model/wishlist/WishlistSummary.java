package com.vuitton.foundation.model.domain.model.wishlist;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;", "", "", "size", "", "lastItemImage", "<init>", "(ILjava/lang/String;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistSummary {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f68291c = new Companion(null);
    public static final WishlistSummary d = new WishlistSummary(0, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68293b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WishlistSummary(int i2, String str) {
        this.f68292a = i2;
        this.f68293b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistSummary)) {
            return false;
        }
        WishlistSummary wishlistSummary = (WishlistSummary) obj;
        return this.f68292a == wishlistSummary.f68292a && Intrinsics.c(this.f68293b, wishlistSummary.f68293b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f68292a) * 31;
        String str = this.f68293b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "WishlistSummary(size=" + this.f68292a + ", lastItemImage=" + this.f68293b + ")";
    }
}
