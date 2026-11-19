package com.vuitton.android.presentation.screen.wishlist.model;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "", "WishlistScreen", "WishlistSharedScreen", "ShareWishlistEvent", "SwipeToDeleteEvent", "ConfirmDeleteEvent", "SharedWishlistProductClickEvent", "OpenMyLVEvent", "ShareWishlistSuccessEvent", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistScreen;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistSharedScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WishlistTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmDeleteEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65747a;

        public ConfirmDeleteEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f65747a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfirmDeleteEvent)) {
                return false;
            }
            String str = ((ConfirmDeleteEvent) obj).f65747a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65747a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65747a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ConfirmDeleteEvent(productSku=", this.f65747a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyLVEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyLVEvent f65748a = new OpenMyLVEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyLVEvent);
        }

        public final int hashCode() {
            return 31914422;
        }

        public final String toString() {
            return "OpenMyLVEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareWishlistEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShareWishlistEvent f65749a = new ShareWishlistEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShareWishlistEvent);
        }

        public final int hashCode() {
            return 1292826330;
        }

        public final String toString() {
            return "ShareWishlistEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareWishlistSuccessEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShareWishlistSuccessEvent f65750a = new ShareWishlistSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShareWishlistSuccessEvent);
        }

        public final int hashCode() {
            return 1658519575;
        }

        public final String toString() {
            return "ShareWishlistSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SharedWishlistProductClickEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65751a;

        public SharedWishlistProductClickEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f65751a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SharedWishlistProductClickEvent)) {
                return false;
            }
            String str = ((SharedWishlistProductClickEvent) obj).f65751a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65751a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65751a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("SharedWishlistProductClickEvent(productSku=", this.f65751a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SwipeToDeleteEvent implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65752a;

        public SwipeToDeleteEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f65752a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SwipeToDeleteEvent)) {
                return false;
            }
            String str = ((SwipeToDeleteEvent) obj).f65752a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65752a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65752a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("SwipeToDeleteEvent(productSku=", this.f65752a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistScreen;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WishlistScreen implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WishlistScreen f65753a = new WishlistScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WishlistScreen);
        }

        public final int hashCode() {
            return 544252213;
        }

        public final String toString() {
            return "WishlistScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistSharedScreen;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "productSkus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WishlistSharedScreen implements WishlistTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f65754a;

        public WishlistSharedScreen(List<SkuId> list) {
            list.getClass();
            this.f65754a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WishlistSharedScreen) && Intrinsics.c(this.f65754a, ((WishlistSharedScreen) obj).f65754a);
        }

        public final int hashCode() {
            return this.f65754a.hashCode();
        }

        public final String toString() {
            return d21.o("WishlistSharedScreen(productSkus=", ")", this.f65754a);
        }
    }
}
