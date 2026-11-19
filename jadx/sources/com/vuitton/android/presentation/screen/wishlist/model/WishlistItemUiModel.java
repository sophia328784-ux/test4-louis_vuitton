package com.vuitton.android.presentation.screen.wishlist.model;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "name", "image", "price", "", "isVisible", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65741c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f65743f;

    /* JADX WARN: Illegal instructions before constructor call */
    public WishlistItemUiModel(String str, String str2, String str3, String str4, String str5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            WishlistIdUiModel.f65737c.getClass();
            str = WishlistIdUiModel.d;
        }
        this(str, str2, str3, str4, str5, (i2 & 32) != 0 ? true : z, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistItemUiModel)) {
            return false;
        }
        WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) obj;
        String str = wishlistItemUiModel.f65739a;
        WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
        if (!Intrinsics.c(this.f65739a, str)) {
            return false;
        }
        String str2 = wishlistItemUiModel.f65740b;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f65740b, str2) && Intrinsics.c(this.f65741c, wishlistItemUiModel.f65741c) && Intrinsics.c(this.d, wishlistItemUiModel.d) && Intrinsics.c(this.f65742e, wishlistItemUiModel.f65742e) && this.f65743f == wishlistItemUiModel.f65743f;
    }

    public final int hashCode() {
        WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
        int iHashCode = this.f65739a.hashCode() * 31;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        return Boolean.hashCode(this.f65743f) + fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.f65740b), 31, this.f65741c), 31, this.d), 31, this.f65742e);
    }

    public final String toString() {
        String strA = WishlistIdUiModel.a(this.f65739a);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("WishlistItemUiModel(identifier=", strA, ", skuId=", this.f65740b, ", name=");
        cj.C(sbS, this.f65741c, ", image=", this.d, ", price=");
        sbS.append(this.f65742e);
        sbS.append(", isVisible=");
        sbS.append(this.f65743f);
        sbS.append(")");
        return sbS.toString();
    }

    public WishlistItemUiModel(String str, String str2, String str3, String str4, String str5, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str2, str3, str4, str5);
        this.f65739a = str;
        this.f65740b = str2;
        this.f65741c = str3;
        this.d = str4;
        this.f65742e = str5;
        this.f65743f = z;
    }
}
