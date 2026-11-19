package com.vuitton.android.domain.monitoring.orders;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrdersMonitoring {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyOrders", "ExchangeFetchVariations", "ExchangeSetup", "ExchangeSubmit", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeFetchVariations;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSetup;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSubmit;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$OpenMyOrders;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeFetchVariations;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeFetchVariations implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ExchangeFetchVariations f48951a = new ExchangeFetchVariations();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Fetch Variations Exchange";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ExchangeFetchVariations);
            }

            public final int hashCode() {
                return 1325814564;
            }

            public final String toString() {
                return "ExchangeFetchVariations";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSetup;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeSetup implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ExchangeSetup f48952a = new ExchangeSetup();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Exchange Setup";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ExchangeSetup);
            }

            public final int hashCode() {
                return 968576775;
            }

            public final String toString() {
                return "ExchangeSetup";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSubmit;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeSubmit implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ExchangeSubmit f48953a = new ExchangeSubmit();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Exchange Submit";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ExchangeSubmit);
            }

            public final int hashCode() {
                return -24658738;
            }

            public final String toString() {
                return "ExchangeSubmit";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$OpenMyOrders;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyOrders implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyOrders f48954a = new OpenMyOrders();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyOrders";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyOrders);
            }

            public final int hashCode() {
                return 720700814;
            }

            public final String toString() {
                return "OpenMyOrders";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyOrdersError", "ExchangeFetchVariationsError", "ExchangeSetupError", "ExchangeSubmitError", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeFetchVariationsError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSetupError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSubmitError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$OpenMyOrdersError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeFetchVariationsError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeFetchVariationsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48955a;

            public ExchangeFetchVariationsError(Throwable th) {
                th.getClass();
                this.f48955a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48955a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ExchangeFetchVariationsError) && Intrinsics.c(this.f48955a, ((ExchangeFetchVariationsError) obj).f48955a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "fetch_variations_exchange_error";
            }

            public final int hashCode() {
                return this.f48955a.hashCode();
            }

            public final String toString() {
                return d21.n("ExchangeFetchVariationsError(error=", ")", this.f48955a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSetupError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeSetupError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48956a;

            public ExchangeSetupError(Throwable th) {
                th.getClass();
                this.f48956a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48956a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ExchangeSetupError) && Intrinsics.c(this.f48956a, ((ExchangeSetupError) obj).f48956a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "exchange_setup_error";
            }

            public final int hashCode() {
                return this.f48956a.hashCode();
            }

            public final String toString() {
                return d21.n("ExchangeSetupError(error=", ")", this.f48956a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSubmitError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ExchangeSubmitError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48957a;

            public ExchangeSubmitError(Throwable th) {
                th.getClass();
                this.f48957a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48957a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ExchangeSubmitError) && Intrinsics.c(this.f48957a, ((ExchangeSubmitError) obj).f48957a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "exchange_submit_error";
            }

            public final int hashCode() {
                return this.f48957a.hashCode();
            }

            public final String toString() {
                return d21.n("ExchangeSubmitError(error=", ")", this.f48957a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$OpenMyOrdersError;", "Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyOrdersError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48958a;

            public OpenMyOrdersError(Throwable th) {
                th.getClass();
                this.f48958a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48958a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyOrdersError) && Intrinsics.c(this.f48958a, ((OpenMyOrdersError) obj).f48958a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_myorders_error";
            }

            public final int hashCode() {
                return this.f48958a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyOrdersError(error=", ")", this.f48958a);
            }
        }
    }
}
