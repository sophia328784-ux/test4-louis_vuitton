package com.vuitton.android.domain.monitoring.cart;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeCartMonitoring {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenCart", "DeleteFromCart", "ModifyQuantityCart", "AddToWishlist", "CheckoutUrl", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$CheckoutUrl;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$DeleteFromCart;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$ModifyQuantityCart;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$OpenCart;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlist implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddToWishlist f48883a = new AddToWishlist();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Add to Wishlist";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddToWishlist);
            }

            public final int hashCode() {
                return 591582807;
            }

            public final String toString() {
                return "AddToWishlist";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$CheckoutUrl;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CheckoutUrl implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final CheckoutUrl f48884a = new CheckoutUrl();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Checkout Webview";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof CheckoutUrl);
            }

            public final int hashCode() {
                return 629813567;
            }

            public final String toString() {
                return "CheckoutUrl";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$DeleteFromCart;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteFromCart implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DeleteFromCart f48885a = new DeleteFromCart();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Delete from Cart";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DeleteFromCart);
            }

            public final int hashCode() {
                return 2120074751;
            }

            public final String toString() {
                return "DeleteFromCart";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$ModifyQuantityCart;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ModifyQuantityCart implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ModifyQuantityCart f48886a = new ModifyQuantityCart();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Modify product quantity in Cart";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ModifyQuantityCart);
            }

            public final int hashCode() {
                return 2036759663;
            }

            public final String toString() {
                return "ModifyQuantityCart";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$OpenCart;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenCart implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenCart f48887a = new OpenCart();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Cart";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenCart);
            }

            public final int hashCode() {
                return -212093612;
            }

            public final String toString() {
                return "OpenCart";
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenCartError", "DeleteFromCartError", "ModifyQuantityCartError", "AddToWishlistError", "CheckoutUrlError", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$CheckoutUrlError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$DeleteFromCartError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$ModifyQuantityCartError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$OpenCartError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlistError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48888a;

            public AddToWishlistError(Throwable th) {
                th.getClass();
                this.f48888a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48888a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddToWishlistError) && Intrinsics.c(this.f48888a, ((AddToWishlistError) obj).f48888a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "add_to_wishlist_error";
            }

            public final int hashCode() {
                return this.f48888a.hashCode();
            }

            public final String toString() {
                return d21.n("AddToWishlistError(error=", ")", this.f48888a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$CheckoutUrlError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CheckoutUrlError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48889a;

            public CheckoutUrlError(Throwable th) {
                th.getClass();
                this.f48889a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48889a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof CheckoutUrlError) && Intrinsics.c(this.f48889a, ((CheckoutUrlError) obj).f48889a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_checkout_webview_error";
            }

            public final int hashCode() {
                return this.f48889a.hashCode();
            }

            public final String toString() {
                return d21.n("CheckoutUrlError(error=", ")", this.f48889a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$DeleteFromCartError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DeleteFromCartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48890a;

            public DeleteFromCartError(Throwable th) {
                th.getClass();
                this.f48890a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48890a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DeleteFromCartError) && Intrinsics.c(this.f48890a, ((DeleteFromCartError) obj).f48890a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "delete_from_cart_error";
            }

            public final int hashCode() {
                return this.f48890a.hashCode();
            }

            public final String toString() {
                return d21.n("DeleteFromCartError(error=", ")", this.f48890a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$ModifyQuantityCartError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ModifyQuantityCartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48891a;

            public ModifyQuantityCartError(Throwable th) {
                th.getClass();
                this.f48891a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48891a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ModifyQuantityCartError) && Intrinsics.c(this.f48891a, ((ModifyQuantityCartError) obj).f48891a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "modify_quantity_cart_error";
            }

            public final int hashCode() {
                return this.f48891a.hashCode();
            }

            public final String toString() {
                return d21.n("ModifyQuantityCartError(error=", ")", this.f48891a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$OpenCartError;", "Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenCartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48892a;

            public OpenCartError(Throwable th) {
                th.getClass();
                this.f48892a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48892a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenCartError) && Intrinsics.c(this.f48892a, ((OpenCartError) obj).f48892a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_cart_error";
            }

            public final int hashCode() {
                return this.f48892a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenCartError(error=", ")", this.f48892a);
            }
        }
    }
}
