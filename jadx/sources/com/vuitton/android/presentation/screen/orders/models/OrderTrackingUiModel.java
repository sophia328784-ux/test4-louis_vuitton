package com.vuitton.android.presentation.screen.orders.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f \u0082\u0001\u001f!\"#$%&'()*+,-./0123456789:;<=>?¨\u0006@À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "ListPage", "ReturnClick", "ReturnOrExchangeDetailClick", "InvoiceClick", "ReturnFormScreen", "ReturnReviewScreen", "ReturnSuccessScreen", "ExchangeSelectionScreen", "ExchangeVariationScreen", "ExchangeReviewScreen", "ExchangeSuccessBottomSheet", "ProductSelectionForReturn", "ReturnContinueClick", "ReturnConfirmClick", "ReturnCancelClick", "ReturnValidationClick", "TrackingLinkClick", "DetailImageClick", "RequestExchangeClick", "RequestReturnClick", "ContactUsFromSelectionClick", "ContactUsFromVariationClick", "ContactUsFromReviewClick", "ExchangePolicyClick", "OpenSizeGuideClick", "SelectVariationClick", "ConfirmVariationClick", "ModifyVariationClick", "ConfirmExchangeClick", "ValidateBottomSheetClick", "ExchangeFailure", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromReviewClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromSelectionClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangePolicyClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$OpenSizeGuideClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnSuccessScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderTrackingUiModel {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "shippingMethod", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmExchangeClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60336b;

        public ConfirmExchangeClick(List<SkuId> list, String str) {
            list.getClass();
            str.getClass();
            this.f60335a = list;
            this.f60336b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfirmExchangeClick)) {
                return false;
            }
            ConfirmExchangeClick confirmExchangeClick = (ConfirmExchangeClick) obj;
            return Intrinsics.c(this.f60335a, confirmExchangeClick.f60335a) && Intrinsics.c(this.f60336b, confirmExchangeClick.f60336b);
        }

        public final int hashCode() {
            return this.f60336b.hashCode() + (this.f60335a.hashCode() * 31);
        }

        public final String toString() {
            return "ConfirmExchangeClick(skus=" + this.f60335a + ", shippingMethod=" + this.f60336b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmVariationClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60337a;

        public ConfirmVariationClick(List<SkuId> list) {
            list.getClass();
            this.f60337a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConfirmVariationClick) && Intrinsics.c(this.f60337a, ((ConfirmVariationClick) obj).f60337a);
        }

        public final int hashCode() {
            return this.f60337a.hashCode();
        }

        public final String toString() {
            return d21.o("ConfirmVariationClick(skus=", ")", this.f60337a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromReviewClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactUsFromReviewClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactUsFromReviewClick f60338a = new ContactUsFromReviewClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactUsFromReviewClick);
        }

        public final int hashCode() {
            return -182665428;
        }

        public final String toString() {
            return "ContactUsFromReviewClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromSelectionClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactUsFromSelectionClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactUsFromSelectionClick f60339a = new ContactUsFromSelectionClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactUsFromSelectionClick);
        }

        public final int hashCode() {
            return -1456739392;
        }

        public final String toString() {
            return "ContactUsFromSelectionClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactUsFromVariationClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactUsFromVariationClick f60340a = new ContactUsFromVariationClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactUsFromVariationClick);
        }

        public final int hashCode() {
            return 769849241;
        }

        public final String toString() {
            return "ContactUsFromVariationClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DetailImageClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OrderTrackingDataUiModel f60341a;

        public DetailImageClick(OrderTrackingDataUiModel orderTrackingDataUiModel) {
            orderTrackingDataUiModel.getClass();
            this.f60341a = orderTrackingDataUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DetailImageClick) && Intrinsics.c(this.f60341a, ((DetailImageClick) obj).f60341a);
        }

        public final int hashCode() {
            return this.f60341a.hashCode();
        }

        public final String toString() {
            return "DetailImageClick(data=" + this.f60341a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "errorCode", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeFailure implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60343b;

        public ExchangeFailure(List<SkuId> list, String str) {
            list.getClass();
            str.getClass();
            this.f60342a = list;
            this.f60343b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExchangeFailure)) {
                return false;
            }
            ExchangeFailure exchangeFailure = (ExchangeFailure) obj;
            return Intrinsics.c(this.f60342a, exchangeFailure.f60342a) && Intrinsics.c(this.f60343b, exchangeFailure.f60343b);
        }

        public final int hashCode() {
            return this.f60343b.hashCode() + (this.f60342a.hashCode() * 31);
        }

        public final String toString() {
            return "ExchangeFailure(skus=" + this.f60342a + ", errorCode=" + this.f60343b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangePolicyClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangePolicyClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExchangePolicyClick f60344a = new ExchangePolicyClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExchangePolicyClick);
        }

        public final int hashCode() {
            return 737773551;
        }

        public final String toString() {
            return "ExchangePolicyClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeReviewScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60345a;

        public ExchangeReviewScreen(List<SkuId> list) {
            list.getClass();
            this.f60345a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExchangeReviewScreen) && Intrinsics.c(this.f60345a, ((ExchangeReviewScreen) obj).f60345a);
        }

        public final int hashCode() {
            return this.f60345a.hashCode();
        }

        public final String toString() {
            return d21.o("ExchangeReviewScreen(skus=", ")", this.f60345a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "isExchangeEnabled", "<init>", "(Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeSelectionScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f60347b;

        public ExchangeSelectionScreen(List<SkuId> list, boolean z) {
            list.getClass();
            this.f60346a = list;
            this.f60347b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExchangeSelectionScreen)) {
                return false;
            }
            ExchangeSelectionScreen exchangeSelectionScreen = (ExchangeSelectionScreen) obj;
            return Intrinsics.c(this.f60346a, exchangeSelectionScreen.f60346a) && this.f60347b == exchangeSelectionScreen.f60347b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60347b) + (this.f60346a.hashCode() * 31);
        }

        public final String toString() {
            return "ExchangeSelectionScreen(skus=" + this.f60346a + ", isExchangeEnabled=" + this.f60347b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeSuccessBottomSheet implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60348a;

        public ExchangeSuccessBottomSheet(List<SkuId> list) {
            list.getClass();
            this.f60348a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExchangeSuccessBottomSheet) && Intrinsics.c(this.f60348a, ((ExchangeSuccessBottomSheet) obj).f60348a);
        }

        public final int hashCode() {
            return this.f60348a.hashCode();
        }

        public final String toString() {
            return d21.o("ExchangeSuccessBottomSheet(skus=", ")", this.f60348a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeVariationScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60349a;

        public ExchangeVariationScreen(List<SkuId> list) {
            list.getClass();
            this.f60349a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExchangeVariationScreen) && Intrinsics.c(this.f60349a, ((ExchangeVariationScreen) obj).f60349a);
        }

        public final int hashCode() {
            return this.f60349a.hashCode();
        }

        public final String toString() {
            return d21.o("ExchangeVariationScreen(skus=", ")", this.f60349a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InvoiceClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final InvoiceClick f60350a = new InvoiceClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InvoiceClick);
        }

        public final int hashCode() {
            return -2036724929;
        }

        public final String toString() {
            return "InvoiceClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;", "purchasesOngoing", "purchasesHistory", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ListPage implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f60352b;

        public ListPage(List<PurchasedOrderUiModel> list, List<PurchasedOrderUiModel> list2) {
            list.getClass();
            list2.getClass();
            this.f60351a = list;
            this.f60352b = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListPage)) {
                return false;
            }
            ListPage listPage = (ListPage) obj;
            return Intrinsics.c(this.f60351a, listPage.f60351a) && Intrinsics.c(this.f60352b, listPage.f60352b);
        }

        public final int hashCode() {
            return this.f60352b.hashCode() + (this.f60351a.hashCode() * 31);
        }

        public final String toString() {
            return "ListPage(purchasesOngoing=" + this.f60351a + ", purchasesHistory=" + this.f60352b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyVariationClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60353a;

        public ModifyVariationClick(List<SkuId> list) {
            list.getClass();
            this.f60353a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModifyVariationClick) && Intrinsics.c(this.f60353a, ((ModifyVariationClick) obj).f60353a);
        }

        public final int hashCode() {
            return this.f60353a.hashCode();
        }

        public final String toString() {
            return d21.o("ModifyVariationClick(skus=", ")", this.f60353a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$OpenSizeGuideClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenSizeGuideClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenSizeGuideClick f60354a = new OpenSizeGuideClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenSizeGuideClick);
        }

        public final int hashCode() {
            return 1682373019;
        }

        public final String toString() {
            return "OpenSizeGuideClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductSelectionForReturn implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60355a;

        public ProductSelectionForReturn(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f60355a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductSelectionForReturn)) {
                return false;
            }
            String str = ((ProductSelectionForReturn) obj).f60355a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f60355a.equals(str);
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f60355a.hashCode();
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return fc.h("ProductSelectionForReturn(sku=", this.f60355a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestExchangeClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60356a;

        public RequestExchangeClick(List<SkuId> list) {
            list.getClass();
            this.f60356a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RequestExchangeClick) && Intrinsics.c(this.f60356a, ((RequestExchangeClick) obj).f60356a);
        }

        public final int hashCode() {
            return this.f60356a.hashCode();
        }

        public final String toString() {
            return d21.o("RequestExchangeClick(skus=", ")", this.f60356a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestReturnClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60357a;

        public RequestReturnClick(List<SkuId> list) {
            list.getClass();
            this.f60357a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RequestReturnClick) && Intrinsics.c(this.f60357a, ((RequestReturnClick) obj).f60357a);
        }

        public final int hashCode() {
            return this.f60357a.hashCode();
        }

        public final String toString() {
            return d21.o("RequestReturnClick(skus=", ")", this.f60357a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnCancelClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60358a;

        public ReturnCancelClick(List<SkuId> list) {
            list.getClass();
            this.f60358a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnCancelClick) && Intrinsics.c(this.f60358a, ((ReturnCancelClick) obj).f60358a);
        }

        public final int hashCode() {
            return this.f60358a.hashCode();
        }

        public final String toString() {
            return d21.o("ReturnCancelClick(skus=", ")", this.f60358a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ReturnClick f60359a = new ReturnClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReturnClick);
        }

        public final int hashCode() {
            return -1131174700;
        }

        public final String toString() {
            return "ReturnClick";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "quantity", "reasons", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnConfirmClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f60362c;

        public ReturnConfirmClick(List<SkuId> list, String str, List<String> list2) {
            list.getClass();
            str.getClass();
            list2.getClass();
            this.f60360a = list;
            this.f60361b = str;
            this.f60362c = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReturnConfirmClick)) {
                return false;
            }
            ReturnConfirmClick returnConfirmClick = (ReturnConfirmClick) obj;
            return Intrinsics.c(this.f60360a, returnConfirmClick.f60360a) && Intrinsics.c(this.f60361b, returnConfirmClick.f60361b) && Intrinsics.c(this.f60362c, returnConfirmClick.f60362c);
        }

        public final int hashCode() {
            return this.f60362c.hashCode() + fc.b(this.f60360a.hashCode() * 31, 31, this.f60361b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ReturnConfirmClick(skus=");
            sb.append(this.f60360a);
            sb.append(", quantity=");
            sb.append(this.f60361b);
            sb.append(", reasons=");
            return a.o(sb, this.f60362c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnContinueClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60363a;

        public ReturnContinueClick(List<SkuId> list) {
            list.getClass();
            this.f60363a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnContinueClick) && Intrinsics.c(this.f60363a, ((ReturnContinueClick) obj).f60363a);
        }

        public final int hashCode() {
            return this.f60363a.hashCode();
        }

        public final String toString() {
            return d21.o("ReturnContinueClick(skus=", ")", this.f60363a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnFormScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60364a;

        public ReturnFormScreen(List<SkuId> list) {
            list.getClass();
            this.f60364a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnFormScreen) && Intrinsics.c(this.f60364a, ((ReturnFormScreen) obj).f60364a);
        }

        public final int hashCode() {
            return this.f60364a.hashCode();
        }

        public final String toString() {
            return d21.o("ReturnFormScreen(skus=", ")", this.f60364a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "isExchangeEnabled", "<init>", "(Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnOrExchangeDetailClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f60366b;

        public ReturnOrExchangeDetailClick(List<SkuId> list, boolean z) {
            list.getClass();
            this.f60365a = list;
            this.f60366b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReturnOrExchangeDetailClick)) {
                return false;
            }
            ReturnOrExchangeDetailClick returnOrExchangeDetailClick = (ReturnOrExchangeDetailClick) obj;
            return Intrinsics.c(this.f60365a, returnOrExchangeDetailClick.f60365a) && this.f60366b == returnOrExchangeDetailClick.f60366b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60366b) + (this.f60365a.hashCode() * 31);
        }

        public final String toString() {
            return "ReturnOrExchangeDetailClick(skus=" + this.f60365a + ", isExchangeEnabled=" + this.f60366b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnReviewScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60367a;

        public ReturnReviewScreen(List<SkuId> list) {
            list.getClass();
            this.f60367a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnReviewScreen) && Intrinsics.c(this.f60367a, ((ReturnReviewScreen) obj).f60367a);
        }

        public final int hashCode() {
            return this.f60367a.hashCode();
        }

        public final String toString() {
            return d21.o("ReturnReviewScreen(skus=", ")", this.f60367a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnSuccessScreen;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnSuccessScreen implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ReturnSuccessScreen f60368a = new ReturnSuccessScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReturnSuccessScreen);
        }

        public final int hashCode() {
            return 1353871771;
        }

        public final String toString() {
            return "ReturnSuccessScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnValidationClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60369a;

        public ReturnValidationClick(List<SkuId> list) {
            list.getClass();
            this.f60369a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReturnValidationClick) && Intrinsics.c(this.f60369a, ((ReturnValidationClick) obj).f60369a);
        }

        public final int hashCode() {
            return this.f60369a.hashCode();
        }

        public final String toString() {
            return d21.o("ReturnValidationClick(skus=", ")", this.f60369a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "categoryId", "label", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectVariationClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60371b;

        public SelectVariationClick(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f60370a = str;
            this.f60371b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectVariationClick)) {
                return false;
            }
            SelectVariationClick selectVariationClick = (SelectVariationClick) obj;
            return Intrinsics.c(this.f60370a, selectVariationClick.f60370a) && Intrinsics.c(this.f60371b, selectVariationClick.f60371b);
        }

        public final int hashCode() {
            return this.f60371b.hashCode() + (this.f60370a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("SelectVariationClick(categoryId=", this.f60370a, ", label=", this.f60371b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TrackingLinkClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OrderTrackingDataUiModel f60372a;

        public TrackingLinkClick(OrderTrackingDataUiModel orderTrackingDataUiModel) {
            orderTrackingDataUiModel.getClass();
            this.f60372a = orderTrackingDataUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TrackingLinkClick) && Intrinsics.c(this.f60372a, ((TrackingLinkClick) obj).f60372a);
        }

        public final int hashCode() {
            return this.f60372a.hashCode();
        }

        public final String toString() {
            return "TrackingLinkClick(data=" + this.f60372a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ValidateBottomSheetClick implements OrderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60373a;

        public ValidateBottomSheetClick(List<SkuId> list) {
            list.getClass();
            this.f60373a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ValidateBottomSheetClick) && Intrinsics.c(this.f60373a, ((ValidateBottomSheetClick) obj).f60373a);
        }

        public final int hashCode() {
            return this.f60373a.hashCode();
        }

        public final String toString() {
            return d21.o("ValidateBottomSheetClick(skus=", ")", this.f60373a);
        }
    }
}
