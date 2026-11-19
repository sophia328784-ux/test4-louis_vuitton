package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;", "", "ToProductDetailsPage", "ToCatalogPage", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToCatalogPage;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToProductDetailsPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WishlistDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToCatalogPage;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCatalogPage implements WishlistDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCatalogPage f65609a = new ToCatalogPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCatalogPage);
        }

        public final int hashCode() {
            return 1248096787;
        }

        public final String toString() {
            return "ToCatalogPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToProductDetailsPage;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIdUiModel", "", "rmsCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToProductDetailsPage implements WishlistDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65611b;

        public ToProductDetailsPage(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f65610a = str;
            this.f65611b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToProductDetailsPage)) {
                return false;
            }
            ToProductDetailsPage toProductDetailsPage = (ToProductDetailsPage) obj;
            String str = toProductDetailsPage.f65610a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65610a.equals(str) && Intrinsics.c(this.f65611b, toProductDetailsPage.f65611b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f65610a.hashCode() * 31;
            String str = this.f65611b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("ToProductDetailsPage(skuIdUiModel=", this.f65610a, ", rmsCode=", this.f65611b, ")");
        }
    }
}
