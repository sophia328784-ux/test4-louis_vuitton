package com.vuitton.foundation.model.domain.model.wishlist;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;", "", "Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "name", "image", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68286c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68287e;

    public WishlistItem(String str, String str2, String str3, String str4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str2, str3, str4, str5);
        this.f68284a = str;
        this.f68285b = str2;
        this.f68286c = str3;
        this.d = str4;
        this.f68287e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistItem)) {
            return false;
        }
        WishlistItem wishlistItem = (WishlistItem) obj;
        String str = wishlistItem.f68284a;
        WishlistItemId.Companion companion = WishlistItemId.f68288b;
        if (!this.f68284a.equals(str)) {
            return false;
        }
        String str2 = wishlistItem.f68285b;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return this.f68285b.equals(str2) && this.f68286c.equals(wishlistItem.f68286c) && this.d.equals(wishlistItem.d) && this.f68287e.equals(wishlistItem.f68287e);
    }

    public final int hashCode() {
        WishlistItemId.Companion companion = WishlistItemId.f68288b;
        int iHashCode = this.f68284a.hashCode() * 31;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return this.f68287e.hashCode() + fc.b(fc.b(fc.b(iHashCode, 31, this.f68285b), 31, this.f68286c), 31, this.d);
    }

    public final String toString() {
        String strA = WishlistItemId.a(this.f68284a);
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("WishlistItem(identifier=", strA, ", skuId=", this.f68285b, ", name=");
        cj.C(sbS, this.f68286c, ", image=", this.d, ", price=");
        return n00.r(this.f68287e, ")", sbS);
    }
}
