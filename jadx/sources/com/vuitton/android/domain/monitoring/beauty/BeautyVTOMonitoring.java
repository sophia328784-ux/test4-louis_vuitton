package com.vuitton.android.domain.monitoring.beauty;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BeautyVTOMonitoring {

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenBeautyVTO", "FetchVariationsVTO", "FetchSDKModel", "AddToWishlist", "RecommendedShadeFinder", "OpenLooksDetail", "AddToCart", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToCart;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchSDKModel;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchVariationsVTO;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenBeautyVTO;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenLooksDetail;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$RecommendedShadeFinder;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToCart;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToCart implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddToCart f48834a = new AddToCart();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Multiple ATC";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddToCart);
            }

            public final int hashCode() {
                return 386304698;
            }

            public final String toString() {
                return "AddToCart";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToWishlist;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlist implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AddToWishlist f48835a = new AddToWishlist();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Add to Wishlist";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AddToWishlist);
            }

            public final int hashCode() {
                return -1930008481;
            }

            public final String toString() {
                return "AddToWishlist";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchSDKModel;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class FetchSDKModel implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final FetchSDKModel f48836a = new FetchSDKModel();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "FetchSDKModel";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof FetchSDKModel);
            }

            public final int hashCode() {
                return 1130931047;
            }

            public final String toString() {
                return "FetchSDKModel";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchVariationsVTO;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class FetchVariationsVTO implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final FetchVariationsVTO f48837a = new FetchVariationsVTO();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Fetch Variations VTO";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof FetchVariationsVTO);
            }

            public final int hashCode() {
                return -970936519;
            }

            public final String toString() {
                return "FetchVariationsVTO";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenBeautyVTO;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenBeautyVTO implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenBeautyVTO f48838a = new OpenBeautyVTO();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Beauty VTO";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenBeautyVTO);
            }

            public final int hashCode() {
                return 1409168297;
            }

            public final String toString() {
                return "OpenBeautyVTO";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenLooksDetail;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenLooksDetail implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenLooksDetail f48839a = new OpenLooksDetail();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Looks Detail";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenLooksDetail);
            }

            public final int hashCode() {
                return 663408249;
            }

            public final String toString() {
                return "OpenLooksDetail";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$RecommendedShadeFinder;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RecommendedShadeFinder implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final RecommendedShadeFinder f48840a = new RecommendedShadeFinder();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Recommended Shade Finder";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof RecommendedShadeFinder);
            }

            public final int hashCode() {
                return -498052710;
            }

            public final String toString() {
                return "RecommendedShadeFinder";
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "FetchVariationsVTOError", "FetchSDKModelError", "RecommendedShadeFinderError", "AddToWishlistError", "OpenLooksDetailError", "AddToCartError", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$FetchSDKModelError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$FetchVariationsVTOError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$OpenLooksDetailError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$RecommendedShadeFinderError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "isPartialError", "", "error", "<init>", "(ZLjava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToCartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final boolean f48841a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Throwable f48842b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f48843c;

            public AddToCartError(boolean z, Throwable th) {
                th.getClass();
                this.f48841a = z;
                this.f48842b = th;
                this.f48843c = z ? "multiple_atc_partial_error" : "multiple_atc_error";
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48842b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AddToCartError)) {
                    return false;
                }
                AddToCartError addToCartError = (AddToCartError) obj;
                return this.f48841a == addToCartError.f48841a && Intrinsics.c(this.f48842b, addToCartError.f48842b);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName, reason: from getter */
            public final String getF48843c() {
                return this.f48843c;
            }

            public final int hashCode() {
                return this.f48842b.hashCode() + (Boolean.hashCode(this.f48841a) * 31);
            }

            public final String toString() {
                return "AddToCartError(isPartialError=" + this.f48841a + ", error=" + this.f48842b + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToWishlistError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToWishlistError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48844a;

            public AddToWishlistError(Throwable th) {
                th.getClass();
                this.f48844a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48844a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddToWishlistError) && Intrinsics.c(this.f48844a, ((AddToWishlistError) obj).f48844a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "add_to_wishlist_error";
            }

            public final int hashCode() {
                return this.f48844a.hashCode();
            }

            public final String toString() {
                return d21.n("AddToWishlistError(error=", ")", this.f48844a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$FetchSDKModelError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class FetchSDKModelError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48845a;

            public FetchSDKModelError(Throwable th) {
                th.getClass();
                this.f48845a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48845a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof FetchSDKModelError) && Intrinsics.c(this.f48845a, ((FetchSDKModelError) obj).f48845a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "fetch_sdk_model_error";
            }

            public final int hashCode() {
                return this.f48845a.hashCode();
            }

            public final String toString() {
                return d21.n("FetchSDKModelError(error=", ")", this.f48845a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$FetchVariationsVTOError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class FetchVariationsVTOError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48846a;

            public FetchVariationsVTOError(Throwable th) {
                th.getClass();
                this.f48846a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48846a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof FetchVariationsVTOError) && Intrinsics.c(this.f48846a, ((FetchVariationsVTOError) obj).f48846a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "fetch_variations_vto_error";
            }

            public final int hashCode() {
                return this.f48846a.hashCode();
            }

            public final String toString() {
                return d21.n("FetchVariationsVTOError(error=", ")", this.f48846a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$OpenLooksDetailError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenLooksDetailError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48847a;

            public OpenLooksDetailError(Throwable th) {
                th.getClass();
                this.f48847a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48847a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenLooksDetailError) && Intrinsics.c(this.f48847a, ((OpenLooksDetailError) obj).f48847a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_looks_detail_error";
            }

            public final int hashCode() {
                return this.f48847a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenLooksDetailError(error=", ")", this.f48847a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$RecommendedShadeFinderError;", "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RecommendedShadeFinderError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48848a;

            public RecommendedShadeFinderError(Throwable th) {
                th.getClass();
                this.f48848a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48848a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof RecommendedShadeFinderError) && Intrinsics.c(this.f48848a, ((RecommendedShadeFinderError) obj).f48848a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "recommended_shade_finder_error";
            }

            public final int hashCode() {
                return this.f48848a.hashCode();
            }

            public final String toString() {
                return d21.n("RecommendedShadeFinderError(error=", ")", this.f48848a);
            }
        }
    }
}
