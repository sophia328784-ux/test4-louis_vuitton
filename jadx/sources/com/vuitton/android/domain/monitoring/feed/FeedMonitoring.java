package com.vuitton.android.domain.monitoring.feed;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FeedMonitoring {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "LoadDiscoverFeed", "LoadForYouFeed", "LoadOngoingOrders", "OpenSpotlight", "OpenPortal", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadDiscoverFeed;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadForYouFeed;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadOngoingOrders;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenPortal;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenSpotlight;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadDiscoverFeed;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadDiscoverFeed implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadDiscoverFeed f48901a = new LoadDiscoverFeed();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Discover Feed";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadDiscoverFeed);
            }

            public final int hashCode() {
                return 1961377920;
            }

            public final String toString() {
                return "LoadDiscoverFeed";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadForYouFeed;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadForYouFeed implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadForYouFeed f48902a = new LoadForYouFeed();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "For You Feed";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadForYouFeed);
            }

            public final int hashCode() {
                return 1688689389;
            }

            public final String toString() {
                return "LoadForYouFeed";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadOngoingOrders;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadOngoingOrders implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadOngoingOrders f48903a = new LoadOngoingOrders();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Ongoing Order Panel";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadOngoingOrders);
            }

            public final int hashCode() {
                return 2127343111;
            }

            public final String toString() {
                return "LoadOngoingOrders";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenPortal;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenPortal implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenPortal f48904a = new OpenPortal();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Portal";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenPortal);
            }

            public final int hashCode() {
                return -49245975;
            }

            public final String toString() {
                return "OpenPortal";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$OpenSpotlight;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenSpotlight implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenSpotlight f48905a = new OpenSpotlight();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Spotlight";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenSpotlight);
            }

            public final int hashCode() {
                return -244951113;
            }

            public final String toString() {
                return "OpenSpotlight";
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "LoadDiscoverFeedError", "LoadForYouFeedError", "LoadOngoingOrdersError", "OpenSpotlightError", "OpenPortalError", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadDiscoverFeedError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadForYouFeedError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenPortalError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenSpotlightError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadDiscoverFeedError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadDiscoverFeedError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48906a;

            public LoadDiscoverFeedError(Throwable th) {
                th.getClass();
                this.f48906a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48906a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadDiscoverFeedError) && Intrinsics.c(this.f48906a, ((LoadDiscoverFeedError) obj).f48906a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "discover_feed_error";
            }

            public final int hashCode() {
                return this.f48906a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadDiscoverFeedError(error=", ")", this.f48906a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadForYouFeedError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadForYouFeedError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48907a;

            public LoadForYouFeedError(Throwable th) {
                th.getClass();
                this.f48907a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48907a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadForYouFeedError) && Intrinsics.c(this.f48907a, ((LoadForYouFeedError) obj).f48907a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "for_you_feed_error";
            }

            public final int hashCode() {
                return this.f48907a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadForYouFeedError(error=", ")", this.f48907a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadOngoingOrdersError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48908a;

            public LoadOngoingOrdersError(Throwable th) {
                th.getClass();
                this.f48908a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48908a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadOngoingOrdersError) && Intrinsics.c(this.f48908a, ((LoadOngoingOrdersError) obj).f48908a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "ongoing_order_panel_error";
            }

            public final int hashCode() {
                return this.f48908a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadOngoingOrdersError(error=", ")", this.f48908a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenPortalError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenPortalError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48909a;

            public OpenPortalError(Throwable th) {
                th.getClass();
                this.f48909a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48909a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenPortalError) && Intrinsics.c(this.f48909a, ((OpenPortalError) obj).f48909a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_portal_error";
            }

            public final int hashCode() {
                return this.f48909a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenPortalError(error=", ")", this.f48909a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenSpotlightError;", "Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenSpotlightError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48910a;

            public OpenSpotlightError(Throwable th) {
                th.getClass();
                this.f48910a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48910a() {
                return this.f48910a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenSpotlightError) && Intrinsics.c(this.f48910a, ((OpenSpotlightError) obj).f48910a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_spotlight_error";
            }

            public final int hashCode() {
                return this.f48910a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenSpotlightError(error=", ")", this.f48910a);
            }
        }
    }
}
