package com.vuitton.android.domain.monitoring.booking;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingMonitoring {

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyExperiences", "LoadForm", "CancelExperience", "ModifyExperience", "PrebookExperience", "ConfirmExperience", "LoadExperienceConfirmationPage", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$CancelExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ConfirmExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadExperienceConfirmationPage;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadForm;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ModifyExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$OpenMyExperiences;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$PrebookExperience;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$CancelExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelExperience implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final CancelExperience f48849a = new CancelExperience();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Cancel Experience";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof CancelExperience);
            }

            public final int hashCode() {
                return -1551212883;
            }

            public final String toString() {
                return "CancelExperience";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ConfirmExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ConfirmExperience implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ConfirmExperience f48850a = new ConfirmExperience();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Confirm Experience";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ConfirmExperience);
            }

            public final int hashCode() {
                return -1017854399;
            }

            public final String toString() {
                return "ConfirmExperience";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadExperienceConfirmationPage;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadExperienceConfirmationPage implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadExperienceConfirmationPage f48851a = new LoadExperienceConfirmationPage();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Experience Confirmation page";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadExperienceConfirmationPage);
            }

            public final int hashCode() {
                return -1150728483;
            }

            public final String toString() {
                return "LoadExperienceConfirmationPage";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadForm;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadForm implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadForm f48852a = new LoadForm();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Experience Form";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadForm);
            }

            public final int hashCode() {
                return 1451615987;
            }

            public final String toString() {
                return "LoadForm";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ModifyExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ModifyExperience implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ModifyExperience f48853a = new ModifyExperience();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Modify Experience";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ModifyExperience);
            }

            public final int hashCode() {
                return -1191978771;
            }

            public final String toString() {
                return "ModifyExperience";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$OpenMyExperiences;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyExperiences implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyExperiences f48854a = new OpenMyExperiences();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyExperiences";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyExperiences);
            }

            public final int hashCode() {
                return 1624348362;
            }

            public final String toString() {
                return "OpenMyExperiences";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$PrebookExperience;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookExperience implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final PrebookExperience f48855a = new PrebookExperience();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Prebook Experience";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof PrebookExperience);
            }

            public final int hashCode() {
                return 649106573;
            }

            public final String toString() {
                return "PrebookExperience";
            }
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyExperiencesError", "LoadFormError", "CancelExperienceError", "ModifyExperienceError", "PrebookExperienceError", "ConfirmExperienceError", "LoadExperienceConfirmationPageError", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$CancelExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ConfirmExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadExperienceConfirmationPageError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadFormError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ModifyExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$OpenMyExperiencesError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$PrebookExperienceError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$CancelExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelExperienceError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48856a;

            public CancelExperienceError(Throwable th) {
                th.getClass();
                this.f48856a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48856a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof CancelExperienceError) && Intrinsics.c(this.f48856a, ((CancelExperienceError) obj).f48856a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "cancel_experience_error";
            }

            public final int hashCode() {
                return this.f48856a.hashCode();
            }

            public final String toString() {
                return d21.n("CancelExperienceError(error=", ")", this.f48856a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ConfirmExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ConfirmExperienceError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48857a;

            public ConfirmExperienceError(Throwable th) {
                th.getClass();
                this.f48857a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48857a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ConfirmExperienceError) && Intrinsics.c(this.f48857a, ((ConfirmExperienceError) obj).f48857a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "confirm_experience_error";
            }

            public final int hashCode() {
                return this.f48857a.hashCode();
            }

            public final String toString() {
                return d21.n("ConfirmExperienceError(error=", ")", this.f48857a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadExperienceConfirmationPageError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadExperienceConfirmationPageError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48858a;

            public LoadExperienceConfirmationPageError(Throwable th) {
                th.getClass();
                this.f48858a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48858a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadExperienceConfirmationPageError) && Intrinsics.c(this.f48858a, ((LoadExperienceConfirmationPageError) obj).f48858a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "load_experience_confirmation_page_error";
            }

            public final int hashCode() {
                return this.f48858a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadExperienceConfirmationPageError(error=", ")", this.f48858a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadFormError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadFormError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48859a;

            public LoadFormError(Throwable th) {
                th.getClass();
                this.f48859a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48859a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadFormError) && Intrinsics.c(this.f48859a, ((LoadFormError) obj).f48859a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "load_form_error";
            }

            public final int hashCode() {
                return this.f48859a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadFormError(error=", ")", this.f48859a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ModifyExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ModifyExperienceError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48860a;

            public ModifyExperienceError(Throwable th) {
                th.getClass();
                this.f48860a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48860a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ModifyExperienceError) && Intrinsics.c(this.f48860a, ((ModifyExperienceError) obj).f48860a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "modify_experience_error";
            }

            public final int hashCode() {
                return this.f48860a.hashCode();
            }

            public final String toString() {
                return d21.n("ModifyExperienceError(error=", ")", this.f48860a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$OpenMyExperiencesError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyExperiencesError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48861a;

            public OpenMyExperiencesError(Throwable th) {
                th.getClass();
                this.f48861a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48861a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyExperiencesError) && Intrinsics.c(this.f48861a, ((OpenMyExperiencesError) obj).f48861a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_myexperiences_error";
            }

            public final int hashCode() {
                return this.f48861a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyExperiencesError(error=", ")", this.f48861a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$PrebookExperienceError;", "Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookExperienceError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48862a;

            public PrebookExperienceError(Throwable th) {
                th.getClass();
                this.f48862a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48882a() {
                return this.f48862a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof PrebookExperienceError) && Intrinsics.c(this.f48862a, ((PrebookExperienceError) obj).f48862a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "prebook_experience_error";
            }

            public final int hashCode() {
                return this.f48862a.hashCode();
            }

            public final String toString() {
                return d21.n("PrebookExperienceError(error=", ")", this.f48862a);
            }
        }
    }
}
