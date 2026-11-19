package com.vuitton.android.domain.monitoring.thematicplp;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ThematicPlpMonitoring {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMainThematicPlp", "OpenThematicPages", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenMainThematicPlp;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenMainThematicPlp;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMainThematicPlp implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMainThematicPlp f48995a = new OpenMainThematicPlp();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Main Thematic PLP";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMainThematicPlp);
            }

            public final int hashCode() {
                return 184062747;
            }

            public final String toString() {
                return "OpenMainThematicPlp";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenThematicPages implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenThematicPages f48996a = new OpenThematicPages();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Thematic Page";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenThematicPages);
            }

            public final int hashCode() {
                return 686256356;
            }

            public final String toString() {
                return "OpenThematicPages";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMainThematicPlpError", "OpenThematicPagesError", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenMainThematicPlpError;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenMainThematicPlpError;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMainThematicPlpError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48997a;

            public OpenMainThematicPlpError(Throwable th) {
                th.getClass();
                this.f48997a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48997a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMainThematicPlpError) && Intrinsics.c(this.f48997a, ((OpenMainThematicPlpError) obj).f48997a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_main_thematic_plp_error";
            }

            public final int hashCode() {
                return this.f48997a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMainThematicPlpError(error=", ")", this.f48997a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error$OpenThematicPagesError;", "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenThematicPagesError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48998a;

            public OpenThematicPagesError(Throwable th) {
                th.getClass();
                this.f48998a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF49004a() {
                return this.f48998a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenThematicPagesError) && Intrinsics.c(this.f48998a, ((OpenThematicPagesError) obj).f48998a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_thematic_pages_error";
            }

            public final int hashCode() {
                return this.f48998a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenThematicPagesError(error=", ")", this.f48998a);
            }
        }
    }
}
