package com.vuitton.android.presentation.screen.booking.form.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.foundation.model.domain.model.booking.BookingDisclaimer;
import com.vuitton.foundation.model.domain.model.booking.BookingDisclaimerAction;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModuleData;
import defpackage.v40;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f54561b;

        static {
            int[] iArr = new int[BookingFormModuleData.SingleChoiceLayout.values().length];
            try {
                iArr[BookingFormModuleData.SingleChoiceLayout.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingFormModuleData.SingleChoiceLayout.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54560a = iArr;
            int[] iArr2 = new int[BookingFormModuleDataUiModel.SingleChoiceLayout.values().length];
            try {
                iArr2[BookingFormModuleDataUiModel.SingleChoiceLayout.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BookingFormModuleDataUiModel.SingleChoiceLayout.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f54561b = iArr2;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule, still in use, count: 3, list:
          (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) from 0x023a: MOVE (r28v0 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) = (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule)
          (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) from 0x016d: PHI (r11v4 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) = 
          (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule)
          (r11v6 com.vuitton.foundation.model.domain.model.booking.BookingFormModule)
         binds: [B:49:0x015e, B:69:0x020c] A[DONT_GENERATE, DONT_INLINE]
          (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) from 0x00dd: MOVE (r28v5 com.vuitton.foundation.model.domain.model.booking.BookingFormModule) = (r11v2 com.vuitton.foundation.model.domain.model.booking.BookingFormModule)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:59)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    public static final com.vuitton.foundation.model.domain.model.booking.BookingForm a(com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel r31) {
        /*
            Method dump skipped, instruction units count: 792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt.a(com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel):com.vuitton.foundation.model.domain.model.booking.BookingForm");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final BookingFormModuleUiModel b(BookingFormModule bookingFormModule) {
        BookingFormModuleUiModel bookingFormModuleUiModel;
        BookingDisclaimerUiModel bookingDisclaimerUiModel;
        String str;
        String str2;
        String str3;
        String str4;
        BookingFormModuleDataUiModel multipleText;
        BookingFormModuleData.TimeSlot timeSlot;
        Object next;
        BookingFormModuleDataUiModel calendar;
        BookingFormModuleDataUiModel.SingleChoiceLayout singleChoiceLayout;
        bookingFormModule.getClass();
        String str5 = bookingFormModule.f66709a;
        String str6 = bookingFormModule.f66710b;
        String str7 = bookingFormModule.f66711c;
        String str8 = bookingFormModule.d;
        BookingDisclaimer bookingDisclaimer = bookingFormModule.f66712e;
        if (bookingDisclaimer != null) {
            String str9 = bookingDisclaimer.f66693a;
            BookingDisclaimerAction bookingDisclaimerAction = bookingDisclaimer.f66694b;
            bookingDisclaimerUiModel = new BookingDisclaimerUiModel(str9, bookingDisclaimerAction != null ? new DisclaimerActionUiModel(bookingDisclaimerAction.f66695a, ContributionLinkUiModelKt.a(bookingDisclaimerAction.f66696b)) : null);
            bookingFormModuleUiModel = null;
        } else {
            bookingFormModuleUiModel = null;
            bookingDisclaimerUiModel = null;
        }
        boolean z = bookingFormModule.f66713f;
        boolean z2 = bookingFormModule.g;
        List list = bookingFormModule.f66714h;
        BookingFormModuleData bookingFormModuleData = bookingFormModule.f66715i;
        bookingFormModuleData.getClass();
        int i2 = 10;
        if (!(bookingFormModuleData instanceof BookingFormModuleData.SingleChoice)) {
            str = str5;
            if (bookingFormModuleData instanceof BookingFormModuleData.Calendar) {
                BookingFormModuleData.Calendar calendar2 = (BookingFormModuleData.Calendar) bookingFormModuleData;
                calendar = new BookingFormModuleDataUiModel.Calendar(calendar2.f66716a, calendar2.f66717b);
            } else if (bookingFormModuleData instanceof BookingFormModuleData.Slot) {
                List list2 = ((BookingFormModuleData.Slot) bookingFormModuleData).f66736a;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    BookingFormModuleData.SlotDate slotDate = (BookingFormModuleData.SlotDate) it.next();
                    LocalDateTime localDateTime = slotDate.f66737a;
                    List list3 = slotDate.f66738b;
                    BookingFormModuleUiModel bookingFormModuleUiModel2 = bookingFormModuleUiModel;
                    List list4 = list2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, i2));
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        BookingFormModuleData.TimeSlot timeSlot2 = (BookingFormModuleData.TimeSlot) it2.next();
                        arrayList2.add(new BookingFormModuleDataUiModel.TimeSlot(timeSlot2.f66740a, timeSlot2.f66741b, timeSlot2.f66742c, timeSlot2.d));
                        it2 = it2;
                        it = it;
                        str6 = str6;
                    }
                    Iterator it3 = it;
                    String str10 = str6;
                    List list5 = slotDate.f66739c;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
                    for (Iterator it4 = list5.iterator(); it4.hasNext(); it4 = it4) {
                        BookingFormModuleData.TimeSlot timeSlot3 = (BookingFormModuleData.TimeSlot) it4.next();
                        arrayList3.add(new BookingFormModuleDataUiModel.TimeSlot(timeSlot3.f66740a, timeSlot3.f66741b, timeSlot3.f66742c, timeSlot3.d));
                    }
                    arrayList.add(new BookingFormModuleDataUiModel.SlotDate(localDateTime, arrayList2, arrayList3, null, 8, null));
                    list2 = list4;
                    bookingFormModuleUiModel = bookingFormModuleUiModel2;
                    it = it3;
                    str6 = str10;
                    i2 = 10;
                }
                str2 = str6;
                BookingFormModuleDataUiModel.TimeSlot timeSlot4 = bookingFormModuleUiModel;
                Iterator it5 = list2.iterator();
                do {
                    if (!it5.hasNext()) {
                        timeSlot = timeSlot4;
                        break;
                    }
                    BookingFormModuleData.SlotDate slotDate2 = (BookingFormModuleData.SlotDate) it5.next();
                    Iterator it6 = CollectionsKt.Y(slotDate2.f66738b, slotDate2.f66739c).iterator();
                    do {
                        if (!it6.hasNext()) {
                            next = timeSlot4;
                            break;
                        }
                        next = it6.next();
                    } while (!Intrinsics.c(((BookingFormModuleData.TimeSlot) next).f66740a, slotDate2.d));
                    timeSlot = (BookingFormModuleData.TimeSlot) next;
                } while (timeSlot == 0);
                if (timeSlot != 0) {
                    timeSlot4 = new BookingFormModuleDataUiModel.TimeSlot(timeSlot.f66740a, timeSlot.f66741b, timeSlot.f66742c, timeSlot.d);
                }
                str3 = str7;
                str4 = str8;
                multipleText = new BookingFormModuleDataUiModel.Slot(arrayList, null, timeSlot4, 2, null);
            } else {
                str2 = str6;
                BookingFormModuleUiModel bookingFormModuleUiModel3 = bookingFormModuleUiModel;
                if (!(bookingFormModuleData instanceof BookingFormModuleData.MultipleText)) {
                    v40.g();
                    return bookingFormModuleUiModel3;
                }
                BookingFormModuleData.MultipleText multipleText2 = (BookingFormModuleData.MultipleText) bookingFormModuleData;
                List list6 = multipleText2.f66724a;
                ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list6, 10));
                Iterator it7 = list6.iterator();
                while (it7.hasNext()) {
                    BookingFormModuleData.MultipleTextCategory multipleTextCategory = (BookingFormModuleData.MultipleTextCategory) it7.next();
                    String str11 = multipleTextCategory.f66727a;
                    String str12 = multipleTextCategory.f66728b;
                    List<BookingFormModuleData.MultipleTextOption> list7 = multipleTextCategory.f66729c;
                    ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list7, 10));
                    for (BookingFormModuleData.MultipleTextOption multipleTextOption : list7) {
                        arrayList5.add(new BookingFormModuleDataUiModel.MultipleTextOption(multipleTextOption.f66730a, multipleTextOption.f66731b, multipleTextOption.f66732c, multipleTextOption.d));
                        it7 = it7;
                        str7 = str7;
                        str8 = str8;
                    }
                    arrayList4.add(new BookingFormModuleDataUiModel.MultipleTextCategory(str11, str12, arrayList5));
                    it7 = it7;
                }
                str3 = str7;
                str4 = str8;
                String str13 = multipleText2.f66725b;
                BookingFormModuleData.FreeTyping freeTyping = multipleText2.f66726c;
                multipleText = new BookingFormModuleDataUiModel.MultipleText(arrayList4, str13, freeTyping != null ? new BookingFormModuleDataUiModel.FreeTypingUiModel(freeTyping.f66722a, freeTyping.f66723b) : bookingFormModuleUiModel3);
            }
            return new BookingFormModuleUiModel(str, str2, str3, str4, bookingDisclaimerUiModel, false, z, false, z2, list, multipleText, false, 2208, null);
        }
        BookingFormModuleData.SingleChoice singleChoice = (BookingFormModuleData.SingleChoice) bookingFormModuleData;
        int i3 = WhenMappings.f54560a[singleChoice.f66733a.ordinal()];
        if (i3 == 1) {
            singleChoiceLayout = BookingFormModuleDataUiModel.SingleChoiceLayout.SMALL;
        } else {
            if (i3 != 2) {
                v40.g();
                return bookingFormModuleUiModel;
            }
            singleChoiceLayout = BookingFormModuleDataUiModel.SingleChoiceLayout.LARGE;
        }
        List<BookingFormModuleData.ChoiceValue> list8 = singleChoice.f66734b;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list8, 10));
        for (BookingFormModuleData.ChoiceValue choiceValue : list8) {
            arrayList6.add(new BookingFormModuleDataUiModel.ChoiceValue(choiceValue.f66718a, choiceValue.f66719b, choiceValue.d, choiceValue.f66720c, choiceValue.f66721e));
            str5 = str5;
        }
        str = str5;
        calendar = new BookingFormModuleDataUiModel.SingleChoice(singleChoiceLayout, arrayList6, singleChoice.f66735c);
        multipleText = calendar;
        str2 = str6;
        str3 = str7;
        str4 = str8;
        return new BookingFormModuleUiModel(str, str2, str3, str4, bookingDisclaimerUiModel, false, z, false, z2, list, multipleText, false, 2208, null);
    }
}
