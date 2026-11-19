package com.vuitton.android.domain.monitoring.osa;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OSAMonitoring {

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenMyAppointments", "RetrieveAppointmentSlots", "DisplayAppointmentSlots", "PrebookAppointment", "BookAppointment", "CancelAppointment", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$BookAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$CancelAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$DisplayAppointmentSlots;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$OpenMyAppointments;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$PrebookAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$RetrieveAppointmentSlots;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$BookAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class BookAppointment implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final BookAppointment f48959a = new BookAppointment();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Book Appointment";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof BookAppointment);
            }

            public final int hashCode() {
                return -280503835;
            }

            public final String toString() {
                return "BookAppointment";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$CancelAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelAppointment implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final CancelAppointment f48960a = new CancelAppointment();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Cancel Appointment";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof CancelAppointment);
            }

            public final int hashCode() {
                return 183841268;
            }

            public final String toString() {
                return "CancelAppointment";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$DisplayAppointmentSlots;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayAppointmentSlots implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DisplayAppointmentSlots f48961a = new DisplayAppointmentSlots();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Display Appointment Slots";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DisplayAppointmentSlots);
            }

            public final int hashCode() {
                return -1325564761;
            }

            public final String toString() {
                return "DisplayAppointmentSlots";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$OpenMyAppointments;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyAppointments implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenMyAppointments f48962a = new OpenMyAppointments();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open MyAppointments";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenMyAppointments);
            }

            public final int hashCode() {
                return 581229083;
            }

            public final String toString() {
                return "OpenMyAppointments";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$PrebookAppointment;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookAppointment implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final PrebookAppointment f48963a = new PrebookAppointment();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Prebook Appointment";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof PrebookAppointment);
            }

            public final int hashCode() {
                return -554321756;
            }

            public final String toString() {
                return "PrebookAppointment";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$RetrieveAppointmentSlots;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RetrieveAppointmentSlots implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final RetrieveAppointmentSlots f48964a = new RetrieveAppointmentSlots();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Retrieve Appointment Slots";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof RetrieveAppointmentSlots);
            }

            public final int hashCode() {
                return 1170362915;
            }

            public final String toString() {
                return "RetrieveAppointmentSlots";
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenMyAppointmentsError", "RetrieveAppointmentSlotsError", "DisplayAppointmentSlotsError", "PrebookAppointmentError", "BookAppointmentError", "CancelAppointmentError", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$BookAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$CancelAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$DisplayAppointmentSlotsError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$OpenMyAppointmentsError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$PrebookAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$RetrieveAppointmentSlotsError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$BookAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class BookAppointmentError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48965a;

            public BookAppointmentError(Throwable th) {
                th.getClass();
                this.f48965a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48965a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BookAppointmentError) && Intrinsics.c(this.f48965a, ((BookAppointmentError) obj).f48965a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "book_appointment_error";
            }

            public final int hashCode() {
                return this.f48965a.hashCode();
            }

            public final String toString() {
                return d21.n("BookAppointmentError(error=", ")", this.f48965a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$CancelAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class CancelAppointmentError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48966a;

            public CancelAppointmentError(Throwable th) {
                th.getClass();
                this.f48966a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48966a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof CancelAppointmentError) && Intrinsics.c(this.f48966a, ((CancelAppointmentError) obj).f48966a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "cancel_appointment_error";
            }

            public final int hashCode() {
                return this.f48966a.hashCode();
            }

            public final String toString() {
                return d21.n("CancelAppointmentError(error=", ")", this.f48966a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$DisplayAppointmentSlotsError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DisplayAppointmentSlotsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48967a;

            public DisplayAppointmentSlotsError(Throwable th) {
                th.getClass();
                this.f48967a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48967a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof DisplayAppointmentSlotsError) && Intrinsics.c(this.f48967a, ((DisplayAppointmentSlotsError) obj).f48967a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "display_appointment_slots_error";
            }

            public final int hashCode() {
                return this.f48967a.hashCode();
            }

            public final String toString() {
                return d21.n("DisplayAppointmentSlotsError(error=", ")", this.f48967a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$OpenMyAppointmentsError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenMyAppointmentsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48968a;

            public OpenMyAppointmentsError(Throwable th) {
                th.getClass();
                this.f48968a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48968a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenMyAppointmentsError) && Intrinsics.c(this.f48968a, ((OpenMyAppointmentsError) obj).f48968a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_myappointments_error";
            }

            public final int hashCode() {
                return this.f48968a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenMyAppointmentsError(error=", ")", this.f48968a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$PrebookAppointmentError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PrebookAppointmentError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48969a;

            public PrebookAppointmentError(Throwable th) {
                th.getClass();
                this.f48969a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48969a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof PrebookAppointmentError) && Intrinsics.c(this.f48969a, ((PrebookAppointmentError) obj).f48969a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "prebook_appointment_error";
            }

            public final int hashCode() {
                return this.f48969a.hashCode();
            }

            public final String toString() {
                return d21.n("PrebookAppointmentError(error=", ")", this.f48969a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$RetrieveAppointmentSlotsError;", "Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RetrieveAppointmentSlotsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48970a;

            public RetrieveAppointmentSlotsError(Throwable th) {
                th.getClass();
                this.f48970a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48980a() {
                return this.f48970a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof RetrieveAppointmentSlotsError) && Intrinsics.c(this.f48970a, ((RetrieveAppointmentSlotsError) obj).f48970a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "retrieve_appointment_slots_error";
            }

            public final int hashCode() {
                return this.f48970a.hashCode();
            }

            public final String toString() {
                return d21.n("RetrieveAppointmentSlotsError(error=", ")", this.f48970a);
            }
        }
    }
}
