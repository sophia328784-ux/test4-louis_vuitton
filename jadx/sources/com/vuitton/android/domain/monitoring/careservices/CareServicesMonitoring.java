package com.vuitton.android.domain.monitoring.careservices;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CareServicesMonitoring {

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\n\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\u0082\u0001\n\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyCareServices", "OpenRepairDetails", "DisplayRepairSlots", "OpenInitiateRepairForm", "PrebookRepair", "BookRepair", "UpdateRepair", "CancelRepair", "ViewEstimate", "ConfirmAssessment", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ConfirmAssessment;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$DisplayRepairSlots;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenInitiateRepairForm;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$PrebookRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ViewEstimate;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class BookRepair implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final BookRepair f48863a = new BookRepair();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Book Repair";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof BookRepair);
            }

            public final int hashCode() {
                return 1107424041;
            }

            public final String toString() {
                return "BookRepair";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelRepair implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final CancelRepair f48864a = new CancelRepair();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Cancel Repair";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof CancelRepair);
            }

            public final int hashCode() {
                return 186690874;
            }

            public final String toString() {
                return "CancelRepair";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ConfirmAssessment;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ConfirmAssessment implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ConfirmAssessment f48865a = new ConfirmAssessment();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Confirm Assessment";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ConfirmAssessment);
            }

            public final int hashCode() {
                return -15272209;
            }

            public final String toString() {
                return "ConfirmAssessment";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$DisplayRepairSlots;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayRepairSlots implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DisplayRepairSlots f48866a = new DisplayRepairSlots();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Display Repair Slots";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DisplayRepairSlots);
            }

            public final int hashCode() {
                return -255912743;
            }

            public final String toString() {
                return "DisplayRepairSlots";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenInitiateRepairForm;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenInitiateRepairForm implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenInitiateRepairForm f48867a = new OpenInitiateRepairForm();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Initiate Repair form";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenInitiateRepairForm);
            }

            public final int hashCode() {
                return -541174745;
            }

            public final String toString() {
                return "OpenInitiateRepairForm";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenMyCareServices;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyCareServices implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyCareServices f48868a = new OpenMyCareServices();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyCareServices";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyCareServices);
            }

            public final int hashCode() {
                return 857666456;
            }

            public final String toString() {
                return "OpenMyCareServices";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$OpenRepairDetails;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenRepairDetails implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenRepairDetails f48869a = new OpenRepairDetails();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Repair Details";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenRepairDetails);
            }

            public final int hashCode() {
                return -388906728;
            }

            public final String toString() {
                return "OpenRepairDetails";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$PrebookRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookRepair implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final PrebookRepair f48870a = new PrebookRepair();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Prebook a Repair";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof PrebookRepair);
            }

            public final int hashCode() {
                return -740306298;
            }

            public final String toString() {
                return "PrebookRepair";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class UpdateRepair implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final UpdateRepair f48871a = new UpdateRepair();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Update Repair";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof UpdateRepair);
            }

            public final int hashCode() {
                return 1065582665;
            }

            public final String toString() {
                return "UpdateRepair";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$ViewEstimate;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ViewEstimate implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ViewEstimate f48872a = new ViewEstimate();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "View Estimate";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ViewEstimate);
            }

            public final int hashCode() {
                return -207944320;
            }

            public final String toString() {
                return "ViewEstimate";
            }
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\n\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\u0082\u0001\n\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyCareServicesError", "OpenRepairDetailError", "DisplayRepairSlotsError", "OpenInitiateRepairFormError", "PrebookRepairError", "BookRepairError", "UpdateRepairError", "CancelRepairError", "ViewEstimateError", "ConfirmAssessmentError", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ConfirmAssessmentError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$DisplayRepairSlotsError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenInitiateRepairFormError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$PrebookRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ViewEstimateError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class BookRepairError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48873a;

            public BookRepairError(Throwable th) {
                th.getClass();
                this.f48873a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48873a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BookRepairError) && Intrinsics.c(this.f48873a, ((BookRepairError) obj).f48873a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "book_repair_error";
            }

            public final int hashCode() {
                return this.f48873a.hashCode();
            }

            public final String toString() {
                return d21.n("BookRepairError(error=", ")", this.f48873a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelRepairError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48874a;

            public CancelRepairError(Throwable th) {
                th.getClass();
                this.f48874a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48874a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof CancelRepairError) && Intrinsics.c(this.f48874a, ((CancelRepairError) obj).f48874a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "cancel_repair_error";
            }

            public final int hashCode() {
                return this.f48874a.hashCode();
            }

            public final String toString() {
                return d21.n("CancelRepairError(error=", ")", this.f48874a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ConfirmAssessmentError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ConfirmAssessmentError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48875a;

            public ConfirmAssessmentError(Throwable th) {
                th.getClass();
                this.f48875a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48875a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ConfirmAssessmentError) && Intrinsics.c(this.f48875a, ((ConfirmAssessmentError) obj).f48875a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "confirm_assessment_error";
            }

            public final int hashCode() {
                return this.f48875a.hashCode();
            }

            public final String toString() {
                return d21.n("ConfirmAssessmentError(error=", ")", this.f48875a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$DisplayRepairSlotsError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayRepairSlotsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48876a;

            public DisplayRepairSlotsError(Throwable th) {
                th.getClass();
                this.f48876a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48876a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayRepairSlotsError) && Intrinsics.c(this.f48876a, ((DisplayRepairSlotsError) obj).f48876a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "display_repair_slots_error";
            }

            public final int hashCode() {
                return this.f48876a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayRepairSlotsError(error=", ")", this.f48876a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenInitiateRepairFormError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenInitiateRepairFormError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48877a;

            public OpenInitiateRepairFormError(Throwable th) {
                th.getClass();
                this.f48877a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48877a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenInitiateRepairFormError) && Intrinsics.c(this.f48877a, ((OpenInitiateRepairFormError) obj).f48877a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_initiate_repair_error";
            }

            public final int hashCode() {
                return this.f48877a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenInitiateRepairFormError(error=", ")", this.f48877a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenMyCareServicesError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyCareServicesError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48878a;

            public OpenMyCareServicesError(Throwable th) {
                th.getClass();
                this.f48878a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48878a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyCareServicesError) && Intrinsics.c(this.f48878a, ((OpenMyCareServicesError) obj).f48878a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_my_careservices_error";
            }

            public final int hashCode() {
                return this.f48878a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyCareServicesError(error=", ")", this.f48878a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$OpenRepairDetailError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenRepairDetailError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48879a;

            public OpenRepairDetailError(Throwable th) {
                th.getClass();
                this.f48879a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48879a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenRepairDetailError) && Intrinsics.c(this.f48879a, ((OpenRepairDetailError) obj).f48879a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_repair_details_error";
            }

            public final int hashCode() {
                return this.f48879a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenRepairDetailError(error=", ")", this.f48879a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$PrebookRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookRepairError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48880a;

            public PrebookRepairError(Throwable th) {
                th.getClass();
                this.f48880a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48880a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof PrebookRepairError) && Intrinsics.c(this.f48880a, ((PrebookRepairError) obj).f48880a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "prebook_repair_error";
            }

            public final int hashCode() {
                return this.f48880a.hashCode();
            }

            public final String toString() {
                return d21.n("PrebookRepairError(error=", ")", this.f48880a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class UpdateRepairError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48881a;

            public UpdateRepairError(Throwable th) {
                th.getClass();
                this.f48881a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48881a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof UpdateRepairError) && Intrinsics.c(this.f48881a, ((UpdateRepairError) obj).f48881a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "update_repair_error";
            }

            public final int hashCode() {
                return this.f48881a.hashCode();
            }

            public final String toString() {
                return d21.n("UpdateRepairError(error=", ")", this.f48881a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$ViewEstimateError;", "Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ViewEstimateError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48882a;

            public ViewEstimateError(Throwable th) {
                th.getClass();
                this.f48882a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48882a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ViewEstimateError) && Intrinsics.c(this.f48882a, ((ViewEstimateError) obj).f48882a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "view_assessment_error";
            }

            public final int hashCode() {
                return this.f48882a.hashCode();
            }

            public final String toString() {
                return d21.n("ViewEstimateError(error=", ")", this.f48882a);
            }
        }
    }
}
