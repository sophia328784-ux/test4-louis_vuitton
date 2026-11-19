package com.vuitton.foundation.model.domain.model.booking;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\u0004\r\u000e\u000f\u0010¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", "", "SingleChoiceLayout", "SingleChoice", "ChoiceValue", "MultipleText", "FreeTyping", "MultipleTextCategory", "MultipleTextOption", "Calendar", "Slot", "SlotDate", "TimeSlot", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingFormModuleData {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;", "options", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTextCategory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66727a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f66729c;

        public MultipleTextCategory(String str, String str2, List<MultipleTextOption> list) {
            pq0.B(str, str2, list);
            this.f66727a = str;
            this.f66728b = str2;
            this.f66729c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTextCategory)) {
                return false;
            }
            MultipleTextCategory multipleTextCategory = (MultipleTextCategory) obj;
            return Intrinsics.c(this.f66727a, multipleTextCategory.f66727a) && Intrinsics.c(this.f66728b, multipleTextCategory.f66728b) && Intrinsics.c(this.f66729c, multipleTextCategory.f66729c);
        }

        public final int hashCode() {
            return this.f66729c.hashCode() + fc.b(this.f66727a.hashCode() * 31, 31, this.f66728b);
        }

        public final String toString() {
            return a.o(fc.s("MultipleTextCategory(id=", this.f66727a, ", title=", this.f66728b, ", options="), this.f66729c, ")");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;", "", "SMALL", "LARGE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Slot;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;", "dates", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Slot implements BookingFormModuleData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66736a;

        public Slot(List<SlotDate> list) {
            list.getClass();
            this.f66736a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Slot) && Intrinsics.c(this.f66736a, ((Slot) obj).f66736a);
        }

        public final int hashCode() {
            return this.f66736a.hashCode();
        }

        public final String toString() {
            return d21.o("Slot(dates=", ")", this.f66736a);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;", "", "", b.a.f24015b, "name", "selectedDisplayName", "", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TimeSlot {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66742c;
        public final boolean d;

        public TimeSlot(String str, String str2, String str3, boolean z) {
            cj.z(str, str2, str3);
            this.f66740a = str;
            this.f66741b = str2;
            this.f66742c = str3;
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
            return Intrinsics.c(this.f66740a, timeSlot.f66740a) && Intrinsics.c(this.f66741b, timeSlot.f66741b) && Intrinsics.c(this.f66742c, timeSlot.f66742c) && this.d == timeSlot.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + fc.b(fc.b(this.f66740a.hashCode() * 31, 31, this.f66741b), 31, this.f66742c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("TimeSlot(id=", this.f66740a, ", name=", this.f66741b, ", selectedDisplayName=");
            sbS.append(this.f66742c);
            sbS.append(", disabled=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$Calendar;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", "", "Ljava/time/LocalDateTime;", "availableDates", "selectedDate", "<init>", "(Ljava/util/List;Ljava/time/LocalDateTime;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Calendar implements BookingFormModuleData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LocalDateTime f66717b;

        public Calendar(List<LocalDateTime> list, LocalDateTime localDateTime) {
            list.getClass();
            this.f66716a = list;
            this.f66717b = localDateTime;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Calendar)) {
                return false;
            }
            Calendar calendar = (Calendar) obj;
            return Intrinsics.c(this.f66716a, calendar.f66716a) && Intrinsics.c(this.f66717b, calendar.f66717b);
        }

        public final int hashCode() {
            int iHashCode = this.f66716a.hashCode() * 31;
            LocalDateTime localDateTime = this.f66717b;
            return iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode());
        }

        public final String toString() {
            return "Calendar(availableDates=" + this.f66716a + ", selectedDate=" + this.f66717b + ")";
        }

        public /* synthetic */ Calendar(List list, LocalDateTime localDateTime, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : localDateTime);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;", "", "", "value", "placeholder", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FreeTyping {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66723b;

        public FreeTyping(String str, String str2) {
            str2.getClass();
            this.f66722a = str;
            this.f66723b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FreeTyping)) {
                return false;
            }
            FreeTyping freeTyping = (FreeTyping) obj;
            return Intrinsics.c(this.f66722a, freeTyping.f66722a) && Intrinsics.c(this.f66723b, freeTyping.f66723b);
        }

        public final int hashCode() {
            String str = this.f66722a;
            return this.f66723b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return d21.l("FreeTyping(value=", this.f66722a, ", placeholder=", this.f66723b, ")");
        }

        public /* synthetic */ FreeTyping(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, str2);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleText;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextCategory;", "categories", "", "filledDisplayName", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;", "freeTyping", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$FreeTyping;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleText implements BookingFormModuleData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66725b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FreeTyping f66726c;

        public MultipleText(List<MultipleTextCategory> list, String str, FreeTyping freeTyping) {
            list.getClass();
            str.getClass();
            this.f66724a = list;
            this.f66725b = str;
            this.f66726c = freeTyping;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleText)) {
                return false;
            }
            MultipleText multipleText = (MultipleText) obj;
            return Intrinsics.c(this.f66724a, multipleText.f66724a) && Intrinsics.c(this.f66725b, multipleText.f66725b) && Intrinsics.c(this.f66726c, multipleText.f66726c);
        }

        public final int hashCode() {
            int iB = fc.b(this.f66724a.hashCode() * 31, 31, this.f66725b);
            FreeTyping freeTyping = this.f66726c;
            return iB + (freeTyping == null ? 0 : freeTyping.hashCode());
        }

        public final String toString() {
            return "MultipleText(categories=" + this.f66724a + ", filledDisplayName=" + this.f66725b + ", freeTyping=" + this.f66726c + ")";
        }

        public /* synthetic */ MultipleText(List list, String str, FreeTyping freeTyping, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, str, (i2 & 4) != 0 ? null : freeTyping);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoice;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;", "layout", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;", "values", "", "selectedId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SingleChoiceLayout;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SingleChoice implements BookingFormModuleData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SingleChoiceLayout f66733a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f66734b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66735c;

        public SingleChoice(SingleChoiceLayout singleChoiceLayout, List<ChoiceValue> list, String str) {
            singleChoiceLayout.getClass();
            list.getClass();
            this.f66733a = singleChoiceLayout;
            this.f66734b = list;
            this.f66735c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SingleChoice)) {
                return false;
            }
            SingleChoice singleChoice = (SingleChoice) obj;
            return this.f66733a == singleChoice.f66733a && Intrinsics.c(this.f66734b, singleChoice.f66734b) && Intrinsics.c(this.f66735c, singleChoice.f66735c);
        }

        public final int hashCode() {
            int iA = n00.a(this.f66733a.hashCode() * 31, 31, this.f66734b);
            String str = this.f66735c;
            return iA + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SingleChoice(layout=");
            sb.append(this.f66733a);
            sb.append(", values=");
            sb.append(this.f66734b);
            sb.append(", selectedId=");
            return n00.r(this.f66735c, ")", sb);
        }

        public /* synthetic */ SingleChoice(SingleChoiceLayout singleChoiceLayout, List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(singleChoiceLayout, list, (i2 & 4) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$ChoiceValue;", "", "", b.a.f24015b, "name", "description", "selectedDisplayName", "", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChoiceValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66720c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f66721e;

        public ChoiceValue(String str, String str2, String str3, String str4, boolean z) {
            cj.z(str, str2, str4);
            this.f66718a = str;
            this.f66719b = str2;
            this.f66720c = str3;
            this.d = str4;
            this.f66721e = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChoiceValue)) {
                return false;
            }
            ChoiceValue choiceValue = (ChoiceValue) obj;
            return Intrinsics.c(this.f66718a, choiceValue.f66718a) && Intrinsics.c(this.f66719b, choiceValue.f66719b) && Intrinsics.c(this.f66720c, choiceValue.f66720c) && Intrinsics.c(this.d, choiceValue.d) && this.f66721e == choiceValue.f66721e;
        }

        public final int hashCode() {
            int iB = fc.b(this.f66718a.hashCode() * 31, 31, this.f66719b);
            String str = this.f66720c;
            return Boolean.hashCode(this.f66721e) + fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ChoiceValue(id=", this.f66718a, ", name=", this.f66719b, ", description=");
            cj.C(sbS, this.f66720c, ", selectedDisplayName=", this.d, ", disabled=");
            return a.p(sbS, this.f66721e, ")");
        }

        public /* synthetic */ ChoiceValue(String str, String str2, String str3, String str4, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? null : str3, str4, z);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$MultipleTextOption;", "", "", b.a.f24015b, "name", "", "selected", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTextOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f66732c;
        public final boolean d;

        public MultipleTextOption(String str, String str2, boolean z, boolean z2) {
            str.getClass();
            str2.getClass();
            this.f66730a = str;
            this.f66731b = str2;
            this.f66732c = z;
            this.d = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTextOption)) {
                return false;
            }
            MultipleTextOption multipleTextOption = (MultipleTextOption) obj;
            return Intrinsics.c(this.f66730a, multipleTextOption.f66730a) && Intrinsics.c(this.f66731b, multipleTextOption.f66731b) && this.f66732c == multipleTextOption.f66732c && this.d == multipleTextOption.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + o60.b(fc.b(this.f66730a.hashCode() * 31, 31, this.f66731b), 31, this.f66732c);
        }

        public final String toString() {
            return pq0.p(fc.s("MultipleTextOption(id=", this.f66730a, ", name=", this.f66731b, ", selected="), this.f66732c, ", disabled=", this.d, ")");
        }

        public /* synthetic */ MultipleTextOption(String str, String str2, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$SlotDate;", "", "Ljava/time/LocalDateTime;", "date", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData$TimeSlot;", "morningSlots", "afternoonSlots", "", "selectedSlotId", "<init>", "(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SlotDate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LocalDateTime f66737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f66738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f66739c;
        public final String d;

        public SlotDate(LocalDateTime localDateTime, List<TimeSlot> list, List<TimeSlot> list2, String str) {
            localDateTime.getClass();
            list.getClass();
            list2.getClass();
            this.f66737a = localDateTime;
            this.f66738b = list;
            this.f66739c = list2;
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
            return Intrinsics.c(this.f66737a, slotDate.f66737a) && Intrinsics.c(this.f66738b, slotDate.f66738b) && Intrinsics.c(this.f66739c, slotDate.f66739c) && Intrinsics.c(this.d, slotDate.d);
        }

        public final int hashCode() {
            int iA = n00.a(n00.a(this.f66737a.hashCode() * 31, 31, this.f66738b), 31, this.f66739c);
            String str = this.d;
            return iA + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "SlotDate(date=" + this.f66737a + ", morningSlots=" + this.f66738b + ", afternoonSlots=" + this.f66739c + ", selectedSlotId=" + this.d + ")";
        }

        public /* synthetic */ SlotDate(LocalDateTime localDateTime, List list, List list2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(localDateTime, list, list2, (i2 & 8) != 0 ? null : str);
        }
    }
}
