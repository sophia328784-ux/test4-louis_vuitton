package com.vuitton.android.presentation.screen.pdp.models.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:?\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?@\u0082\u0001?ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f¨\u0006\u0080\u0001À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "", "PdpScreen", "OnCallForAvailabilityEvent", "OnDisplayNotECommerceInfoEvent", "OnGoToWebsiteProductPageEvent", "OnBannerArModelClickEvent", "OnSwipeEvent", "OnShareButtonEvent", "OnClickOnFindInStoreEvent", "OnAddToWishlistEvent", "OnProductAddToWishlistSuccessEvent", "OnAddToCartSuccessEvent", "OnAddToCartErrorEvent", "OnSeeYourCartEvent", "OnCloseAddCartEvent", "OnShareOnScreenshotEvent", "OnHitOnYMALProductEvent", "OnSwipeYMALCarouselEvent", "OnCrossSellProductClickedEvent", "OnCrossSellProductSwipeEvent", "OnSizeGuideClickEvent", "OnSizeGuideClosedEvent", "OnSizeGuideCountryClickEvent", "OnSizeGuideUnitChangedEvent", "NotifyMeOnProductPageEvent", "NotifyMeBottomSheetEvent", "OnMyMonogramCardClickEvent", "OnMyMonogramCardUpdateClickEvent", "OnBeautyEngravingCardClickEvent", "OnBeautyEngravingCardUpdateClickEvent", "OnHotstampingCardClickEvent", "OnHotstampingCardUpdateClickEvent", "OnPerfumeEngravingCardClickEvent", "OnPerfumeEngravingCardUpdateClickEvent", "OnDiamondEngravingCardClickEvent", "OnCancelProductCustomizationBottomSheetOpenEvent", "OnCancelProductCustomizationBottomSheetConfirmEvent", "OnCancelProductCustomizationBottomSheetCancelEvent", "CancelHotstampingCustomizationBottomSheetScreen", "CancelPerfumeEngravingCustomizationBottomSheetScreen", "EditHotstampingCustomizationBottomSheetScreen", "EditPerfumeEngravingCustomizationBottomSheetScreen", "OnCancelHotstampingBottomSheetConfirmEvent", "OnCancelHotstampingBottomSheetCancelEvent", "OnCancelPerfumeEngravingBottomSheetConfirmEvent", "OnCancelPerfumeEngravingBottomSheetCancelEvent", "OnEditHotstampingBottomSheetEditEvent", "OnEditHotstampingBottomSheetDeleteEvent", "OnEditPerfumeEngravingBottomSheetEditEvent", "OnEditPerfumeEngravingBottomSheetDeleteEvent", "OnDisplayServerOverloadSheet", "OnDismissServerOverloadSheet", "OnVariationClickedEvent", "OnMoreVariationClickedEvent", "OnHighlightedContentClickedEvent", "OnPanelInfoEvent", "OnEditorialContentItemClickedEvent", "OnEditorialContentCarouselSwipedEvent", "OnTryOnClickedEvent", "OnShadeFinderClickedEvent", "OnContextualSizeEntryClickedEvent", "VirtualStudioConsentScreen", "OnAskForLivePresentationClickedEvent", "OnVirtualStudioConsentAcceptedEvent", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelHotstampingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelPerfumeEngravingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditHotstampingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditPerfumeEngravingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeOnProductPageEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartErrorEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBannerArModelClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCallForAvailabilityEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnClickOnFindInStoreEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCloseAddCartEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnContextualSizeEntryClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductSwipeEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDiamondEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDismissServerOverloadSheet;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayNotECommerceInfoEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayServerOverloadSheet;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetDeleteEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetEditEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetDeleteEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetEditEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentItemClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnGoToWebsiteProductPageEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHighlightedContentClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHitOnYMALProductEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSeeYourCartEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShadeFinderClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareButtonEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareOnScreenshotEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClosedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideCountryClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideUnitChangedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeYMALCarouselEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnTryOnClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelHotstampingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelHotstampingCustomizationBottomSheetScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CancelHotstampingCustomizationBottomSheetScreen f61589a = new CancelHotstampingCustomizationBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CancelHotstampingCustomizationBottomSheetScreen);
        }

        public final int hashCode() {
            return 567839671;
        }

        public final String toString() {
            return "CancelHotstampingCustomizationBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$CancelPerfumeEngravingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelPerfumeEngravingCustomizationBottomSheetScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CancelPerfumeEngravingCustomizationBottomSheetScreen f61590a = new CancelPerfumeEngravingCustomizationBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CancelPerfumeEngravingCustomizationBottomSheetScreen);
        }

        public final int hashCode() {
            return 225123268;
        }

        public final String toString() {
            return "CancelPerfumeEngravingCustomizationBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditHotstampingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditHotstampingCustomizationBottomSheetScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EditHotstampingCustomizationBottomSheetScreen f61591a = new EditHotstampingCustomizationBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditHotstampingCustomizationBottomSheetScreen);
        }

        public final int hashCode() {
            return 1885539367;
        }

        public final String toString() {
            return "EditHotstampingCustomizationBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$EditPerfumeEngravingCustomizationBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditPerfumeEngravingCustomizationBottomSheetScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EditPerfumeEngravingCustomizationBottomSheetScreen f61592a = new EditPerfumeEngravingCustomizationBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditPerfumeEngravingCustomizationBottomSheetScreen);
        }

        public final int hashCode() {
            return 1888444756;
        }

        public final String toString() {
            return "EditPerfumeEngravingCustomizationBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeBottomSheetEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotifyMeBottomSheetEvent f61593a = new NotifyMeBottomSheetEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotifyMeBottomSheetEvent);
        }

        public final int hashCode() {
            return 1556302703;
        }

        public final String toString() {
            return "NotifyMeBottomSheetEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeOnProductPageEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeOnProductPageEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotifyMeOnProductPageEvent f61594a = new NotifyMeOnProductPageEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotifyMeOnProductPageEvent);
        }

        public final int hashCode() {
            return -1963707068;
        }

        public final String toString() {
            return "NotifyMeOnProductPageEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartErrorEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCartErrorEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnAddToCartErrorEvent f61595a = new OnAddToCartErrorEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAddToCartErrorEvent);
        }

        public final int hashCode() {
            return -1515890201;
        }

        public final String toString() {
            return "OnAddToCartErrorEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;", "product", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCartSuccessEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ProductUiModel f61596a;

        public OnAddToCartSuccessEvent(ProductUiModel productUiModel) {
            productUiModel.getClass();
            this.f61596a = productUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAddToCartSuccessEvent) && Intrinsics.c(this.f61596a, ((OnAddToCartSuccessEvent) obj).f61596a);
        }

        public final int hashCode() {
            return this.f61596a.hashCode();
        }

        public final String toString() {
            return "OnAddToCartSuccessEvent(product=" + this.f61596a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToWishlistEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnAddToWishlistEvent f61597a = new OnAddToWishlistEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAddToWishlistEvent);
        }

        public final int hashCode() {
            return 1378480128;
        }

        public final String toString() {
            return "OnAddToWishlistEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAskForLivePresentationClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnAskForLivePresentationClickedEvent f61598a = new OnAskForLivePresentationClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAskForLivePresentationClickedEvent);
        }

        public final int hashCode() {
            return 750718832;
        }

        public final String toString() {
            return "OnAskForLivePresentationClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBannerArModelClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBannerArModelClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBannerArModelClickEvent f61599a = new OnBannerArModelClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBannerArModelClickEvent);
        }

        public final int hashCode() {
            return 658934359;
        }

        public final String toString() {
            return "OnBannerArModelClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingCardClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingCardClickEvent f61600a = new OnBeautyEngravingCardClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingCardClickEvent);
        }

        public final int hashCode() {
            return 163017208;
        }

        public final String toString() {
            return "OnBeautyEngravingCardClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBeautyEngravingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnBeautyEngravingCardUpdateClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnBeautyEngravingCardUpdateClickEvent f61601a = new OnBeautyEngravingCardUpdateClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBeautyEngravingCardUpdateClickEvent);
        }

        public final int hashCode() {
            return -168213727;
        }

        public final String toString() {
            return "OnBeautyEngravingCardUpdateClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCallForAvailabilityEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCallForAvailabilityEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCallForAvailabilityEvent f61602a = new OnCallForAvailabilityEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCallForAvailabilityEvent);
        }

        public final int hashCode() {
            return -1428736965;
        }

        public final String toString() {
            return "OnCallForAvailabilityEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelHotstampingBottomSheetCancelEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelHotstampingBottomSheetCancelEvent f61603a = new OnCancelHotstampingBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelHotstampingBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -789380457;
        }

        public final String toString() {
            return "OnCancelHotstampingBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelHotstampingBottomSheetConfirmEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelHotstampingBottomSheetConfirmEvent f61604a = new OnCancelHotstampingBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelHotstampingBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 1295871043;
        }

        public final String toString() {
            return "OnCancelHotstampingBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelPerfumeEngravingBottomSheetCancelEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelPerfumeEngravingBottomSheetCancelEvent f61605a = new OnCancelPerfumeEngravingBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelPerfumeEngravingBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -1373585918;
        }

        public final String toString() {
            return "OnCancelPerfumeEngravingBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelPerfumeEngravingBottomSheetConfirmEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelPerfumeEngravingBottomSheetConfirmEvent f61606a = new OnCancelPerfumeEngravingBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelPerfumeEngravingBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 365370936;
        }

        public final String toString() {
            return "OnCancelPerfumeEngravingBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetCancelEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelProductCustomizationBottomSheetCancelEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelProductCustomizationBottomSheetCancelEvent f61607a = new OnCancelProductCustomizationBottomSheetCancelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelProductCustomizationBottomSheetCancelEvent);
        }

        public final int hashCode() {
            return -1610792047;
        }

        public final String toString() {
            return "OnCancelProductCustomizationBottomSheetCancelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetConfirmEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelProductCustomizationBottomSheetConfirmEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelProductCustomizationBottomSheetConfirmEvent f61608a = new OnCancelProductCustomizationBottomSheetConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelProductCustomizationBottomSheetConfirmEvent);
        }

        public final int hashCode() {
            return 1601915529;
        }

        public final String toString() {
            return "OnCancelProductCustomizationBottomSheetConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetOpenEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCancelProductCustomizationBottomSheetOpenEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCancelProductCustomizationBottomSheetOpenEvent f61609a = new OnCancelProductCustomizationBottomSheetOpenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCancelProductCustomizationBottomSheetOpenEvent);
        }

        public final int hashCode() {
            return -1154724351;
        }

        public final String toString() {
            return "OnCancelProductCustomizationBottomSheetOpenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnClickOnFindInStoreEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClickOnFindInStoreEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnClickOnFindInStoreEvent f61610a = new OnClickOnFindInStoreEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnClickOnFindInStoreEvent);
        }

        public final int hashCode() {
            return 182160343;
        }

        public final String toString() {
            return "OnClickOnFindInStoreEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCloseAddCartEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseAddCartEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseAddCartEvent f61611a = new OnCloseAddCartEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseAddCartEvent);
        }

        public final int hashCode() {
            return 1611901738;
        }

        public final String toString() {
            return "OnCloseAddCartEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnContextualSizeEntryClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnContextualSizeEntryClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61612a;

        public OnContextualSizeEntryClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61612a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnContextualSizeEntryClickedEvent)) {
                return false;
            }
            String str = ((OnContextualSizeEntryClickedEvent) obj).f61612a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61612a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61612a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnContextualSizeEntryClickedEvent(sku=", this.f61612a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "selectedSku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCrossSellProductClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61613a;

        public OnCrossSellProductClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61613a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCrossSellProductClickedEvent)) {
                return false;
            }
            String str = ((OnCrossSellProductClickedEvent) obj).f61613a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61613a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61613a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnCrossSellProductClickedEvent(selectedSku=", this.f61613a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCrossSellProductSwipeEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "", "scrollPercentage", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCrossSellProductSwipeEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61614a;

        public OnCrossSellProductSwipeEvent(int i2) {
            this.f61614a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnCrossSellProductSwipeEvent) && this.f61614a == ((OnCrossSellProductSwipeEvent) obj).f61614a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f61614a);
        }

        public final String toString() {
            return n00.m(this.f61614a, "OnCrossSellProductSwipeEvent(scrollPercentage=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDiamondEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiamondEngravingCardClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDiamondEngravingCardClickEvent f61615a = new OnDiamondEngravingCardClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDiamondEngravingCardClickEvent);
        }

        public final int hashCode() {
            return -1043621490;
        }

        public final String toString() {
            return "OnDiamondEngravingCardClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDismissServerOverloadSheet;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDismissServerOverloadSheet implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDismissServerOverloadSheet f61616a = new OnDismissServerOverloadSheet();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDismissServerOverloadSheet);
        }

        public final int hashCode() {
            return 295588639;
        }

        public final String toString() {
            return "OnDismissServerOverloadSheet";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayNotECommerceInfoEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDisplayNotECommerceInfoEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDisplayNotECommerceInfoEvent f61617a = new OnDisplayNotECommerceInfoEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDisplayNotECommerceInfoEvent);
        }

        public final int hashCode() {
            return -256237148;
        }

        public final String toString() {
            return "OnDisplayNotECommerceInfoEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayServerOverloadSheet;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDisplayServerOverloadSheet implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnDisplayServerOverloadSheet f61618a = new OnDisplayServerOverloadSheet();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnDisplayServerOverloadSheet);
        }

        public final int hashCode() {
            return 248386023;
        }

        public final String toString() {
            return "OnDisplayServerOverloadSheet";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetDeleteEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditHotstampingBottomSheetDeleteEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnEditHotstampingBottomSheetDeleteEvent f61619a = new OnEditHotstampingBottomSheetDeleteEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnEditHotstampingBottomSheetDeleteEvent);
        }

        public final int hashCode() {
            return -1648113994;
        }

        public final String toString() {
            return "OnEditHotstampingBottomSheetDeleteEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetEditEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditHotstampingBottomSheetEditEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnEditHotstampingBottomSheetEditEvent f61620a = new OnEditHotstampingBottomSheetEditEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnEditHotstampingBottomSheetEditEvent);
        }

        public final int hashCode() {
            return 1559779191;
        }

        public final String toString() {
            return "OnEditHotstampingBottomSheetEditEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetDeleteEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditPerfumeEngravingBottomSheetDeleteEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnEditPerfumeEngravingBottomSheetDeleteEvent f61621a = new OnEditPerfumeEngravingBottomSheetDeleteEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnEditPerfumeEngravingBottomSheetDeleteEvent);
        }

        public final int hashCode() {
            return 1701734081;
        }

        public final String toString() {
            return "OnEditPerfumeEngravingBottomSheetDeleteEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetEditEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditPerfumeEngravingBottomSheetEditEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnEditPerfumeEngravingBottomSheetEditEvent f61622a = new OnEditPerfumeEngravingBottomSheetEditEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnEditPerfumeEngravingBottomSheetEditEvent);
        }

        public final int hashCode() {
            return 374439490;
        }

        public final String toString() {
            return "OnEditPerfumeEngravingBottomSheetEditEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "editorialContentId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditorialContentCarouselSwipedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61624b;

        public OnEditorialContentCarouselSwipedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f61623a = str;
            this.f61624b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnEditorialContentCarouselSwipedEvent)) {
                return false;
            }
            OnEditorialContentCarouselSwipedEvent onEditorialContentCarouselSwipedEvent = (OnEditorialContentCarouselSwipedEvent) obj;
            String str = onEditorialContentCarouselSwipedEvent.f61623a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61623a.equals(str) && this.f61624b.equals(onEditorialContentCarouselSwipedEvent.f61624b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61624b.hashCode() + (this.f61623a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnEditorialContentCarouselSwipedEvent(sku=", this.f61623a, ", editorialContentId=", this.f61624b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentItemClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "editorialContentId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnEditorialContentItemClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61625a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61626b;

        public OnEditorialContentItemClickedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f61625a = str;
            this.f61626b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnEditorialContentItemClickedEvent)) {
                return false;
            }
            OnEditorialContentItemClickedEvent onEditorialContentItemClickedEvent = (OnEditorialContentItemClickedEvent) obj;
            String str = onEditorialContentItemClickedEvent.f61625a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61625a.equals(str) && this.f61626b.equals(onEditorialContentItemClickedEvent.f61626b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61626b.hashCode() + (this.f61625a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnEditorialContentItemClickedEvent(sku=", this.f61625a, ", editorialContentId=", this.f61626b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnGoToWebsiteProductPageEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnGoToWebsiteProductPageEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnGoToWebsiteProductPageEvent f61627a = new OnGoToWebsiteProductPageEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnGoToWebsiteProductPageEvent);
        }

        public final int hashCode() {
            return -537788179;
        }

        public final String toString() {
            return "OnGoToWebsiteProductPageEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHighlightedContentClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHighlightedContentClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61628a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61629b;

        public OnHighlightedContentClickedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f61628a = str;
            this.f61629b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHighlightedContentClickedEvent)) {
                return false;
            }
            OnHighlightedContentClickedEvent onHighlightedContentClickedEvent = (OnHighlightedContentClickedEvent) obj;
            String str = onHighlightedContentClickedEvent.f61628a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61628a.equals(str) && this.f61629b.equals(onHighlightedContentClickedEvent.f61629b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61629b.hashCode() + (this.f61628a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnHighlightedContentClickedEvent(sku=", this.f61628a, ", title=", this.f61629b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHitOnYMALProductEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "relatedSku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnYMALProductEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61631b;

        public OnHitOnYMALProductEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str2.getClass();
            this.f61630a = str;
            this.f61631b = str2;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0016  */
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (this != obj) {
                if (obj instanceof OnHitOnYMALProductEvent) {
                    OnHitOnYMALProductEvent onHitOnYMALProductEvent = (OnHitOnYMALProductEvent) obj;
                    String str = onHitOnYMALProductEvent.f61630a;
                    String str2 = this.f61630a;
                    if (str2 == null) {
                        if (str == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str == null) {
                        zEquals = false;
                    } else {
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        zEquals = str2.equals(str);
                    }
                    if (zEquals) {
                        String str3 = onHitOnYMALProductEvent.f61631b;
                        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                        if (!this.f61631b.equals(str3)) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int iHashCode;
            String str = this.f61630a;
            if (str == null) {
                iHashCode = 0;
            } else {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                iHashCode = str.hashCode();
            }
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            return this.f61631b.hashCode() + (iHashCode * 31);
        }

        public final String toString() {
            String str = this.f61630a;
            if (str == null) {
                str = "null";
            } else {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            }
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            return d21.l("OnHitOnYMALProductEvent(sku=", str, ", relatedSku=", this.f61631b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingCardClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingCardClickEvent f61632a = new OnHotstampingCardClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingCardClickEvent);
        }

        public final int hashCode() {
            return -1638749913;
        }

        public final String toString() {
            return "OnHotstampingCardClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnHotstampingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotstampingCardUpdateClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHotstampingCardUpdateClickEvent f61633a = new OnHotstampingCardUpdateClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHotstampingCardUpdateClickEvent);
        }

        public final int hashCode() {
            return -1756095728;
        }

        public final String toString() {
            return "OnHotstampingCardUpdateClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skus", "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;", "variationType", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMoreVariationClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f61634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final VariationType f61635b;

        public OnMoreVariationClickedEvent(List<SkuIdUiModel> list, VariationType variationType) {
            list.getClass();
            variationType.getClass();
            this.f61634a = list;
            this.f61635b = variationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnMoreVariationClickedEvent)) {
                return false;
            }
            OnMoreVariationClickedEvent onMoreVariationClickedEvent = (OnMoreVariationClickedEvent) obj;
            return Intrinsics.c(this.f61634a, onMoreVariationClickedEvent.f61634a) && this.f61635b == onMoreVariationClickedEvent.f61635b;
        }

        public final int hashCode() {
            return this.f61635b.hashCode() + (this.f61634a.hashCode() * 31);
        }

        public final String toString() {
            return "OnMoreVariationClickedEvent(skus=" + this.f61634a + ", variationType=" + this.f61635b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramCardClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramCardClickEvent f61636a = new OnMyMonogramCardClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramCardClickEvent);
        }

        public final int hashCode() {
            return 1072960719;
        }

        public final String toString() {
            return "OnMyMonogramCardClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMyMonogramCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnMyMonogramCardUpdateClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnMyMonogramCardUpdateClickEvent f61637a = new OnMyMonogramCardUpdateClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnMyMonogramCardUpdateClickEvent);
        }

        public final int hashCode() {
            return -1374672712;
        }

        public final String toString() {
            return "OnMyMonogramCardUpdateClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPanelInfoEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPanelInfoEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61638a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61639b;

        public OnPanelInfoEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str2.getClass();
            this.f61638a = str;
            this.f61639b = str2;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0016  */
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (this != obj) {
                if (obj instanceof OnPanelInfoEvent) {
                    OnPanelInfoEvent onPanelInfoEvent = (OnPanelInfoEvent) obj;
                    String str = onPanelInfoEvent.f61638a;
                    String str2 = this.f61638a;
                    if (str2 == null) {
                        if (str == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str == null) {
                        zEquals = false;
                    } else {
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        zEquals = str2.equals(str);
                    }
                    if (zEquals && this.f61639b.equals(onPanelInfoEvent.f61639b)) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int iHashCode;
            String str = this.f61638a;
            if (str == null) {
                iHashCode = 0;
            } else {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                iHashCode = str.hashCode();
            }
            return this.f61639b.hashCode() + (iHashCode * 31);
        }

        public final String toString() {
            String str = this.f61638a;
            if (str == null) {
                str = "null";
            } else {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            }
            return d21.l("OnPanelInfoEvent(sku=", str, ", title=", this.f61639b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingCardClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingCardClickEvent f61640a = new OnPerfumeEngravingCardClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingCardClickEvent);
        }

        public final int hashCode() {
            return 339169182;
        }

        public final String toString() {
            return "OnPerfumeEngravingCardClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnPerfumeEngravingCardUpdateClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPerfumeEngravingCardUpdateClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnPerfumeEngravingCardUpdateClickEvent f61641a = new OnPerfumeEngravingCardUpdateClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnPerfumeEngravingCardUpdateClickEvent);
        }

        public final int hashCode() {
            return -206975929;
        }

        public final String toString() {
            return "OnPerfumeEngravingCardUpdateClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnProductAddToWishlistSuccessEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnProductAddToWishlistSuccessEvent f61642a = new OnProductAddToWishlistSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnProductAddToWishlistSuccessEvent);
        }

        public final int hashCode() {
            return 2139184944;
        }

        public final String toString() {
            return "OnProductAddToWishlistSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSeeYourCartEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSeeYourCartEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSeeYourCartEvent f61643a = new OnSeeYourCartEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSeeYourCartEvent);
        }

        public final int hashCode() {
            return -178007461;
        }

        public final String toString() {
            return "OnSeeYourCartEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShadeFinderClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnShadeFinderClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61644a;

        public OnShadeFinderClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61644a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnShadeFinderClickedEvent)) {
                return false;
            }
            String str = ((OnShadeFinderClickedEvent) obj).f61644a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61644a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61644a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnShadeFinderClickedEvent(sku=", this.f61644a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareButtonEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnShareButtonEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnShareButtonEvent f61645a = new OnShareButtonEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnShareButtonEvent);
        }

        public final int hashCode() {
            return 445029552;
        }

        public final String toString() {
            return "OnShareButtonEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareOnScreenshotEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnShareOnScreenshotEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnShareOnScreenshotEvent f61646a = new OnShareOnScreenshotEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnShareOnScreenshotEvent);
        }

        public final int hashCode() {
            return -1886580451;
        }

        public final String toString() {
            return "OnShareOnScreenshotEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSizeGuideClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSizeGuideClickEvent f61647a = new OnSizeGuideClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSizeGuideClickEvent);
        }

        public final int hashCode() {
            return -1376704794;
        }

        public final String toString() {
            return "OnSizeGuideClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClosedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSizeGuideClosedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSizeGuideClosedEvent f61648a = new OnSizeGuideClosedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSizeGuideClosedEvent);
        }

        public final int hashCode() {
            return -55112166;
        }

        public final String toString() {
            return "OnSizeGuideClosedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideCountryClickEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSizeGuideCountryClickEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSizeGuideCountryClickEvent f61649a = new OnSizeGuideCountryClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSizeGuideCountryClickEvent);
        }

        public final int hashCode() {
            return -610520396;
        }

        public final String toString() {
            return "OnSizeGuideCountryClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideUnitChangedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isInches", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSizeGuideUnitChangedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61651b;

        public OnSizeGuideUnitChangedEvent(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61650a = str;
            this.f61651b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSizeGuideUnitChangedEvent)) {
                return false;
            }
            OnSizeGuideUnitChangedEvent onSizeGuideUnitChangedEvent = (OnSizeGuideUnitChangedEvent) obj;
            String str = onSizeGuideUnitChangedEvent.f61650a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61650a.equals(str) && this.f61651b == onSizeGuideUnitChangedEvent.f61651b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f61651b) + (this.f61650a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("OnSizeGuideUnitChangedEvent(sku=", this.f61650a, ", isInches=", ")", this.f61651b);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "right", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61652a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61653b;

        public OnSwipeEvent(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61652a = str;
            this.f61653b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSwipeEvent)) {
                return false;
            }
            OnSwipeEvent onSwipeEvent = (OnSwipeEvent) obj;
            String str = onSwipeEvent.f61652a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61652a.equals(str) && this.f61653b == onSwipeEvent.f61653b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f61653b) + (this.f61652a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("OnSwipeEvent(sku=", this.f61652a, ", right=", ")", this.f61653b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeYMALCarouselEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeYMALCarouselEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSwipeYMALCarouselEvent f61654a = new OnSwipeYMALCarouselEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSwipeYMALCarouselEvent);
        }

        public final int hashCode() {
            return -2141564056;
        }

        public final String toString() {
            return "OnSwipeYMALCarouselEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnTryOnClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnTryOnClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61655a;

        public OnTryOnClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61655a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnTryOnClickedEvent)) {
                return false;
            }
            String str = ((OnTryOnClickedEvent) obj).f61655a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61655a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61655a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnTryOnClickedEvent(sku=", this.f61655a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;", "variationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnVariationClickedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final VariationType f61657b;

        public OnVariationClickedEvent(String str, VariationType variationType, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            variationType.getClass();
            this.f61656a = str;
            this.f61657b = variationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnVariationClickedEvent)) {
                return false;
            }
            OnVariationClickedEvent onVariationClickedEvent = (OnVariationClickedEvent) obj;
            String str = onVariationClickedEvent.f61656a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61656a.equals(str) && this.f61657b == onVariationClickedEvent.f61657b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61657b.hashCode() + (this.f61656a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnVariationClickedEvent(sku=" + this.f61656a + ", variationType=" + this.f61657b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnVirtualStudioConsentAcceptedEvent implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnVirtualStudioConsentAcceptedEvent f61658a = new OnVirtualStudioConsentAcceptedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnVirtualStudioConsentAcceptedEvent);
        }

        public final int hashCode() {
            return -1623467277;
        }

        public final String toString() {
            return "OnVirtualStudioConsentAcceptedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$VirtualStudioConsentScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VirtualStudioConsentScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VirtualStudioConsentScreen f61662a = new VirtualStudioConsentScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof VirtualStudioConsentScreen);
        }

        public final int hashCode() {
            return -1637256851;
        }

        public final String toString() {
            return "VirtualStudioConsentScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;", "", "isExclusiveSaleEligible", "isBackInStockEnabled", "isFromNativeShare", "<init>", "(Ljava/lang/Boolean;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PdpScreen implements PdpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Boolean f61659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f61661c;

        public PdpScreen(Boolean bool, boolean z, boolean z2) {
            this.f61659a = bool;
            this.f61660b = z;
            this.f61661c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PdpScreen)) {
                return false;
            }
            PdpScreen pdpScreen = (PdpScreen) obj;
            return Intrinsics.c(this.f61659a, pdpScreen.f61659a) && this.f61660b == pdpScreen.f61660b && this.f61661c == pdpScreen.f61661c;
        }

        public final int hashCode() {
            Boolean bool = this.f61659a;
            return Boolean.hashCode(this.f61661c) + o60.b((bool == null ? 0 : bool.hashCode()) * 31, 31, this.f61660b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PdpScreen(isExclusiveSaleEligible=");
            sb.append(this.f61659a);
            sb.append(", isBackInStockEnabled=");
            sb.append(this.f61660b);
            sb.append(", isFromNativeShare=");
            return a.p(sb, this.f61661c, ")");
        }

        public /* synthetic */ PdpScreen(Boolean bool, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : bool, z, z2);
        }
    }
}
