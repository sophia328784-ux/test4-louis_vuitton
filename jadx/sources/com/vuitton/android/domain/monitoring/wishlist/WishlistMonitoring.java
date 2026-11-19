package com.vuitton.android.domain.monitoring.wishlist;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WishlistMonitoring {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenWishlist", "AddToWishlist", "RemoveFromWishlist", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$OpenWishlist;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlist implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddToWishlist f48999a = new AddToWishlist();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Add to Wishlist";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddToWishlist);
            }

            public final int hashCode() {
                return 209059214;
            }

            public final String toString() {
                return "AddToWishlist";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$OpenWishlist;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenWishlist implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenWishlist f49000a = new OpenWishlist();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyWishlist";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenWishlist);
            }

            public final int hashCode() {
                return 2111851490;
            }

            public final String toString() {
                return "OpenWishlist";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RemoveFromWishlist implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final RemoveFromWishlist f49001a = new RemoveFromWishlist();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Delete from Wishlist";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof RemoveFromWishlist);
            }

            public final int hashCode() {
                return 1701196198;
            }

            public final String toString() {
                return "RemoveFromWishlist";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenWishlistError", "AddToWishlistError", "RemoveFromWishlistError", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlistError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f49002a;

            public AddToWishlistError(Throwable th) {
                th.getClass();
                this.f49002a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f49002a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddToWishlistError) && Intrinsics.c(this.f49002a, ((AddToWishlistError) obj).f49002a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "add_to_wishlist_error";
            }

            public final int hashCode() {
                return this.f49002a.hashCode();
            }

            public final String toString() {
                return d21.n("AddToWishlistError(error=", ")", this.f49002a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenWishlistError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f49003a;

            public OpenWishlistError(Throwable th) {
                th.getClass();
                this.f49003a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f49003a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenWishlistError) && Intrinsics.c(this.f49003a, ((OpenWishlistError) obj).f49003a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_my_wishlist_error";
            }

            public final int hashCode() {
                return this.f49003a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenWishlistError(error=", ")", this.f49003a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;", "Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RemoveFromWishlistError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f49004a;

            public RemoveFromWishlistError(Throwable th) {
                th.getClass();
                this.f49004a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f49004a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof RemoveFromWishlistError) && Intrinsics.c(this.f49004a, ((RemoveFromWishlistError) obj).f49004a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "delete_from_wishlist_error";
            }

            public final int hashCode() {
                return this.f49004a.hashCode();
            }

            public final String toString() {
                return d21.n("RemoveFromWishlistError(error=", ")", this.f49004a);
            }
        }
    }
}
