package com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.cms.CMSAttributeTableGenerator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u0082\u0001\u001e !\"#$%&'()*+,-./0123456789:;<=¨\u0006>À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "VtoScreen", "VtoHowToApplyScreen", "VtoMultipleProductBottomSheetScreen", "OnCompareClickedEvent", "OnStackingClickedEvent", "OnTakePictureClickedEvent", "OnDiscardPhotoClickedEvent", "OnSharePhotoClickedEvent", "OnAddToWishlistClickedEvent", "OnAddToWishlistSucceedEvent", "OnAddToWishlistFailureEvent", "OnAddToCardClickedEvent", "OnSnackbarRedirectToCartClickedEvent", "OnSnackbarOpenAlertClickedEvent", "OnCloseVtoScreenClickedEvent", "SelectSkuMultipleProductBottomSheetEvent", "CloseMultipleProductBottomSheetEvent", "AddToCartMultipleProductBottomSheetEvent", "OpenAlertMultipleProductBottomSheetEvent", "NotifyMeBottomSheetEvent", "OnLookSelectorClickedEvent", "OnLookClickedEvent", "OnHowToApplyClickedEvent", "OnHowToApplyClosedEvent", "OnHowToApplyScrolledEvent", "OnHowToApplyRecommendedSwipedEvent", "OnHowToApplyRecommendedClickedEvent", "OnSelectAColorClickedEvent", "OnColorSliderSwipedEvent", "OnDualColorSliderOpenedEvent", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BeautyVtoTrackingUiModel {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuList", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCartMultipleProductBottomSheetEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyVtoMode f62214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62215b;

        public AddToCartMultipleProductBottomSheetEvent(BeautyVtoMode beautyVtoMode, List<SkuIdUiModel> list) {
            beautyVtoMode.getClass();
            list.getClass();
            this.f62214a = beautyVtoMode;
            this.f62215b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToCartMultipleProductBottomSheetEvent)) {
                return false;
            }
            AddToCartMultipleProductBottomSheetEvent addToCartMultipleProductBottomSheetEvent = (AddToCartMultipleProductBottomSheetEvent) obj;
            return this.f62214a == addToCartMultipleProductBottomSheetEvent.f62214a && Intrinsics.c(this.f62215b, addToCartMultipleProductBottomSheetEvent.f62215b);
        }

        public final int hashCode() {
            return this.f62215b.hashCode() + (this.f62214a.hashCode() * 31);
        }

        public final String toString() {
            return "AddToCartMultipleProductBottomSheetEvent(beautyVtoMode=" + this.f62214a + ", skuList=" + this.f62215b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuList", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseMultipleProductBottomSheetEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyVtoMode f62216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62217b;

        public CloseMultipleProductBottomSheetEvent(BeautyVtoMode beautyVtoMode, List<SkuIdUiModel> list) {
            beautyVtoMode.getClass();
            list.getClass();
            this.f62216a = beautyVtoMode;
            this.f62217b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloseMultipleProductBottomSheetEvent)) {
                return false;
            }
            CloseMultipleProductBottomSheetEvent closeMultipleProductBottomSheetEvent = (CloseMultipleProductBottomSheetEvent) obj;
            return this.f62216a == closeMultipleProductBottomSheetEvent.f62216a && Intrinsics.c(this.f62217b, closeMultipleProductBottomSheetEvent.f62217b);
        }

        public final int hashCode() {
            return this.f62217b.hashCode() + (this.f62216a.hashCode() * 31);
        }

        public final String toString() {
            return "CloseMultipleProductBottomSheetEvent(beautyVtoMode=" + this.f62216a + ", skuList=" + this.f62217b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeBottomSheetEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62218a;

        public NotifyMeBottomSheetEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f62218a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotifyMeBottomSheetEvent)) {
                return false;
            }
            String str = ((NotifyMeBottomSheetEvent) obj).f62218a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62218a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62218a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("NotifyMeBottomSheetEvent(sku=", this.f62218a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCardClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62221c;
        public final BeautyVtoMode d;

        public OnAddToCardClickedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62219a = list;
            this.f62220b = list2;
            this.f62221c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToCardClickedEvent)) {
                return false;
            }
            OnAddToCardClickedEvent onAddToCardClickedEvent = (OnAddToCardClickedEvent) obj;
            return Intrinsics.c(this.f62219a, onAddToCardClickedEvent.f62219a) && Intrinsics.c(this.f62220b, onAddToCardClickedEvent.f62220b) && this.f62221c == onAddToCardClickedEvent.f62221c && this.d == onAddToCardClickedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62221c, n00.a(this.f62219a.hashCode() * 31, 31, this.f62220b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnAddToCardClickedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62219a, this.f62220b);
            sbS.append(this.f62221c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToWishlistClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62224c;
        public final BeautyVtoMode d;

        public OnAddToWishlistClickedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62222a = list;
            this.f62223b = list2;
            this.f62224c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToWishlistClickedEvent)) {
                return false;
            }
            OnAddToWishlistClickedEvent onAddToWishlistClickedEvent = (OnAddToWishlistClickedEvent) obj;
            return Intrinsics.c(this.f62222a, onAddToWishlistClickedEvent.f62222a) && Intrinsics.c(this.f62223b, onAddToWishlistClickedEvent.f62223b) && this.f62224c == onAddToWishlistClickedEvent.f62224c && this.d == onAddToWishlistClickedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62224c, n00.a(this.f62222a.hashCode() * 31, 31, this.f62223b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnAddToWishlistClickedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62222a, this.f62223b);
            sbS.append(this.f62224c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToWishlistFailureEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62227c;
        public final BeautyVtoMode d;

        public OnAddToWishlistFailureEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62225a = list;
            this.f62226b = list2;
            this.f62227c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToWishlistFailureEvent)) {
                return false;
            }
            OnAddToWishlistFailureEvent onAddToWishlistFailureEvent = (OnAddToWishlistFailureEvent) obj;
            return Intrinsics.c(this.f62225a, onAddToWishlistFailureEvent.f62225a) && Intrinsics.c(this.f62226b, onAddToWishlistFailureEvent.f62226b) && this.f62227c == onAddToWishlistFailureEvent.f62227c && this.d == onAddToWishlistFailureEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62227c, n00.a(this.f62225a.hashCode() * 31, 31, this.f62226b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnAddToWishlistFailureEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62225a, this.f62226b);
            sbS.append(this.f62227c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToWishlistSucceedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62230c;
        public final BeautyVtoMode d;

        public OnAddToWishlistSucceedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62228a = list;
            this.f62229b = list2;
            this.f62230c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToWishlistSucceedEvent)) {
                return false;
            }
            OnAddToWishlistSucceedEvent onAddToWishlistSucceedEvent = (OnAddToWishlistSucceedEvent) obj;
            return Intrinsics.c(this.f62228a, onAddToWishlistSucceedEvent.f62228a) && Intrinsics.c(this.f62229b, onAddToWishlistSucceedEvent.f62229b) && this.f62230c == onAddToWishlistSucceedEvent.f62230c && this.d == onAddToWishlistSucceedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62230c, n00.a(this.f62228a.hashCode() * 31, 31, this.f62229b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnAddToWishlistSucceedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62228a, this.f62229b);
            sbS.append(this.f62230c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseVtoScreenClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62231a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62232b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyVtoMode f62233c;

        public OnCloseVtoScreenClickedEvent(List<SkuIdUiModel> list, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62231a = list;
            this.f62232b = beautyProductTypeUiModel;
            this.f62233c = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCloseVtoScreenClickedEvent)) {
                return false;
            }
            OnCloseVtoScreenClickedEvent onCloseVtoScreenClickedEvent = (OnCloseVtoScreenClickedEvent) obj;
            return Intrinsics.c(this.f62231a, onCloseVtoScreenClickedEvent.f62231a) && this.f62232b == onCloseVtoScreenClickedEvent.f62232b && this.f62233c == onCloseVtoScreenClickedEvent.f62233c;
        }

        public final int hashCode() {
            return this.f62233c.hashCode() + d21.b(this.f62232b, this.f62231a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "OnCloseVtoScreenClickedEvent(productSkuList=" + this.f62231a + ", contentType=" + this.f62232b + ", beautyVtoMode=" + this.f62233c + ")";
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnColorSliderSwipedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyVtoMode f62236c;

        public OnColorSliderSwipedEvent(List<SkuIdUiModel> list, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62234a = list;
            this.f62235b = beautyProductTypeUiModel;
            this.f62236c = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnColorSliderSwipedEvent)) {
                return false;
            }
            OnColorSliderSwipedEvent onColorSliderSwipedEvent = (OnColorSliderSwipedEvent) obj;
            return Intrinsics.c(this.f62234a, onColorSliderSwipedEvent.f62234a) && this.f62235b == onColorSliderSwipedEvent.f62235b && this.f62236c == onColorSliderSwipedEvent.f62236c;
        }

        public final int hashCode() {
            return this.f62236c.hashCode() + d21.b(this.f62235b, this.f62234a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "OnColorSliderSwipedEvent(productSkuList=" + this.f62234a + ", contentType=" + this.f62235b + ", beautyVtoMode=" + this.f62236c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCompareClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62239c;
        public final BeautyVtoMode d;

        public OnCompareClickedEvent(List list, String str, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62237a = list;
            this.f62238b = str;
            this.f62239c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCompareClickedEvent)) {
                return false;
            }
            OnCompareClickedEvent onCompareClickedEvent = (OnCompareClickedEvent) obj;
            if (!this.f62237a.equals(onCompareClickedEvent.f62237a)) {
                return false;
            }
            String str = onCompareClickedEvent.f62238b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62238b.equals(str) && this.f62239c == onCompareClickedEvent.f62239c && this.d == onCompareClickedEvent.d;
        }

        public final int hashCode() {
            int iHashCode = this.f62237a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.d.hashCode() + d21.b(this.f62239c, fc.b(iHashCode, 31, this.f62238b), 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnCompareClickedEvent(productSkuList=" + this.f62237a + ", vtoSku=" + this.f62238b + ", contentType=" + this.f62239c + ", beautyVtoMode=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiscardPhotoClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62240a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62241b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62242c;
        public final BeautyVtoMode d;

        public OnDiscardPhotoClickedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62240a = list;
            this.f62241b = list2;
            this.f62242c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnDiscardPhotoClickedEvent)) {
                return false;
            }
            OnDiscardPhotoClickedEvent onDiscardPhotoClickedEvent = (OnDiscardPhotoClickedEvent) obj;
            return Intrinsics.c(this.f62240a, onDiscardPhotoClickedEvent.f62240a) && Intrinsics.c(this.f62241b, onDiscardPhotoClickedEvent.f62241b) && this.f62242c == onDiscardPhotoClickedEvent.f62242c && this.d == onDiscardPhotoClickedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62242c, n00.a(this.f62240a.hashCode() * 31, 31, this.f62241b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnDiscardPhotoClickedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62240a, this.f62241b);
            sbS.append(this.f62242c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDualColorSliderOpenedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62245c;

        public OnDualColorSliderOpenedEvent(List list, String str, BeautyProductTypeUiModel beautyProductTypeUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            beautyProductTypeUiModel.getClass();
            this.f62243a = list;
            this.f62244b = str;
            this.f62245c = beautyProductTypeUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnDualColorSliderOpenedEvent)) {
                return false;
            }
            OnDualColorSliderOpenedEvent onDualColorSliderOpenedEvent = (OnDualColorSliderOpenedEvent) obj;
            if (!this.f62243a.equals(onDualColorSliderOpenedEvent.f62243a)) {
                return false;
            }
            String str = onDualColorSliderOpenedEvent.f62244b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62244b.equals(str) && this.f62245c == onDualColorSliderOpenedEvent.f62245c;
        }

        public final int hashCode() {
            int iHashCode = this.f62243a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62245c.hashCode() + fc.b(iHashCode, 31, this.f62244b);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnDualColorSliderOpenedEvent(productSkuList=" + this.f62243a + ", vtoSku=" + this.f62244b + ", contentType=" + this.f62245c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHowToApplyClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62248c;

        public OnHowToApplyClickedEvent(String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62246a = str;
            this.f62247b = beautyProductTypeUiModel;
            this.f62248c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHowToApplyClickedEvent)) {
                return false;
            }
            OnHowToApplyClickedEvent onHowToApplyClickedEvent = (OnHowToApplyClickedEvent) obj;
            String str = onHowToApplyClickedEvent.f62246a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62246a.equals(str) && this.f62247b == onHowToApplyClickedEvent.f62247b && this.f62248c.equals(onHowToApplyClickedEvent.f62248c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62248c.hashCode() + d21.b(this.f62247b, this.f62246a.hashCode() * 31, 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sb = new StringBuilder("OnHowToApplyClickedEvent(vtoSku=");
            sb.append(this.f62246a);
            sb.append(", contentType=");
            sb.append(this.f62247b);
            sb.append(", lookId=");
            return n00.r(this.f62248c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHowToApplyClosedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62250b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62251c;

        public OnHowToApplyClosedEvent(String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62249a = str;
            this.f62250b = beautyProductTypeUiModel;
            this.f62251c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHowToApplyClosedEvent)) {
                return false;
            }
            OnHowToApplyClosedEvent onHowToApplyClosedEvent = (OnHowToApplyClosedEvent) obj;
            String str = onHowToApplyClosedEvent.f62249a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62249a.equals(str) && this.f62250b == onHowToApplyClosedEvent.f62250b && this.f62251c.equals(onHowToApplyClosedEvent.f62251c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62251c.hashCode() + d21.b(this.f62250b, this.f62249a.hashCode() * 31, 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sb = new StringBuilder("OnHowToApplyClosedEvent(vtoSku=");
            sb.append(this.f62249a);
            sb.append(", contentType=");
            sb.append(this.f62250b);
            sb.append(", lookId=");
            return n00.r(this.f62251c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHowToApplyRecommendedClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62252a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62253b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62254c;
        public final String d;

        public OnHowToApplyRecommendedClickedEvent(List list, String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62252a = list;
            this.f62253b = str;
            this.f62254c = beautyProductTypeUiModel;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHowToApplyRecommendedClickedEvent)) {
                return false;
            }
            OnHowToApplyRecommendedClickedEvent onHowToApplyRecommendedClickedEvent = (OnHowToApplyRecommendedClickedEvent) obj;
            if (!this.f62252a.equals(onHowToApplyRecommendedClickedEvent.f62252a)) {
                return false;
            }
            String str = onHowToApplyRecommendedClickedEvent.f62253b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62253b.equals(str) && this.f62254c == onHowToApplyRecommendedClickedEvent.f62254c && this.d.equals(onHowToApplyRecommendedClickedEvent.d);
        }

        public final int hashCode() {
            int iHashCode = this.f62252a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.d.hashCode() + d21.b(this.f62254c, fc.b(iHashCode, 31, this.f62253b), 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnHowToApplyRecommendedClickedEvent(productSkuList=" + this.f62252a + ", vtoSku=" + this.f62253b + ", contentType=" + this.f62254c + ", lookId=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHowToApplyRecommendedSwipedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62256b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62257c;

        public OnHowToApplyRecommendedSwipedEvent(String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62255a = str;
            this.f62256b = beautyProductTypeUiModel;
            this.f62257c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHowToApplyRecommendedSwipedEvent)) {
                return false;
            }
            OnHowToApplyRecommendedSwipedEvent onHowToApplyRecommendedSwipedEvent = (OnHowToApplyRecommendedSwipedEvent) obj;
            String str = onHowToApplyRecommendedSwipedEvent.f62255a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62255a.equals(str) && this.f62256b == onHowToApplyRecommendedSwipedEvent.f62256b && this.f62257c.equals(onHowToApplyRecommendedSwipedEvent.f62257c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62257c.hashCode() + d21.b(this.f62256b, this.f62255a.hashCode() * 31, 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sb = new StringBuilder("OnHowToApplyRecommendedSwipedEvent(vtoSku=");
            sb.append(this.f62255a);
            sb.append(", contentType=");
            sb.append(this.f62256b);
            sb.append(", lookId=");
            return n00.r(this.f62257c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHowToApplyScrolledEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62260c;

        public OnHowToApplyScrolledEvent(String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62258a = str;
            this.f62259b = beautyProductTypeUiModel;
            this.f62260c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHowToApplyScrolledEvent)) {
                return false;
            }
            OnHowToApplyScrolledEvent onHowToApplyScrolledEvent = (OnHowToApplyScrolledEvent) obj;
            String str = onHowToApplyScrolledEvent.f62258a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62258a.equals(str) && this.f62259b == onHowToApplyScrolledEvent.f62259b && this.f62260c.equals(onHowToApplyScrolledEvent.f62260c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62260c.hashCode() + d21.b(this.f62259b, this.f62258a.hashCode() * 31, 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sb = new StringBuilder("OnHowToApplyScrolledEvent(vtoSku=");
            sb.append(this.f62258a);
            sb.append(", contentType=");
            sb.append(this.f62259b);
            sb.append(", lookId=");
            return n00.r(this.f62260c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLookClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62262b;

        public OnLookClickedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62261a = str;
            this.f62262b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnLookClickedEvent)) {
                return false;
            }
            OnLookClickedEvent onLookClickedEvent = (OnLookClickedEvent) obj;
            String str = onLookClickedEvent.f62261a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62261a.equals(str) && this.f62262b.equals(onLookClickedEvent.f62262b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62262b.hashCode() + (this.f62261a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnLookClickedEvent(vtoSku=", this.f62261a, ", lookId=", this.f62262b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "<init>", "(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLookSelectorClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62263a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62264b;

        public OnLookSelectorClickedEvent(List list, String str, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            this.f62263a = list;
            this.f62264b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnLookSelectorClickedEvent)) {
                return false;
            }
            OnLookSelectorClickedEvent onLookSelectorClickedEvent = (OnLookSelectorClickedEvent) obj;
            if (!this.f62263a.equals(onLookSelectorClickedEvent.f62263a)) {
                return false;
            }
            String str = onLookSelectorClickedEvent.f62264b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62264b.equals(str);
        }

        public final int hashCode() {
            int iHashCode = this.f62263a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62264b.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnLookSelectorClickedEvent(productSkuList=" + this.f62263a + ", vtoSku=" + this.f62264b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSelectAColorClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62267c;
        public final BeautyVtoMode d;

        public OnSelectAColorClickedEvent(List list, String str, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62265a = list;
            this.f62266b = str;
            this.f62267c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSelectAColorClickedEvent)) {
                return false;
            }
            OnSelectAColorClickedEvent onSelectAColorClickedEvent = (OnSelectAColorClickedEvent) obj;
            if (!this.f62265a.equals(onSelectAColorClickedEvent.f62265a)) {
                return false;
            }
            String str = onSelectAColorClickedEvent.f62266b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62266b.equals(str) && this.f62267c == onSelectAColorClickedEvent.f62267c && this.d == onSelectAColorClickedEvent.d;
        }

        public final int hashCode() {
            int iHashCode = this.f62265a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.d.hashCode() + d21.b(this.f62267c, fc.b(iHashCode, 31, this.f62266b), 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnSelectAColorClickedEvent(productSkuList=" + this.f62265a + ", vtoSku=" + this.f62266b + ", contentType=" + this.f62267c + ", beautyVtoMode=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSharePhotoClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62270c;
        public final BeautyVtoMode d;

        public OnSharePhotoClickedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62268a = list;
            this.f62269b = list2;
            this.f62270c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSharePhotoClickedEvent)) {
                return false;
            }
            OnSharePhotoClickedEvent onSharePhotoClickedEvent = (OnSharePhotoClickedEvent) obj;
            return Intrinsics.c(this.f62268a, onSharePhotoClickedEvent.f62268a) && Intrinsics.c(this.f62269b, onSharePhotoClickedEvent.f62269b) && this.f62270c == onSharePhotoClickedEvent.f62270c && this.d == onSharePhotoClickedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62270c, n00.a(this.f62268a.hashCode() * 31, 31, this.f62269b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnSharePhotoClickedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62268a, this.f62269b);
            sbS.append(this.f62270c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSku", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSnackbarOpenAlertClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyVtoMode f62273c;

        public OnSnackbarOpenAlertClickedEvent(String str, String str2, BeautyVtoMode beautyVtoMode, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            beautyVtoMode.getClass();
            this.f62271a = str;
            this.f62272b = str2;
            this.f62273c = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSnackbarOpenAlertClickedEvent)) {
                return false;
            }
            OnSnackbarOpenAlertClickedEvent onSnackbarOpenAlertClickedEvent = (OnSnackbarOpenAlertClickedEvent) obj;
            String str = onSnackbarOpenAlertClickedEvent.f62271a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62271a.equals(str) && this.f62272b.equals(onSnackbarOpenAlertClickedEvent.f62272b) && this.f62273c == onSnackbarOpenAlertClickedEvent.f62273c;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62273c.hashCode() + fc.b(this.f62271a.hashCode() * 31, 31, this.f62272b);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = fc.s("OnSnackbarOpenAlertClickedEvent(productSku=", this.f62271a, ", vtoSku=", this.f62272b, ", beautyVtoMode=");
            sbS.append(this.f62273c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSnackbarRedirectToCartClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62275b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyVtoMode f62276c;

        public OnSnackbarRedirectToCartClickedEvent(List<SkuIdUiModel> list, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62274a = list;
            this.f62275b = beautyProductTypeUiModel;
            this.f62276c = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSnackbarRedirectToCartClickedEvent)) {
                return false;
            }
            OnSnackbarRedirectToCartClickedEvent onSnackbarRedirectToCartClickedEvent = (OnSnackbarRedirectToCartClickedEvent) obj;
            return Intrinsics.c(this.f62274a, onSnackbarRedirectToCartClickedEvent.f62274a) && this.f62275b == onSnackbarRedirectToCartClickedEvent.f62275b && this.f62276c == onSnackbarRedirectToCartClickedEvent.f62276c;
        }

        public final int hashCode() {
            return this.f62276c.hashCode() + d21.b(this.f62275b, this.f62274a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "OnSnackbarRedirectToCartClickedEvent(productSkuList=" + this.f62274a + ", contentType=" + this.f62275b + ", beautyVtoMode=" + this.f62276c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnStackingClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62277a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62278b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62279c;
        public final BeautyVtoMode d;

        public OnStackingClickedEvent(List list, String str, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode, DefaultConstructorMarker defaultConstructorMarker) {
            list.getClass();
            str.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62277a = list;
            this.f62278b = str;
            this.f62279c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnStackingClickedEvent)) {
                return false;
            }
            OnStackingClickedEvent onStackingClickedEvent = (OnStackingClickedEvent) obj;
            if (!this.f62277a.equals(onStackingClickedEvent.f62277a)) {
                return false;
            }
            String str = onStackingClickedEvent.f62278b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62278b.equals(str) && this.f62279c == onStackingClickedEvent.f62279c && this.d == onStackingClickedEvent.d;
        }

        public final int hashCode() {
            int iHashCode = this.f62277a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.d.hashCode() + d21.b(this.f62279c, fc.b(iHashCode, 31, this.f62278b), 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "OnStackingClickedEvent(productSkuList=" + this.f62277a + ", vtoSku=" + this.f62278b + ", contentType=" + this.f62279c + ", beautyVtoMode=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "vtoSkuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnTakePictureClickedEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62282c;
        public final BeautyVtoMode d;

        public OnTakePictureClickedEvent(List<SkuIdUiModel> list, List<SkuIdUiModel> list2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyVtoMode beautyVtoMode) {
            list.getClass();
            list2.getClass();
            beautyProductTypeUiModel.getClass();
            beautyVtoMode.getClass();
            this.f62280a = list;
            this.f62281b = list2;
            this.f62282c = beautyProductTypeUiModel;
            this.d = beautyVtoMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnTakePictureClickedEvent)) {
                return false;
            }
            OnTakePictureClickedEvent onTakePictureClickedEvent = (OnTakePictureClickedEvent) obj;
            return Intrinsics.c(this.f62280a, onTakePictureClickedEvent.f62280a) && Intrinsics.c(this.f62281b, onTakePictureClickedEvent.f62281b) && this.f62282c == onTakePictureClickedEvent.f62282c && this.d == onTakePictureClickedEvent.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + d21.b(this.f62282c, n00.a(this.f62280a.hashCode() * 31, 31, this.f62281b), 31);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OnTakePictureClickedEvent(productSkuList=", ", vtoSkuList=", ", contentType=", this.f62280a, this.f62281b);
            sbS.append(this.f62282c);
            sbS.append(", beautyVtoMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuList", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenAlertMultipleProductBottomSheetEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyVtoMode f62283a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62284b;

        public OpenAlertMultipleProductBottomSheetEvent(BeautyVtoMode beautyVtoMode, List<SkuIdUiModel> list) {
            beautyVtoMode.getClass();
            list.getClass();
            this.f62283a = beautyVtoMode;
            this.f62284b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OpenAlertMultipleProductBottomSheetEvent)) {
                return false;
            }
            OpenAlertMultipleProductBottomSheetEvent openAlertMultipleProductBottomSheetEvent = (OpenAlertMultipleProductBottomSheetEvent) obj;
            return this.f62283a == openAlertMultipleProductBottomSheetEvent.f62283a && Intrinsics.c(this.f62284b, openAlertMultipleProductBottomSheetEvent.f62284b);
        }

        public final int hashCode() {
            return this.f62284b.hashCode() + (this.f62283a.hashCode() * 31);
        }

        public final String toString() {
            return "OpenAlertMultipleProductBottomSheetEvent(beautyVtoMode=" + this.f62283a + ", skuList=" + this.f62284b + ")";
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "isSelected", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkuList", "<init>", "(ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectSkuMultipleProductBottomSheetEvent implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f62285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyVtoMode f62286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f62287c;

        public SelectSkuMultipleProductBottomSheetEvent(boolean z, BeautyVtoMode beautyVtoMode, List<SkuIdUiModel> list) {
            beautyVtoMode.getClass();
            list.getClass();
            this.f62285a = z;
            this.f62286b = beautyVtoMode;
            this.f62287c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectSkuMultipleProductBottomSheetEvent)) {
                return false;
            }
            SelectSkuMultipleProductBottomSheetEvent selectSkuMultipleProductBottomSheetEvent = (SelectSkuMultipleProductBottomSheetEvent) obj;
            return this.f62285a == selectSkuMultipleProductBottomSheetEvent.f62285a && this.f62286b == selectSkuMultipleProductBottomSheetEvent.f62286b && Intrinsics.c(this.f62287c, selectSkuMultipleProductBottomSheetEvent.f62287c);
        }

        public final int hashCode() {
            return this.f62287c.hashCode() + ((this.f62286b.hashCode() + (Boolean.hashCode(this.f62285a) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SelectSkuMultipleProductBottomSheetEvent(isSelected=");
            sb.append(this.f62285a);
            sb.append(", beautyVtoMode=");
            sb.append(this.f62286b);
            sb.append(", productSkuList=");
            return a.o(sb, this.f62287c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "vtoSku", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "", "lookId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoHowToApplyScreen implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62288a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62289b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62290c;

        public VtoHowToApplyScreen(String str, BeautyProductTypeUiModel beautyProductTypeUiModel, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            beautyProductTypeUiModel.getClass();
            str2.getClass();
            this.f62288a = str;
            this.f62289b = beautyProductTypeUiModel;
            this.f62290c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VtoHowToApplyScreen)) {
                return false;
            }
            VtoHowToApplyScreen vtoHowToApplyScreen = (VtoHowToApplyScreen) obj;
            String str = vtoHowToApplyScreen.f62288a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62288a.equals(str) && this.f62289b == vtoHowToApplyScreen.f62289b && this.f62290c.equals(vtoHowToApplyScreen.f62290c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62290c.hashCode() + d21.b(this.f62289b, this.f62288a.hashCode() * 31, 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sb = new StringBuilder("VtoHowToApplyScreen(vtoSku=");
            sb.append(this.f62288a);
            sb.append(", contentType=");
            sb.append(this.f62289b);
            sb.append(", lookId=");
            return n00.r(this.f62290c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoMultipleProductBottomSheetScreen implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62291a;

        public VtoMultipleProductBottomSheetScreen(List<SkuIdUiModel> list) {
            list.getClass();
            this.f62291a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VtoMultipleProductBottomSheetScreen) && Intrinsics.c(this.f62291a, ((VtoMultipleProductBottomSheetScreen) obj).f62291a);
        }

        public final int hashCode() {
            return this.f62291a.hashCode();
        }

        public final String toString() {
            return d21.o("VtoMultipleProductBottomSheetScreen(skuList=", ")", this.f62291a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuList", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoScreen implements BeautyVtoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyProductTypeUiModel f62293b;

        public VtoScreen(List<SkuIdUiModel> list, BeautyProductTypeUiModel beautyProductTypeUiModel) {
            list.getClass();
            beautyProductTypeUiModel.getClass();
            this.f62292a = list;
            this.f62293b = beautyProductTypeUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VtoScreen)) {
                return false;
            }
            VtoScreen vtoScreen = (VtoScreen) obj;
            return Intrinsics.c(this.f62292a, vtoScreen.f62292a) && this.f62293b == vtoScreen.f62293b;
        }

        public final int hashCode() {
            return this.f62293b.hashCode() + (this.f62292a.hashCode() * 31);
        }

        public final String toString() {
            return "VtoScreen(skuList=" + this.f62292a + ", contentType=" + this.f62293b + ")";
        }
    }
}
