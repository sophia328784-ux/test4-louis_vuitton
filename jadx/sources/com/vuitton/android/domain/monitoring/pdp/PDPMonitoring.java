package com.vuitton.android.domain.monitoring.pdp;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PDPMonitoring {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "LoadProductDetailsScreen", "AddToCartAction", "GetAvailability", "SubscribeBackInStock", "LoadYouMayAlsoLike", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$AddToCartAction;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$GetAvailability;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadProductDetailsScreen;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadYouMayAlsoLike;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$SubscribeBackInStock;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$AddToCartAction;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToCartAction implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddToCartAction f48971a = new AddToCartAction();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Add to Cart";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddToCartAction);
            }

            public final int hashCode() {
                return -2036652605;
            }

            public final String toString() {
                return "AddToCartAction";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$GetAvailability;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GetAvailability implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final GetAvailability f48972a = new GetAvailability();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Retrieve Product Availability";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof GetAvailability);
            }

            public final int hashCode() {
                return 182554626;
            }

            public final String toString() {
                return "GetAvailability";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadProductDetailsScreen;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadProductDetailsScreen implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadProductDetailsScreen f48973a = new LoadProductDetailsScreen();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open PDP";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadProductDetailsScreen);
            }

            public final int hashCode() {
                return 591187348;
            }

            public final String toString() {
                return "LoadProductDetailsScreen";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadYouMayAlsoLike;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadYouMayAlsoLike implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadYouMayAlsoLike f48974a = new LoadYouMayAlsoLike();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "YMAL";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadYouMayAlsoLike);
            }

            public final int hashCode() {
                return -1191692391;
            }

            public final String toString() {
                return "LoadYouMayAlsoLike";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$SubscribeBackInStock;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SubscribeBackInStock implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SubscribeBackInStock f48975a = new SubscribeBackInStock();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Notify Me";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof SubscribeBackInStock);
            }

            public final int hashCode() {
                return 1835008207;
            }

            public final String toString() {
                return "SubscribeBackInStock";
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "LoadProductScreenError", "AddToCartError", "GetAvailabilityError", "SubscribeBackInStockError", "LoadYouMayAlsoLikeError", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$AddToCartError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$GetAvailabilityError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadProductScreenError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadYouMayAlsoLikeError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$SubscribeBackInStockError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$AddToCartError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToCartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48976a;

            public AddToCartError(Throwable th) {
                th.getClass();
                this.f48976a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48976a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddToCartError) && Intrinsics.c(this.f48976a, ((AddToCartError) obj).f48976a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "add_to_cart_error";
            }

            public final int hashCode() {
                return this.f48976a.hashCode();
            }

            public final String toString() {
                return d21.n("AddToCartError(error=", ")", this.f48976a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$GetAvailabilityError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class GetAvailabilityError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48977a;

            public GetAvailabilityError(Throwable th) {
                th.getClass();
                this.f48977a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48977a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof GetAvailabilityError) && Intrinsics.c(this.f48977a, ((GetAvailabilityError) obj).f48977a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "retrieve_product_availability_error";
            }

            public final int hashCode() {
                return this.f48977a.hashCode();
            }

            public final String toString() {
                return d21.n("GetAvailabilityError(error=", ")", this.f48977a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadProductScreenError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadProductScreenError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48978a;

            public LoadProductScreenError(Throwable th) {
                th.getClass();
                this.f48978a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48978a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadProductScreenError) && Intrinsics.c(this.f48978a, ((LoadProductScreenError) obj).f48978a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_pdp_error";
            }

            public final int hashCode() {
                return this.f48978a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadProductScreenError(error=", ")", this.f48978a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadYouMayAlsoLikeError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadYouMayAlsoLikeError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48979a;

            public LoadYouMayAlsoLikeError(Throwable th) {
                th.getClass();
                this.f48979a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48979a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadYouMayAlsoLikeError) && Intrinsics.c(this.f48979a, ((LoadYouMayAlsoLikeError) obj).f48979a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "ymal_error";
            }

            public final int hashCode() {
                return this.f48979a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadYouMayAlsoLikeError(error=", ")", this.f48979a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$SubscribeBackInStockError;", "Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SubscribeBackInStockError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48980a;

            public SubscribeBackInStockError(Throwable th) {
                th.getClass();
                this.f48980a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48980a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SubscribeBackInStockError) && Intrinsics.c(this.f48980a, ((SubscribeBackInStockError) obj).f48980a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "notify_me_error";
            }

            public final int hashCode() {
                return this.f48980a.hashCode();
            }

            public final String toString() {
                return d21.n("SubscribeBackInStockError(error=", ")", this.f48980a);
            }
        }
    }
}
