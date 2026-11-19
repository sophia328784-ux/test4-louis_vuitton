package com.vuitton.android.presentation.screen.osa.tracking;

import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import defpackage.tr;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001d\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u0082\u0001\u001d\u001f !\"#$%&'()*+,-./0123456789:;¨\u0006<À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "OsaListScreen", "BookAppointmentEvent", "PrepareAppointmentEvent", "ModifyAppointmentEvent", "CancelAppointmentEvent", "CancellationConfirmedEvent", "AddAppointmentToCalendarEvent", "BookAppointmentScreen", "SelectReasonEvent", "ModifyReasonClickedEvent", "BookAppointmentLocationSelectionClickedEvent", "BookAppointmentDateSelectionClickedEvent", "BookAppointmentNextClickedEvent", "BookAppointmentDateSelectionScreen", "BookAppointmentDateSelectionSelectedClickedEvent", "BookAppointmentDateSelectionNoDateEvent", "KisaConsentScreen", "KisaConsentConfirmEvent", "BookAppointmentContactInfoScreen", "ModifyReasonFromContactInfoClickedEvent", "BookAppointmentContactInfoConfirmAccountClickedEvent", "BookAppointmentContactInfoLoginClickedEvent", "BookAppointmentContactInfoCancelClickedEvent", "BookAppointmentContactInfoConfirmAppointmentClickedEvent", "BottomSheetAddCalendarClickedEvent", "BottomSheetCreateAccountClickedEvent", "BottomSheetCancelKeepPreviousAppointmentClickedEvent", "BottomSheetReplaceAppointmentClickedEvent", "BottomSheetGoToAppointmentClickedEvent", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentConfirmEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OsaTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;", "appointment", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddAppointmentToCalendarEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OsaItemUiModel f60973a;

        public AddAppointmentToCalendarEvent(OsaItemUiModel osaItemUiModel) {
            osaItemUiModel.getClass();
            this.f60973a = osaItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddAppointmentToCalendarEvent) && Intrinsics.c(this.f60973a, ((AddAppointmentToCalendarEvent) obj).f60973a);
        }

        public final int hashCode() {
            return this.f60973a.hashCode();
        }

        public final String toString() {
            return "AddAppointmentToCalendarEvent(appointment=" + this.f60973a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentContactInfoCancelClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60974a;

        public BookAppointmentContactInfoCancelClickedEvent(boolean z) {
            this.f60974a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentContactInfoCancelClickedEvent) && this.f60974a == ((BookAppointmentContactInfoCancelClickedEvent) obj).f60974a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60974a);
        }

        public final String toString() {
            return tr.i("BookAppointmentContactInfoCancelClickedEvent(isAppointmentModification=", ")", this.f60974a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentContactInfoConfirmAccountClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60975a;

        public BookAppointmentContactInfoConfirmAccountClickedEvent(boolean z) {
            this.f60975a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentContactInfoConfirmAccountClickedEvent) && this.f60975a == ((BookAppointmentContactInfoConfirmAccountClickedEvent) obj).f60975a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60975a);
        }

        public final String toString() {
            return tr.i("BookAppointmentContactInfoConfirmAccountClickedEvent(isAppointmentModification=", ")", this.f60975a);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "timeSlot", "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "appointment", "", "isAppointmentModification", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentContactInfoConfirmAppointmentClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TimeSlotUiModel f60976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final OsaFormItemUiModel f60977b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f60978c;

        public BookAppointmentContactInfoConfirmAppointmentClickedEvent(TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel, boolean z) {
            timeSlotUiModel.getClass();
            osaFormItemUiModel.getClass();
            this.f60976a = timeSlotUiModel;
            this.f60977b = osaFormItemUiModel;
            this.f60978c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BookAppointmentContactInfoConfirmAppointmentClickedEvent)) {
                return false;
            }
            BookAppointmentContactInfoConfirmAppointmentClickedEvent bookAppointmentContactInfoConfirmAppointmentClickedEvent = (BookAppointmentContactInfoConfirmAppointmentClickedEvent) obj;
            return Intrinsics.c(this.f60976a, bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60976a) && Intrinsics.c(this.f60977b, bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60977b) && this.f60978c == bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60978c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60978c) + ((this.f60977b.hashCode() + (this.f60976a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BookAppointmentContactInfoConfirmAppointmentClickedEvent(timeSlot=");
            sb.append(this.f60976a);
            sb.append(", appointment=");
            sb.append(this.f60977b);
            sb.append(", isAppointmentModification=");
            return a.p(sb, this.f60978c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentContactInfoLoginClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60979a;

        public BookAppointmentContactInfoLoginClickedEvent(boolean z) {
            this.f60979a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentContactInfoLoginClickedEvent) && this.f60979a == ((BookAppointmentContactInfoLoginClickedEvent) obj).f60979a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60979a);
        }

        public final String toString() {
            return tr.i("BookAppointmentContactInfoLoginClickedEvent(isAppointmentModification=", ")", this.f60979a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentContactInfoScreen implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookAppointmentContactInfoScreen f60980a = new BookAppointmentContactInfoScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookAppointmentContactInfoScreen);
        }

        public final int hashCode() {
            return -1679592758;
        }

        public final String toString() {
            return "BookAppointmentContactInfoScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentDateSelectionClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60981a;

        public BookAppointmentDateSelectionClickedEvent(boolean z) {
            this.f60981a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentDateSelectionClickedEvent) && this.f60981a == ((BookAppointmentDateSelectionClickedEvent) obj).f60981a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60981a);
        }

        public final String toString() {
            return tr.i("BookAppointmentDateSelectionClickedEvent(isAppointmentModification=", ")", this.f60981a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentDateSelectionNoDateEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60982a;

        public BookAppointmentDateSelectionNoDateEvent(boolean z) {
            this.f60982a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentDateSelectionNoDateEvent) && this.f60982a == ((BookAppointmentDateSelectionNoDateEvent) obj).f60982a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60982a);
        }

        public final String toString() {
            return tr.i("BookAppointmentDateSelectionNoDateEvent(isAppointmentModification=", ")", this.f60982a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentDateSelectionScreen implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60983a;

        public BookAppointmentDateSelectionScreen(boolean z) {
            this.f60983a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentDateSelectionScreen) && this.f60983a == ((BookAppointmentDateSelectionScreen) obj).f60983a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60983a);
        }

        public final String toString() {
            return tr.i("BookAppointmentDateSelectionScreen(isAppointmentModification=", ")", this.f60983a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "Ljava/time/LocalDate;", "myPrebookAppointmentDate", "", "isAppointmentModification", "<init>", "(Ljava/time/LocalDate;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentDateSelectionSelectedClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LocalDate f60984a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f60985b;

        public BookAppointmentDateSelectionSelectedClickedEvent(LocalDate localDate, boolean z) {
            localDate.getClass();
            this.f60984a = localDate;
            this.f60985b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BookAppointmentDateSelectionSelectedClickedEvent)) {
                return false;
            }
            BookAppointmentDateSelectionSelectedClickedEvent bookAppointmentDateSelectionSelectedClickedEvent = (BookAppointmentDateSelectionSelectedClickedEvent) obj;
            return Intrinsics.c(this.f60984a, bookAppointmentDateSelectionSelectedClickedEvent.f60984a) && this.f60985b == bookAppointmentDateSelectionSelectedClickedEvent.f60985b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60985b) + (this.f60984a.hashCode() * 31);
        }

        public final String toString() {
            return "BookAppointmentDateSelectionSelectedClickedEvent(myPrebookAppointmentDate=" + this.f60984a + ", isAppointmentModification=" + this.f60985b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookAppointmentEvent f60986a = new BookAppointmentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookAppointmentEvent);
        }

        public final int hashCode() {
            return 703950442;
        }

        public final String toString() {
            return "BookAppointmentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "typedSearch", "", "isAppointmentModification", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentLocationSelectionClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f60988b;

        public BookAppointmentLocationSelectionClickedEvent(String str, boolean z) {
            str.getClass();
            this.f60987a = str;
            this.f60988b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BookAppointmentLocationSelectionClickedEvent)) {
                return false;
            }
            BookAppointmentLocationSelectionClickedEvent bookAppointmentLocationSelectionClickedEvent = (BookAppointmentLocationSelectionClickedEvent) obj;
            return Intrinsics.c(this.f60987a, bookAppointmentLocationSelectionClickedEvent.f60987a) && this.f60988b == bookAppointmentLocationSelectionClickedEvent.f60988b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60988b) + (this.f60987a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("BookAppointmentLocationSelectionClickedEvent(typedSearch=", this.f60987a, ", isAppointmentModification=", ")", this.f60988b);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "timeSlot", "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "appointment", "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "appointmentType", "", "isAppointmentModification", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentNextClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TimeSlotUiModel f60989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final OsaFormItemUiModel f60990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AppointmentTypeUiModel f60991c;
        public final boolean d;

        public BookAppointmentNextClickedEvent(TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, boolean z) {
            timeSlotUiModel.getClass();
            osaFormItemUiModel.getClass();
            appointmentTypeUiModel.getClass();
            this.f60989a = timeSlotUiModel;
            this.f60990b = osaFormItemUiModel;
            this.f60991c = appointmentTypeUiModel;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BookAppointmentNextClickedEvent)) {
                return false;
            }
            BookAppointmentNextClickedEvent bookAppointmentNextClickedEvent = (BookAppointmentNextClickedEvent) obj;
            return Intrinsics.c(this.f60989a, bookAppointmentNextClickedEvent.f60989a) && Intrinsics.c(this.f60990b, bookAppointmentNextClickedEvent.f60990b) && this.f60991c == bookAppointmentNextClickedEvent.f60991c && this.d == bookAppointmentNextClickedEvent.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + ((this.f60991c.hashCode() + ((this.f60990b.hashCode() + (this.f60989a.hashCode() * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "BookAppointmentNextClickedEvent(timeSlot=" + this.f60989a + ", appointment=" + this.f60990b + ", appointmentType=" + this.f60991c + ", isAppointmentModification=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentScreen implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60992a;

        public BookAppointmentScreen(boolean z) {
            this.f60992a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookAppointmentScreen) && this.f60992a == ((BookAppointmentScreen) obj).f60992a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60992a);
        }

        public final String toString() {
            return tr.i("BookAppointmentScreen(isAppointmentModification=", ")", this.f60992a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetAddCalendarClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60993a;

        public BottomSheetAddCalendarClickedEvent(boolean z) {
            this.f60993a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetAddCalendarClickedEvent) && this.f60993a == ((BottomSheetAddCalendarClickedEvent) obj).f60993a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60993a);
        }

        public final String toString() {
            return tr.i("BottomSheetAddCalendarClickedEvent(isAppointmentModification=", ")", this.f60993a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetCancelKeepPreviousAppointmentClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60994a;

        public BottomSheetCancelKeepPreviousAppointmentClickedEvent(boolean z) {
            this.f60994a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetCancelKeepPreviousAppointmentClickedEvent) && this.f60994a == ((BottomSheetCancelKeepPreviousAppointmentClickedEvent) obj).f60994a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60994a);
        }

        public final String toString() {
            return tr.i("BottomSheetCancelKeepPreviousAppointmentClickedEvent(isAppointmentModification=", ")", this.f60994a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetCreateAccountClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60995a;

        public BottomSheetCreateAccountClickedEvent(boolean z) {
            this.f60995a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetCreateAccountClickedEvent) && this.f60995a == ((BottomSheetCreateAccountClickedEvent) obj).f60995a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60995a);
        }

        public final String toString() {
            return tr.i("BottomSheetCreateAccountClickedEvent(isAppointmentModification=", ")", this.f60995a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetGoToAppointmentClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60996a;

        public BottomSheetGoToAppointmentClickedEvent(boolean z) {
            this.f60996a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetGoToAppointmentClickedEvent) && this.f60996a == ((BottomSheetGoToAppointmentClickedEvent) obj).f60996a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60996a);
        }

        public final String toString() {
            return tr.i("BottomSheetGoToAppointmentClickedEvent(isAppointmentModification=", ")", this.f60996a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetReplaceAppointmentClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f60997a;

        public BottomSheetReplaceAppointmentClickedEvent(boolean z) {
            this.f60997a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetReplaceAppointmentClickedEvent) && this.f60997a == ((BottomSheetReplaceAppointmentClickedEvent) obj).f60997a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f60997a);
        }

        public final String toString() {
            return tr.i("BottomSheetReplaceAppointmentClickedEvent(isAppointmentModification=", ")", this.f60997a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "appointmentId", "storeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelAppointmentEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60999b;

        public CancelAppointmentEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f60998a = str;
            this.f60999b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CancelAppointmentEvent)) {
                return false;
            }
            CancelAppointmentEvent cancelAppointmentEvent = (CancelAppointmentEvent) obj;
            return Intrinsics.c(this.f60998a, cancelAppointmentEvent.f60998a) && Intrinsics.c(this.f60999b, cancelAppointmentEvent.f60999b);
        }

        public final int hashCode() {
            return this.f60999b.hashCode() + (this.f60998a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CancelAppointmentEvent(appointmentId=", this.f60998a, ", storeId=", this.f60999b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;", "appointment", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancellationConfirmedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OsaItemUiModel f61000a;

        public CancellationConfirmedEvent(OsaItemUiModel osaItemUiModel) {
            osaItemUiModel.getClass();
            this.f61000a = osaItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CancellationConfirmedEvent) && Intrinsics.c(this.f61000a, ((CancellationConfirmedEvent) obj).f61000a);
        }

        public final int hashCode() {
            return this.f61000a.hashCode();
        }

        public final String toString() {
            return "CancellationConfirmedEvent(appointment=" + this.f61000a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentConfirmEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class KisaConsentConfirmEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final KisaConsentConfirmEvent f61001a = new KisaConsentConfirmEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof KisaConsentConfirmEvent);
        }

        public final int hashCode() {
            return -57209790;
        }

        public final String toString() {
            return "KisaConsentConfirmEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class KisaConsentScreen implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final KisaConsentScreen f61002a = new KisaConsentScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof KisaConsentScreen);
        }

        public final int hashCode() {
            return -453050636;
        }

        public final String toString() {
            return "KisaConsentScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "appointmentId", "storeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyAppointmentEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61004b;

        public ModifyAppointmentEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f61003a = str;
            this.f61004b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ModifyAppointmentEvent)) {
                return false;
            }
            ModifyAppointmentEvent modifyAppointmentEvent = (ModifyAppointmentEvent) obj;
            return Intrinsics.c(this.f61003a, modifyAppointmentEvent.f61003a) && Intrinsics.c(this.f61004b, modifyAppointmentEvent.f61004b);
        }

        public final int hashCode() {
            return this.f61004b.hashCode() + (this.f61003a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("ModifyAppointmentEvent(appointmentId=", this.f61003a, ", storeId=", this.f61004b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyReasonClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f61005a;

        public ModifyReasonClickedEvent(boolean z) {
            this.f61005a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModifyReasonClickedEvent) && this.f61005a == ((ModifyReasonClickedEvent) obj).f61005a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61005a);
        }

        public final String toString() {
            return tr.i("ModifyReasonClickedEvent(isAppointmentModification=", ")", this.f61005a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "isAppointmentModification", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyReasonFromContactInfoClickedEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f61006a;

        public ModifyReasonFromContactInfoClickedEvent(boolean z) {
            this.f61006a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModifyReasonFromContactInfoClickedEvent) && this.f61006a == ((ModifyReasonFromContactInfoClickedEvent) obj).f61006a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61006a);
        }

        public final String toString() {
            return tr.i("ModifyReasonFromContactInfoClickedEvent(isAppointmentModification=", ")", this.f61006a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "numberOfAppointments", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OsaListScreen implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61007a;

        public OsaListScreen(int i2) {
            this.f61007a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OsaListScreen) && this.f61007a == ((OsaListScreen) obj).f61007a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f61007a);
        }

        public final String toString() {
            return n00.m(this.f61007a, "OsaListScreen(numberOfAppointments=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrepareAppointmentEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PrepareAppointmentEvent f61008a = new PrepareAppointmentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrepareAppointmentEvent);
        }

        public final int hashCode() {
            return 1998031996;
        }

        public final String toString() {
            return "PrepareAppointmentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;", "Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;", "", "reasonId", "", "isAppointmentModification", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectReasonEvent implements OsaTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61010b;

        public SelectReasonEvent(String str, boolean z) {
            str.getClass();
            this.f61009a = str;
            this.f61010b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectReasonEvent)) {
                return false;
            }
            SelectReasonEvent selectReasonEvent = (SelectReasonEvent) obj;
            return Intrinsics.c(this.f61009a, selectReasonEvent.f61009a) && this.f61010b == selectReasonEvent.f61010b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61010b) + (this.f61009a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("SelectReasonEvent(reasonId=", this.f61009a, ", isAppointmentModification=", ")", this.f61010b);
        }
    }

    static String a(boolean z) {
        return z ? "modify" : "creation";
    }
}
