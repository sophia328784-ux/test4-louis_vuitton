package com.vuitton.android.domain.monitoring.mylv;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyLvMonitoring {

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\u000b\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017¨\u0006\u0018À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyLV", "LoadUsername", "LoadOsa", "LoadMyOrders", "LoadMyCertificates", "LoadMyExclusiveOffers", "LoadMyInbox", "LoadMyCareService", "LoadBookings", "LoadLvPass", "DisplayLvPass", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$DisplayLvPass;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadBookings;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadLvPass;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCareService;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCertificates;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyExclusiveOffers;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyInbox;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyOrders;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadOsa;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadUsername;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$OpenMyLV;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$DisplayLvPass;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayLvPass implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DisplayLvPass f48927a = new DisplayLvPass();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Display User Pass";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DisplayLvPass);
            }

            public final int hashCode() {
                return -1150739830;
            }

            public final String toString() {
                return "DisplayLvPass";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadBookings;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadBookings implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadBookings f48928a = new LoadBookings();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Booking Experiences";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadBookings);
            }

            public final int hashCode() {
                return 2069808691;
            }

            public final String toString() {
                return "LoadBookings";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadLvPass;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadLvPass implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadLvPass f48929a = new LoadLvPass();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load LVPASS";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadLvPass);
            }

            public final int hashCode() {
                return -1042334220;
            }

            public final String toString() {
                return "LoadLvPass";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCareService;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyCareService implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadMyCareService f48930a = new LoadMyCareService();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load MyCareService";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadMyCareService);
            }

            public final int hashCode() {
                return -327989825;
            }

            public final String toString() {
                return "LoadMyCareService";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyCertificates;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyCertificates implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadMyCertificates f48931a = new LoadMyCertificates();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load MyCertificates";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadMyCertificates);
            }

            public final int hashCode() {
                return -1218439743;
            }

            public final String toString() {
                return "LoadMyCertificates";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyExclusiveOffers;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyExclusiveOffers implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadMyExclusiveOffers f48932a = new LoadMyExclusiveOffers();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load MyExclusiveOffers";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadMyExclusiveOffers);
            }

            public final int hashCode() {
                return -2095149136;
            }

            public final String toString() {
                return "LoadMyExclusiveOffers";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyInbox;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyInbox implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadMyInbox f48933a = new LoadMyInbox();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load MyInbox";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadMyInbox);
            }

            public final int hashCode() {
                return -1280292319;
            }

            public final String toString() {
                return "LoadMyInbox";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadMyOrders;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyOrders implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadMyOrders f48934a = new LoadMyOrders();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load MyOrders";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadMyOrders);
            }

            public final int hashCode() {
                return -858837334;
            }

            public final String toString() {
                return "LoadMyOrders";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadOsa;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadOsa implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadOsa f48935a = new LoadOsa();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load OSA";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadOsa);
            }

            public final int hashCode() {
                return -711510940;
            }

            public final String toString() {
                return "LoadOsa";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$LoadUsername;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadUsername implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadUsername f48936a = new LoadUsername();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Username";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadUsername);
            }

            public final int hashCode() {
                return -201176113;
            }

            public final String toString() {
                return "LoadUsername";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$OpenMyLV;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyLV implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyLV f48937a = new OpenMyLV();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyLV";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyLV);
            }

            public final int hashCode() {
                return 1362662163;
            }

            public final String toString() {
                return "OpenMyLV";
            }
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "LoadUsernameError", "LoadOsaError", "LoadMyOrdersError", "LoadMyCertificatesError", "LoadMyExclusiveOffersError", "LoadMyInboxError", "LoadMyCareServiceError", "LoadLvPassError", "DisplayLvPass3dError", "DisplayLvPass2dError", "DisplayLvPassLoadingError", "DisplayLvPassMultipartError", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass2dError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass3dError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassLoadingError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassMultipartError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadLvPassError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCertificatesError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyExclusiveOffersError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyInboxError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyOrdersError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadOsaError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadUsernameError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass2dError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayLvPass2dError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48938a;

            public DisplayLvPass2dError(Throwable th) {
                th.getClass();
                this.f48938a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48994a() {
                return this.f48938a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayLvPass2dError) && Intrinsics.c(this.f48938a, ((DisplayLvPass2dError) obj).f48938a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "display_image_error";
            }

            public final int hashCode() {
                return this.f48938a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayLvPass2dError(error=", ")", this.f48938a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass3dError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayLvPass3dError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48939a;

            public DisplayLvPass3dError(Throwable th) {
                th.getClass();
                this.f48939a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48998a() {
                return this.f48939a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayLvPass3dError) && Intrinsics.c(this.f48939a, ((DisplayLvPass3dError) obj).f48939a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "3d_loading_error";
            }

            public final int hashCode() {
                return this.f48939a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayLvPass3dError(error=", ")", this.f48939a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassLoadingError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayLvPassLoadingError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48940a;

            public DisplayLvPassLoadingError(Throwable th) {
                th.getClass();
                this.f48940a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48998a() {
                return this.f48940a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayLvPassLoadingError) && Intrinsics.c(this.f48940a, ((DisplayLvPassLoadingError) obj).f48940a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "display_user_pass_error";
            }

            public final int hashCode() {
                return this.f48940a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayLvPassLoadingError(error=", ")", this.f48940a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassMultipartError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayLvPassMultipartError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48941a;

            public DisplayLvPassMultipartError(Throwable th) {
                th.getClass();
                this.f48941a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48941a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayLvPassMultipartError) && Intrinsics.c(this.f48941a, ((DisplayLvPassMultipartError) obj).f48941a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "multipart_mapping_error";
            }

            public final int hashCode() {
                return this.f48941a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayLvPassMultipartError(error=", ")", this.f48941a);
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadLvPassError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "", Payload.SOURCE, "<init>", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadLvPassError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48942a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f48943b;

            public LoadLvPassError(Throwable th, String str) {
                th.getClass();
                str.getClass();
                this.f48942a = th;
                this.f48943b = str;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48942a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof LoadLvPassError)) {
                    return false;
                }
                LoadLvPassError loadLvPassError = (LoadLvPassError) obj;
                return Intrinsics.c(this.f48942a, loadLvPassError.f48942a) && Intrinsics.c(this.f48943b, loadLvPassError.f48943b);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_lvpass_error";
            }

            public final int hashCode() {
                return this.f48943b.hashCode() + (this.f48942a.hashCode() * 31);
            }

            public final String toString() {
                return "LoadLvPassError(error=" + this.f48942a + ", source=" + this.f48943b + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCareServiceError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyCareServiceError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48944a;

            public LoadMyCareServiceError(Throwable th) {
                th.getClass();
                this.f48944a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48944a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadMyCareServiceError) && Intrinsics.c(this.f48944a, ((LoadMyCareServiceError) obj).f48944a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_mycareservice_error";
            }

            public final int hashCode() {
                return this.f48944a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadMyCareServiceError(error=", ")", this.f48944a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyCertificatesError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyCertificatesError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48945a;

            public LoadMyCertificatesError(Throwable th) {
                th.getClass();
                this.f48945a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48945a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadMyCertificatesError) && Intrinsics.c(this.f48945a, ((LoadMyCertificatesError) obj).f48945a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_mycertificates_error";
            }

            public final int hashCode() {
                return this.f48945a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadMyCertificatesError(error=", ")", this.f48945a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyExclusiveOffersError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyExclusiveOffersError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48946a;

            public LoadMyExclusiveOffersError(Throwable th) {
                th.getClass();
                this.f48946a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48946a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadMyExclusiveOffersError) && Intrinsics.c(this.f48946a, ((LoadMyExclusiveOffersError) obj).f48946a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_myexclusiveoffers_error";
            }

            public final int hashCode() {
                return this.f48946a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadMyExclusiveOffersError(error=", ")", this.f48946a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyInboxError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyInboxError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48947a;

            public LoadMyInboxError(Throwable th) {
                th.getClass();
                this.f48947a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48947a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadMyInboxError) && Intrinsics.c(this.f48947a, ((LoadMyInboxError) obj).f48947a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_myinbox_error";
            }

            public final int hashCode() {
                return this.f48947a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadMyInboxError(error=", ")", this.f48947a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyOrdersError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadMyOrdersError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48948a;

            public LoadMyOrdersError(Throwable th) {
                th.getClass();
                this.f48948a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48948a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadMyOrdersError) && Intrinsics.c(this.f48948a, ((LoadMyOrdersError) obj).f48948a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_myorders_error";
            }

            public final int hashCode() {
                return this.f48948a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadMyOrdersError(error=", ")", this.f48948a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadOsaError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadOsaError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48949a;

            public LoadOsaError(Throwable th) {
                th.getClass();
                this.f48949a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48949a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadOsaError) && Intrinsics.c(this.f48949a, ((LoadOsaError) obj).f48949a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_OSA_error";
            }

            public final int hashCode() {
                return this.f48949a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadOsaError(error=", ")", this.f48949a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadUsernameError;", "Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadUsernameError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48950a;

            public LoadUsernameError(Throwable th) {
                th.getClass();
                this.f48950a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48950a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadUsernameError) && Intrinsics.c(this.f48950a, ((LoadUsernameError) obj).f48950a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_mylv_username_error";
            }

            public final int hashCode() {
                return this.f48950a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadUsernameError(error=", ")", this.f48950a);
            }
        }
    }
}
