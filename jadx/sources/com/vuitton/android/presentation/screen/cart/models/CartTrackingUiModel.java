package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0016\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0082\u0001\f\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#¨\u0006$À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "", "FullScreen", "SamplesSectionClick", "SamplesSelected", "ProceedToCheckoutClick", "OOSItemClick", "SimpleClickWithCart", "GiftSectionClick", "CartEmptyStartShopping", "SignaturePackagingSectionClick", "SimpleItem", "RemoveItemConfirm", "RemoveItemSucceeded", "RemoveItemFailed", "ChangeQuantityIntention", "ChangeQuantitySucceeded", "ChangeQuantityFailed", "GoToProductClick", "ShoppingBagToggle", "AddToWishlistEvent", "AddToWishlistSuccessEvent", "OpenMyLV", "OpenContactUs", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$FullScreen;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenContactUs;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ProceedToCheckoutClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSectionClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CartTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistEvent implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55164a;

        public AddToWishlistEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55164a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistEvent)) {
                return false;
            }
            String str = ((AddToWishlistEvent) obj).f55164a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55164a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55164a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("AddToWishlistEvent(sku=", this.f55164a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistSuccessEvent implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55165a;

        public AddToWishlistSuccessEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55165a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistSuccessEvent)) {
                return false;
            }
            String str = ((AddToWishlistSuccessEvent) obj).f55165a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55165a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55165a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("AddToWishlistSuccessEvent(sku=", this.f55165a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$CartEmptyStartShopping;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CartEmptyStartShopping extends SimpleClickWithCart {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CartEmptyStartShopping f55166b = new CartEmptyStartShopping("start_shopping", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CartEmptyStartShopping);
        }

        public final int hashCode() {
            return 165315906;
        }

        public final String toString() {
            return "CartEmptyStartShopping";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityFailed;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ChangeQuantityFailed extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeQuantityFailed(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "change_quantity_failed", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityIntention;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ChangeQuantityIntention extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeQuantityIntention(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "change_quantity_intention", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "newQuantity", "", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ChangeQuantitySucceeded extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeQuantitySucceeded(CartItemUiModel cartItemUiModel, String str) {
            super(cartItemUiModel, "change_quantity_succeeded", str, null);
            cartItemUiModel.getClass();
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$FullScreen;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FullScreen implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FullScreen f55167a = new FullScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FullScreen);
        }

        public final int hashCode() {
            return 295298496;
        }

        public final String toString() {
            return "FullScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GiftSectionClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GiftSectionClick extends SimpleClickWithCart {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final GiftSectionClick f55168b = new GiftSectionClick("open_gift_message", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GiftSectionClick);
        }

        public final int hashCode() {
            return 1278611736;
        }

        public final String toString() {
            return "GiftSectionClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GoToProductClick extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GoToProductClick(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "go_to_productsheet", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "cartItem", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OOSItemClick implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CartItemUiModel f55169a;

        public OOSItemClick(CartItemUiModel cartItemUiModel) {
            cartItemUiModel.getClass();
            this.f55169a = cartItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OOSItemClick) && Intrinsics.c(this.f55169a, ((OOSItemClick) obj).f55169a);
        }

        public final int hashCode() {
            return this.f55169a.hashCode();
        }

        public final String toString() {
            return "OOSItemClick(cartItem=" + this.f55169a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenContactUs;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenContactUs implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenContactUs f55170a = new OpenContactUs();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenContactUs);
        }

        public final int hashCode() {
            return 917999535;
        }

        public final String toString() {
            return "OpenContactUs";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyLV implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyLV f55171a = new OpenMyLV();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyLV);
        }

        public final int hashCode() {
            return 506361029;
        }

        public final String toString() {
            return "OpenMyLV";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ProceedToCheckoutClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProceedToCheckoutClick implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ProceedToCheckoutClick f55172a = new ProceedToCheckoutClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ProceedToCheckoutClick);
        }

        public final int hashCode() {
            return 1548639486;
        }

        public final String toString() {
            return "ProceedToCheckoutClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemConfirm;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RemoveItemConfirm extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveItemConfirm(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "remove_intention", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemFailed;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RemoveItemFailed extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveItemFailed(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "remove_failed", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemSucceeded;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "cart", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RemoveItemSucceeded extends SimpleItem {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveItemSucceeded(CartItemUiModel cartItemUiModel) {
            super(cartItemUiModel, "remove_succeded", null, 4, null);
            cartItemUiModel.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSectionClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SamplesSectionClick implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SamplesSectionClick f55173a = new SamplesSectionClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SamplesSectionClick);
        }

        public final int hashCode() {
            return 1775173639;
        }

        public final String toString() {
            return "SamplesSectionClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "", "selectedPerfumeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SamplesSelected implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55174a;

        public SamplesSelected(String str) {
            str.getClass();
            this.f55174a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SamplesSelected) && Intrinsics.c(this.f55174a, ((SamplesSelected) obj).f55174a);
        }

        public final int hashCode() {
            return this.f55174a.hashCode();
        }

        public final String toString() {
            return fc.h("SamplesSelected(selectedPerfumeId=", this.f55174a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "", "isShoppingBagSelected", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShoppingBagToggle implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f55175a;

        public ShoppingBagToggle(boolean z) {
            this.f55175a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShoppingBagToggle) && this.f55175a == ((ShoppingBagToggle) obj).f55175a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f55175a);
        }

        public final String toString() {
            return tr.i("ShoppingBagToggle(isShoppingBagSelected=", ")", this.f55175a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SignaturePackagingSectionClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SignaturePackagingSectionClick extends SimpleClickWithCart {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SignaturePackagingSectionClick f55176b = new SignaturePackagingSectionClick("open_view_details_packaging", null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SignaturePackagingSectionClick);
        }

        public final int hashCode() {
            return 1593299027;
        }

        public final String toString() {
            return "SignaturePackagingSectionClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleClickWithCart;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$CartEmptyStartShopping;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GiftSectionClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SignaturePackagingSectionClick;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SimpleClickWithCart implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55177a;

        public SimpleClickWithCart(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this.f55177a = str;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityFailed;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityIntention;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemConfirm;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemFailed;", "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemSucceeded;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SimpleItem implements CartTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CartItemUiModel f55178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55179b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55180c;

        public /* synthetic */ SimpleItem(CartItemUiModel cartItemUiModel, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(cartItemUiModel, str, (i2 & 4) != 0 ? null : str2, null);
        }

        public SimpleItem(CartItemUiModel cartItemUiModel, String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this.f55178a = cartItemUiModel;
            this.f55179b = str;
            this.f55180c = str2;
        }
    }
}
