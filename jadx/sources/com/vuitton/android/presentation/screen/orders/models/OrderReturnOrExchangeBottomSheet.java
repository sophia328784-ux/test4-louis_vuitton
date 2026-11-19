package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "", "Policy", "ReturnRequest", "SizeGuide", "ExchangeRequest", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ExchangeRequest;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$Policy;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ReturnRequest;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderReturnOrExchangeBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ExchangeRequest;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExchangeRequest implements OrderReturnOrExchangeBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExchangeRequest f60291a = new ExchangeRequest();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExchangeRequest);
        }

        public final int hashCode() {
            return 1226867944;
        }

        public final String toString() {
            return "ExchangeRequest";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$Policy;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Policy implements OrderReturnOrExchangeBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Policy f60292a = new Policy();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Policy);
        }

        public final int hashCode() {
            return -1806527562;
        }

        public final String toString() {
            return "Policy";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ReturnRequest;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReturnRequest implements OrderReturnOrExchangeBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ReturnRequest f60293a = new ReturnRequest();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReturnRequest);
        }

        public final int hashCode() {
            return -86930373;
        }

        public final String toString() {
            return "ReturnRequest";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;", "requestState", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V", "SizeGuideRequest", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SizeGuide implements OrderReturnOrExchangeBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SizeGuideRequest f60294a;

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;", "", "Loading", "Result", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public interface SizeGuideRequest {

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Loading implements SizeGuideRequest {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final Loading f60295a = new Loading();

                public final boolean equals(Object obj) {
                    return this == obj || (obj instanceof Loading);
                }

                public final int hashCode() {
                    return -443944071;
                }

                public final String toString() {
                    return "Loading";
                }
            }

            @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "item", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;", "sizeGuide", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Result implements SizeGuideRequest {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final TransactionItemUiModel f60296a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final SizeGuideUiModel f60297b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final InAppDispatch f60298c;

                public Result(TransactionItemUiModel transactionItemUiModel, SizeGuideUiModel sizeGuideUiModel, InAppDispatch inAppDispatch) {
                    transactionItemUiModel.getClass();
                    sizeGuideUiModel.getClass();
                    inAppDispatch.getClass();
                    this.f60296a = transactionItemUiModel;
                    this.f60297b = sizeGuideUiModel;
                    this.f60298c = inAppDispatch;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof Result)) {
                        return false;
                    }
                    Result result = (Result) obj;
                    return Intrinsics.c(this.f60296a, result.f60296a) && Intrinsics.c(this.f60297b, result.f60297b) && Intrinsics.c(this.f60298c, result.f60298c);
                }

                public final int hashCode() {
                    return this.f60298c.hashCode() + ((this.f60297b.hashCode() + (this.f60296a.hashCode() * 31)) * 31);
                }

                public final String toString() {
                    return "Result(item=" + this.f60296a + ", sizeGuide=" + this.f60297b + ", inAppDispatch=" + this.f60298c + ")";
                }
            }
        }

        public SizeGuide(SizeGuideRequest sizeGuideRequest) {
            sizeGuideRequest.getClass();
            this.f60294a = sizeGuideRequest;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SizeGuide) && Intrinsics.c(this.f60294a, ((SizeGuide) obj).f60294a);
        }

        public final int hashCode() {
            return this.f60294a.hashCode();
        }

        public final String toString() {
            return "SizeGuide(requestState=" + this.f60294a + ")";
        }
    }
}
