package com.vuitton.android.domain.monitoring.personalselections;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsMonitoring {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyPersonalSections", "OpenDiscoverInStoreSelection", "OpenDiscoverAdvisorCuration", "PersonalSelectionLike", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverAdvisorCuration;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverInStoreSelection;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenMyPersonalSections;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$PersonalSelectionLike;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverAdvisorCuration;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenDiscoverAdvisorCuration implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenDiscoverAdvisorCuration f48981a = new OpenDiscoverAdvisorCuration();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Discover Advisor’s curation";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenDiscoverAdvisorCuration);
            }

            public final int hashCode() {
                return -266772593;
            }

            public final String toString() {
                return "OpenDiscoverAdvisorCuration";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverInStoreSelection;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenDiscoverInStoreSelection implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenDiscoverInStoreSelection f48982a = new OpenDiscoverInStoreSelection();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Discover In-store selection";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenDiscoverInStoreSelection);
            }

            public final int hashCode() {
                return -949576074;
            }

            public final String toString() {
                return "OpenDiscoverInStoreSelection";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenMyPersonalSections;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyPersonalSections implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyPersonalSections f48983a = new OpenMyPersonalSections();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "MyPersonal Sections";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyPersonalSections);
            }

            public final int hashCode() {
                return 400109143;
            }

            public final String toString() {
                return "OpenMyPersonalSections";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$PersonalSelectionLike;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PersonalSelectionLike implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final PersonalSelectionLike f48984a = new PersonalSelectionLike();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Personal Selection Like";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof PersonalSelectionLike);
            }

            public final int hashCode() {
                return 944171632;
            }

            public final String toString() {
                return "PersonalSelectionLike";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "MyPersonalSectionsError", "DiscoverInStoreSelectionError", "DiscoverAdvisorCurationError", "PersonalSelectionLikeError", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverAdvisorCurationError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverInStoreSelectionError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$MyPersonalSectionsError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$PersonalSelectionLikeError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverAdvisorCurationError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DiscoverAdvisorCurationError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48985a;

            public DiscoverAdvisorCurationError(Throwable th) {
                th.getClass();
                this.f48985a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48985a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DiscoverAdvisorCurationError) && Intrinsics.c(this.f48985a, ((DiscoverAdvisorCurationError) obj).f48985a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "discover_advisor_curation_error";
            }

            public final int hashCode() {
                return this.f48985a.hashCode();
            }

            public final String toString() {
                return d21.n("DiscoverAdvisorCurationError(error=", ")", this.f48985a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverInStoreSelectionError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DiscoverInStoreSelectionError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48986a;

            public DiscoverInStoreSelectionError(Throwable th) {
                th.getClass();
                this.f48986a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48986a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DiscoverInStoreSelectionError) && Intrinsics.c(this.f48986a, ((DiscoverInStoreSelectionError) obj).f48986a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "discover_instore_selection_error";
            }

            public final int hashCode() {
                return this.f48986a.hashCode();
            }

            public final String toString() {
                return d21.n("DiscoverInStoreSelectionError(error=", ")", this.f48986a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$MyPersonalSectionsError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class MyPersonalSectionsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48987a;

            public MyPersonalSectionsError(Throwable th) {
                th.getClass();
                this.f48987a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48987a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof MyPersonalSectionsError) && Intrinsics.c(this.f48987a, ((MyPersonalSectionsError) obj).f48987a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "my_personal_sections_error";
            }

            public final int hashCode() {
                return this.f48987a.hashCode();
            }

            public final String toString() {
                return d21.n("MyPersonalSectionsError(error=", ")", this.f48987a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$PersonalSelectionLikeError;", "Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PersonalSelectionLikeError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48988a;

            public PersonalSelectionLikeError(Throwable th) {
                th.getClass();
                this.f48988a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48988a() {
                return this.f48988a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof PersonalSelectionLikeError) && Intrinsics.c(this.f48988a, ((PersonalSelectionLikeError) obj).f48988a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "personal_selection_like_error";
            }

            public final int hashCode() {
                return this.f48988a.hashCode();
            }

            public final String toString() {
                return d21.n("PersonalSelectionLikeError(error=", ")", this.f48988a);
            }
        }
    }
}
