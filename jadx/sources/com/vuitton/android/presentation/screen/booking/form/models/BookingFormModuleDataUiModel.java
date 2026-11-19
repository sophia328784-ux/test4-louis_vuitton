package com.vuitton.android.presentation.screen.booking.form.models;

import com.batch.android.s.b;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\u0004\r\u000e\u000f\u0010¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", "", "SingleChoiceLayout", "SingleChoice", "ChoiceValue", "MultipleText", "MultipleTextCategory", "MultipleTextOption", "FreeTypingUiModel", "Calendar", "Slot", "SlotDate", "TimeSlot", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingFormModuleDataUiModel {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;", "options", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTextCategory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f54520c;

        public MultipleTextCategory(String str, String str2, List<MultipleTextOption> list) {
            pq0.B(str, str2, list);
            this.f54518a = str;
            this.f54519b = str2;
            this.f54520c = list;
        }

        public static MultipleTextCategory a(MultipleTextCategory multipleTextCategory, List list) {
            String str = multipleTextCategory.f54518a;
            String str2 = multipleTextCategory.f54519b;
            str.getClass();
            str2.getClass();
            list.getClass();
            return new MultipleTextCategory(str, str2, list);
        }

        public final int b() {
            List list = this.f54520c;
            int i2 = 0;
            if ((list instanceof Collection) && list.isEmpty()) {
                return 0;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((MultipleTextOption) it.next()).f54523c && (i2 = i2 + 1) < 0) {
                    CollectionsKt.s0();
                    throw null;
                }
            }
            return i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTextCategory)) {
                return false;
            }
            MultipleTextCategory multipleTextCategory = (MultipleTextCategory) obj;
            return Intrinsics.c(this.f54518a, multipleTextCategory.f54518a) && Intrinsics.c(this.f54519b, multipleTextCategory.f54519b) && Intrinsics.c(this.f54520c, multipleTextCategory.f54520c);
        }

        public final int hashCode() {
            return this.f54520c.hashCode() + fc.b(this.f54518a.hashCode() * 31, 31, this.f54519b);
        }

        public final String toString() {
            return a.o(fc.s("MultipleTextCategory(id=", this.f54518a, ", title=", this.f54519b, ", options="), this.f54520c, ")");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;", "", "SMALL", "LARGE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SingleChoiceLayout {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SingleChoiceLayout[] $VALUES;
        public static final SingleChoiceLayout LARGE;
        public static final SingleChoiceLayout SMALL;

        static {
            SingleChoiceLayout singleChoiceLayout = new SingleChoiceLayout("SMALL", 0);
            SMALL = singleChoiceLayout;
            SingleChoiceLayout singleChoiceLayout2 = new SingleChoiceLayout("LARGE", 1);
            LARGE = singleChoiceLayout2;
            SingleChoiceLayout[] singleChoiceLayoutArr = {singleChoiceLayout, singleChoiceLayout2};
            $VALUES = singleChoiceLayoutArr;
            $ENTRIES = EnumEntriesKt.a(singleChoiceLayoutArr);
        }

        public static SingleChoiceLayout valueOf(String str) {
            return (SingleChoiceLayout) Enum.valueOf(SingleChoiceLayout.class, str);
        }

        public static SingleChoiceLayout[] values() {
            return (SingleChoiceLayout[]) $VALUES.clone();
        }
    }

    StringResourceUiModel a();

    boolean isCompleted();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", "", "Ljava/time/LocalDateTime;", "availableDates", "selectedDate", "<init>", "(Ljava/util/List;Ljava/time/LocalDateTime;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Calendar implements BookingFormModuleDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f54507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LocalDateTime f54508b;

        public Calendar(List<LocalDateTime> list, LocalDateTime localDateTime) {
            list.getClass();
            this.f54507a = list;
            this.f54508b = localDateTime;
        }

        public static Calendar b(Calendar calendar, LocalDateTime localDateTime) {
            List list = calendar.f54507a;
            calendar.getClass();
            list.getClass();
            return new Calendar(list, localDateTime);
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final StringResourceUiModel a() {
            String str;
            LocalDateTime localDateTime = this.f54508b;
            if (localDateTime == null || (str = localDateTime.format(DateTimeFormatter.ofPattern("d MMMM", Locale.getDefault()))) == null) {
                return null;
            }
            return new StringResourceUiModel.Text(str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Calendar)) {
                return false;
            }
            Calendar calendar = (Calendar) obj;
            return Intrinsics.c(this.f54507a, calendar.f54507a) && Intrinsics.c(this.f54508b, calendar.f54508b);
        }

        public final int hashCode() {
            int iHashCode = this.f54507a.hashCode() * 31;
            LocalDateTime localDateTime = this.f54508b;
            return iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode());
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final boolean isCompleted() {
            return this.f54508b != null;
        }

        public final String toString() {
            return "Calendar(availableDates=" + this.f54507a + ", selectedDate=" + this.f54508b + ")";
        }

        public /* synthetic */ Calendar(List list, LocalDateTime localDateTime, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : localDateTime);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;", "", "", "value", "placeholder", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FreeTypingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54514b;

        public FreeTypingUiModel(String str, String str2) {
            str2.getClass();
            this.f54513a = str;
            this.f54514b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FreeTypingUiModel)) {
                return false;
            }
            FreeTypingUiModel freeTypingUiModel = (FreeTypingUiModel) obj;
            return Intrinsics.c(this.f54513a, freeTypingUiModel.f54513a) && Intrinsics.c(this.f54514b, freeTypingUiModel.f54514b);
        }

        public final int hashCode() {
            String str = this.f54513a;
            return this.f54514b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return d21.l("FreeTypingUiModel(value=", this.f54513a, ", placeholder=", this.f54514b, ")");
        }

        public /* synthetic */ FreeTypingUiModel(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, str2);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;", "dates", "selectedDate", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;", "selectedSlot", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Slot implements BookingFormModuleDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f54527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SlotDate f54528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TimeSlot f54529c;

        public /* synthetic */ Slot(List list, SlotDate slotDate, TimeSlot timeSlot, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : slotDate, (i2 & 4) != 0 ? null : timeSlot);
        }

        public static Slot b(Slot slot, SlotDate slotDate, TimeSlot timeSlot, int i2) {
            List list = slot.f54527a;
            if ((i2 & 2) != 0) {
                slotDate = slot.f54528b;
            }
            if ((i2 & 4) != 0) {
                timeSlot = slot.f54529c;
            }
            slot.getClass();
            list.getClass();
            return new Slot(list, slotDate, timeSlot);
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final StringResourceUiModel a() {
            String str;
            TimeSlot timeSlot = this.f54529c;
            if (timeSlot == null || (str = timeSlot.f54534b) == null) {
                return null;
            }
            return new StringResourceUiModel.Text(str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Slot)) {
                return false;
            }
            Slot slot = (Slot) obj;
            return Intrinsics.c(this.f54527a, slot.f54527a) && Intrinsics.c(this.f54528b, slot.f54528b) && Intrinsics.c(this.f54529c, slot.f54529c);
        }

        public final int hashCode() {
            int iHashCode = this.f54527a.hashCode() * 31;
            SlotDate slotDate = this.f54528b;
            int iHashCode2 = (iHashCode + (slotDate == null ? 0 : slotDate.hashCode())) * 31;
            TimeSlot timeSlot = this.f54529c;
            return iHashCode2 + (timeSlot != null ? timeSlot.hashCode() : 0);
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final boolean isCompleted() {
            return this.f54529c != null;
        }

        public final String toString() {
            return "Slot(dates=" + this.f54527a + ", selectedDate=" + this.f54528b + ", selectedSlot=" + this.f54529c + ")";
        }

        public Slot(List<SlotDate> list, SlotDate slotDate, TimeSlot timeSlot) {
            list.getClass();
            this.f54527a = list;
            this.f54528b = slotDate;
            this.f54529c = timeSlot;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;", "", "", b.a.f24015b, "name", "selectedDisplayName", "", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TimeSlot {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54533a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f54535c;
        public final boolean d;

        public TimeSlot(String str, String str2, String str3, boolean z) {
            cj.z(str, str2, str3);
            this.f54533a = str;
            this.f54534b = str2;
            this.f54535c = str3;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeSlot)) {
                return false;
            }
            TimeSlot timeSlot = (TimeSlot) obj;
            return Intrinsics.c(this.f54533a, timeSlot.f54533a) && Intrinsics.c(this.f54534b, timeSlot.f54534b) && Intrinsics.c(this.f54535c, timeSlot.f54535c) && this.d == timeSlot.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + fc.b(fc.b(this.f54533a.hashCode() * 31, 31, this.f54534b), 31, this.f54535c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("TimeSlot(id=", this.f54533a, ", name=", this.f54534b, ", selectedDisplayName=");
            sbS.append(this.f54535c);
            sbS.append(", disabled=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ TimeSlot(String str, String str2, String str3, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? false : z);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;", "categories", "", "filledDisplayName", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;", "freeTyping", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleText implements BookingFormModuleDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f54515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54516b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FreeTypingUiModel f54517c;

        public MultipleText(List<MultipleTextCategory> list, String str, FreeTypingUiModel freeTypingUiModel) {
            list.getClass();
            str.getClass();
            this.f54515a = list;
            this.f54516b = str;
            this.f54517c = freeTypingUiModel;
        }

        public static MultipleText b(MultipleText multipleText, ArrayList arrayList, int i2) {
            String str = multipleText.f54516b;
            FreeTypingUiModel freeTypingUiModel = (i2 & 4) != 0 ? multipleText.f54517c : null;
            multipleText.getClass();
            str.getClass();
            return new MultipleText(arrayList, str, freeTypingUiModel);
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final StringResourceUiModel a() {
            StringResourceUiModel.ResId resId = new StringResourceUiModel.ResId(R.string.booking_form_request_card_selected_subtitle, null, 2, null);
            if (isCompleted()) {
                return resId;
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleText)) {
                return false;
            }
            MultipleText multipleText = (MultipleText) obj;
            return Intrinsics.c(this.f54515a, multipleText.f54515a) && Intrinsics.c(this.f54516b, multipleText.f54516b) && Intrinsics.c(this.f54517c, multipleText.f54517c);
        }

        public final int hashCode() {
            int iB = fc.b(this.f54515a.hashCode() * 31, 31, this.f54516b);
            FreeTypingUiModel freeTypingUiModel = this.f54517c;
            return iB + (freeTypingUiModel == null ? 0 : freeTypingUiModel.hashCode());
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final boolean isCompleted() {
            List list = this.f54515a;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    List list2 = ((MultipleTextCategory) it.next()).f54520c;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            if (((MultipleTextOption) it2.next()).f54523c) {
                                return true;
                            }
                        }
                    }
                }
            }
            FreeTypingUiModel freeTypingUiModel = this.f54517c;
            String str = freeTypingUiModel != null ? freeTypingUiModel.f54513a : null;
            return (str == null || StringsKt.w(str)) ? false : true;
        }

        public final String toString() {
            return "MultipleText(categories=" + this.f54515a + ", filledDisplayName=" + this.f54516b + ", freeTyping=" + this.f54517c + ")";
        }

        public /* synthetic */ MultipleText(List list, String str, FreeTypingUiModel freeTypingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, str, (i2 & 4) != 0 ? null : freeTypingUiModel);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;", "layout", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;", "values", "", "selectedId", "<init>", "(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SingleChoice implements BookingFormModuleDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SingleChoiceLayout f54524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f54525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f54526c;

        public SingleChoice(SingleChoiceLayout singleChoiceLayout, List<ChoiceValue> list, String str) {
            singleChoiceLayout.getClass();
            list.getClass();
            this.f54524a = singleChoiceLayout;
            this.f54525b = list;
            this.f54526c = str;
        }

        public static SingleChoice b(SingleChoice singleChoice, String str) {
            SingleChoiceLayout singleChoiceLayout = singleChoice.f54524a;
            List list = singleChoice.f54525b;
            singleChoice.getClass();
            singleChoiceLayout.getClass();
            list.getClass();
            return new SingleChoice(singleChoiceLayout, list, str);
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final StringResourceUiModel a() {
            Object next;
            String str;
            Iterator it = this.f54525b.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((ChoiceValue) next).f54509a, this.f54526c));
            ChoiceValue choiceValue = (ChoiceValue) next;
            if (choiceValue == null || (str = choiceValue.f54511c) == null) {
                return null;
            }
            return new StringResourceUiModel.Text(str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SingleChoice)) {
                return false;
            }
            SingleChoice singleChoice = (SingleChoice) obj;
            return this.f54524a == singleChoice.f54524a && Intrinsics.c(this.f54525b, singleChoice.f54525b) && Intrinsics.c(this.f54526c, singleChoice.f54526c);
        }

        public final int hashCode() {
            int iA = n00.a(this.f54524a.hashCode() * 31, 31, this.f54525b);
            String str = this.f54526c;
            return iA + (str == null ? 0 : str.hashCode());
        }

        @Override // com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel
        public final boolean isCompleted() {
            return this.f54526c != null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SingleChoice(layout=");
            sb.append(this.f54524a);
            sb.append(", values=");
            sb.append(this.f54525b);
            sb.append(", selectedId=");
            return n00.r(this.f54526c, ")", sb);
        }

        public /* synthetic */ SingleChoice(SingleChoiceLayout singleChoiceLayout, List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(singleChoiceLayout, list, (i2 & 4) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;", "", "", b.a.f24015b, "name", "", "selected", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTextOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f54523c;
        public final boolean d;

        public MultipleTextOption(String str, String str2, boolean z, boolean z2) {
            str.getClass();
            str2.getClass();
            this.f54521a = str;
            this.f54522b = str2;
            this.f54523c = z;
            this.d = z2;
        }

        public static MultipleTextOption a(MultipleTextOption multipleTextOption, boolean z) {
            String str = multipleTextOption.f54521a;
            String str2 = multipleTextOption.f54522b;
            boolean z2 = multipleTextOption.d;
            multipleTextOption.getClass();
            str.getClass();
            str2.getClass();
            return new MultipleTextOption(str, str2, z, z2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTextOption)) {
                return false;
            }
            MultipleTextOption multipleTextOption = (MultipleTextOption) obj;
            return Intrinsics.c(this.f54521a, multipleTextOption.f54521a) && Intrinsics.c(this.f54522b, multipleTextOption.f54522b) && this.f54523c == multipleTextOption.f54523c && this.d == multipleTextOption.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + o60.b(fc.b(this.f54521a.hashCode() * 31, 31, this.f54522b), 31, this.f54523c);
        }

        public final String toString() {
            return pq0.p(fc.s("MultipleTextOption(id=", this.f54521a, ", name=", this.f54522b, ", selected="), this.f54523c, ", disabled=", this.d, ")");
        }

        public /* synthetic */ MultipleTextOption(String str, String str2, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;", "", "", b.a.f24015b, "name", "selectedDisplayName", "description", "", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChoiceValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f54511c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f54512e;

        public /* synthetic */ ChoiceValue(String str, String str2, String str3, String str4, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChoiceValue)) {
                return false;
            }
            ChoiceValue choiceValue = (ChoiceValue) obj;
            return Intrinsics.c(this.f54509a, choiceValue.f54509a) && Intrinsics.c(this.f54510b, choiceValue.f54510b) && Intrinsics.c(this.f54511c, choiceValue.f54511c) && Intrinsics.c(this.d, choiceValue.d) && this.f54512e == choiceValue.f54512e;
        }

        public final int hashCode() {
            int iB = fc.b(fc.b(this.f54509a.hashCode() * 31, 31, this.f54510b), 31, this.f54511c);
            String str = this.d;
            return Boolean.hashCode(this.f54512e) + ((iB + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ChoiceValue(id=", this.f54509a, ", name=", this.f54510b, ", selectedDisplayName=");
            cj.C(sbS, this.f54511c, ", description=", this.d, ", disabled=");
            return a.p(sbS, this.f54512e, ")");
        }

        public ChoiceValue(String str, String str2, String str3, String str4, boolean z) {
            cj.z(str, str2, str3);
            this.f54509a = str;
            this.f54510b = str2;
            this.f54511c = str3;
            this.d = str4;
            this.f54512e = z;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;", "", "Ljava/time/LocalDateTime;", "date", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;", "morningSlots", "afternoonSlots", "", "selectedSlotId", "<init>", "(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SlotDate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LocalDateTime f54530a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f54531b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f54532c;
        public final String d;

        public SlotDate(LocalDateTime localDateTime, List<TimeSlot> list, List<TimeSlot> list2, String str) {
            localDateTime.getClass();
            list.getClass();
            list2.getClass();
            this.f54530a = localDateTime;
            this.f54531b = list;
            this.f54532c = list2;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SlotDate)) {
                return false;
            }
            SlotDate slotDate = (SlotDate) obj;
            return Intrinsics.c(this.f54530a, slotDate.f54530a) && Intrinsics.c(this.f54531b, slotDate.f54531b) && Intrinsics.c(this.f54532c, slotDate.f54532c) && Intrinsics.c(this.d, slotDate.d);
        }

        public final int hashCode() {
            int iA = n00.a(n00.a(this.f54530a.hashCode() * 31, 31, this.f54531b), 31, this.f54532c);
            String str = this.d;
            return iA + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "SlotDate(date=" + this.f54530a + ", morningSlots=" + this.f54531b + ", afternoonSlots=" + this.f54532c + ", selectedSlotId=" + this.d + ")";
        }

        public /* synthetic */ SlotDate(LocalDateTime localDateTime, List list, List list2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(localDateTime, list, list2, (i2 & 8) != 0 ? null : str);
        }
    }
}
