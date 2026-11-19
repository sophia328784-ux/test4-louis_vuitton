package com.vuitton.android.domain.monitoring.plp;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPMonitoring {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "LoadProductListScreen", "Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action$LoadProductListScreen;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action$LoadProductListScreen;", "Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadProductListScreen implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadProductListScreen f48989a = new LoadProductListScreen();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open PLP";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadProductListScreen);
            }

            public final int hashCode() {
                return 1645365300;
            }

            public final String toString() {
                return "LoadProductListScreen";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "LoadProductListError", "Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error$LoadProductListError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error$LoadProductListError;", "Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadProductListError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48990a;

            public LoadProductListError(Throwable th) {
                th.getClass();
                this.f48990a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48990a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadProductListError) && Intrinsics.c(this.f48990a, ((LoadProductListError) obj).f48990a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_plp_error";
            }

            public final int hashCode() {
                return this.f48990a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadProductListError(error=", ")", this.f48990a);
            }
        }
    }
}
