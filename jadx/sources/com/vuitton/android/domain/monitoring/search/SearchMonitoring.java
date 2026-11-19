package com.vuitton.android.domain.monitoring.search;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SearchMonitoring {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "SearchLoading", "DisplaySearchPanel", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$DisplaySearchPanel;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$SearchLoading;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$DisplaySearchPanel;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplaySearchPanel implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DisplaySearchPanel f48991a = new DisplaySearchPanel();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Search Panel";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DisplaySearchPanel);
            }

            public final int hashCode() {
                return 600102125;
            }

            public final String toString() {
                return "DisplaySearchPanel";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$SearchLoading;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SearchLoading implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SearchLoading f48992a = new SearchLoading();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open PSP";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof SearchLoading);
            }

            public final int hashCode() {
                return 367352001;
            }

            public final String toString() {
                return "SearchLoading";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "SearchLoadingError", "SearchPanelError", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchLoadingError;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchLoadingError;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SearchLoadingError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48993a;

            public SearchLoadingError(Throwable th) {
                th.getClass();
                this.f48993a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48993a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SearchLoadingError) && Intrinsics.c(this.f48993a, ((SearchLoadingError) obj).f48993a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_psp_error";
            }

            public final int hashCode() {
                return this.f48993a.hashCode();
            }

            public final String toString() {
                return d21.n("SearchLoadingError(error=", ")", this.f48993a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;", "Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SearchPanelError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48994a;

            public SearchPanelError(Throwable th) {
                th.getClass();
                this.f48994a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48994a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SearchPanelError) && Intrinsics.c(this.f48994a, ((SearchPanelError) obj).f48994a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "search_panel_error";
            }

            public final int hashCode() {
                return this.f48994a.hashCode();
            }

            public final String toString() {
                return d21.n("SearchPanelError(error=", ")", this.f48994a);
            }
        }
    }
}
