package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingDisclaimerActionDto;
import com.vuitton.android.data.dto.booking.BookingDisclaimerDto;
import com.vuitton.android.data.dto.booking.BookingFormCategoryDto;
import com.vuitton.android.data.dto.booking.BookingFormCategoryOptionDto;
import com.vuitton.android.data.dto.booking.BookingFormChoiceValueDto;
import com.vuitton.android.data.dto.booking.BookingFormDto;
import com.vuitton.android.data.dto.booking.BookingFormFreeTypingDto;
import com.vuitton.android.data.dto.booking.BookingFormResponseDto;
import com.vuitton.android.data.dto.booking.BookingFormSlotDateDto;
import com.vuitton.android.data.dto.booking.BookingFormSlotDto;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto;
import com.vuitton.android.data.dto.booking.BookingFormStepDto;
import com.vuitton.android.data.dto.booking.SingleTextLayoutDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.foundation.model.domain.model.booking.BookingDisclaimer;
import com.vuitton.foundation.model.domain.model.booking.BookingDisclaimerAction;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.BookingFormHeader;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModuleData;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.v40;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingFormMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44787a;

        static {
            int[] iArr = new int[SingleTextLayoutDto.values().length];
            try {
                iArr[SingleTextLayoutDto.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SingleTextLayoutDto.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f44787a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x01b6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:77:0x01df  */
    public static final BookingFormModule a(BookingFormStepDto bookingFormStepDto) {
        BookingFormModuleData calendar;
        BookingFormModuleData multipleText;
        BookingFormModuleData.SlotDate slotDate;
        BookingDisclaimerDto bookingDisclaimerDto;
        BookingDisclaimer bookingDisclaimer;
        BookingFormModuleData.SingleChoiceLayout singleChoiceLayout;
        bookingFormStepDto.getClass();
        BookingFormStepDataDto bookingFormStepDataDto = bookingFormStepDto.f44718j;
        if (!(bookingFormStepDataDto instanceof BookingFormStepDataDto.SingleTextDataDto)) {
            if (bookingFormStepDataDto instanceof BookingFormStepDataDto.DateDataDto) {
                BookingFormStepDataDto.DateDataDto dateDataDto = (BookingFormStepDataDto.DateDataDto) bookingFormStepDataDto;
                List list = dateDataDto.f44696b;
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    LocalDateTime localDateTimeD = StringKtExtKt.d((String) it.next());
                    if (localDateTimeD != null) {
                        arrayList.add(localDateTimeD);
                    }
                }
                String str = dateDataDto.f44697c;
                calendar = new BookingFormModuleData.Calendar(arrayList, str != null ? StringKtExtKt.d(str) : null);
            } else if (bookingFormStepDataDto instanceof BookingFormStepDataDto.SlotDataDto) {
                List<BookingFormSlotDateDto> list2 = ((BookingFormStepDataDto.SlotDataDto) bookingFormStepDataDto).f44708b;
                ArrayList arrayList2 = new ArrayList();
                for (BookingFormSlotDateDto bookingFormSlotDateDto : list2) {
                    LocalDateTime localDateTimeD2 = StringKtExtKt.d(bookingFormSlotDateDto.f44687a);
                    if (localDateTimeD2 == null) {
                        slotDate = null;
                    } else {
                        List<BookingFormSlotDto> list3 = bookingFormSlotDateDto.f44688b;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                        for (BookingFormSlotDto bookingFormSlotDto : list3) {
                            arrayList3.add(new BookingFormModuleData.TimeSlot(bookingFormSlotDto.f44691a, bookingFormSlotDto.f44692b, bookingFormSlotDto.f44693c, bookingFormSlotDto.d));
                        }
                        List<BookingFormSlotDto> list4 = bookingFormSlotDateDto.f44689c;
                        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
                        for (BookingFormSlotDto bookingFormSlotDto2 : list4) {
                            arrayList4.add(new BookingFormModuleData.TimeSlot(bookingFormSlotDto2.f44691a, bookingFormSlotDto2.f44692b, bookingFormSlotDto2.f44693c, bookingFormSlotDto2.d));
                        }
                        slotDate = new BookingFormModuleData.SlotDate(localDateTimeD2, arrayList3, arrayList4, bookingFormSlotDateDto.d);
                    }
                    if (slotDate != null) {
                        arrayList2.add(slotDate);
                    }
                }
                multipleText = new BookingFormModuleData.Slot(arrayList2);
            } else if (bookingFormStepDataDto instanceof BookingFormStepDataDto.MultipleTextDataDto) {
                BookingFormStepDataDto.MultipleTextDataDto multipleTextDataDto = (BookingFormStepDataDto.MultipleTextDataDto) bookingFormStepDataDto;
                List<BookingFormCategoryDto> list5 = multipleTextDataDto.f44700b;
                ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list5, 10));
                for (BookingFormCategoryDto bookingFormCategoryDto : list5) {
                    String str2 = bookingFormCategoryDto.f44656a;
                    String str3 = bookingFormCategoryDto.f44657b;
                    List<BookingFormCategoryOptionDto> list6 = bookingFormCategoryDto.f44658c;
                    ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list6, 10));
                    for (BookingFormCategoryOptionDto bookingFormCategoryOptionDto : list6) {
                        arrayList6.add(new BookingFormModuleData.MultipleTextOption(bookingFormCategoryOptionDto.f44660a, bookingFormCategoryOptionDto.f44661b, bookingFormCategoryOptionDto.f44662c, bookingFormCategoryOptionDto.d));
                    }
                    arrayList5.add(new BookingFormModuleData.MultipleTextCategory(str2, str3, arrayList6));
                }
                String str4 = multipleTextDataDto.d;
                BookingFormFreeTypingDto bookingFormFreeTypingDto = multipleTextDataDto.f44701c;
                multipleText = new BookingFormModuleData.MultipleText(arrayList5, str4, bookingFormFreeTypingDto != null ? new BookingFormModuleData.FreeTyping(bookingFormFreeTypingDto.f44673a, bookingFormFreeTypingDto.f44674b) : null);
            } else {
                if (!Intrinsics.c(bookingFormStepDataDto, BookingFormStepDataDto.UnknownDataDto.INSTANCE)) {
                    v40.g();
                    return null;
                }
                calendar = null;
            }
            if (calendar == null) {
                return null;
            }
            String str5 = bookingFormStepDto.f44711a;
            String str6 = bookingFormStepDto.f44713c;
            String str7 = bookingFormStepDto.d;
            String str8 = bookingFormStepDto.f44714e;
            bookingDisclaimerDto = bookingFormStepDto.f44715f;
            if (bookingDisclaimerDto != null) {
                String str9 = bookingDisclaimerDto.f44639a;
                BookingDisclaimerActionDto bookingDisclaimerActionDto = bookingDisclaimerDto.f44640b;
                bookingDisclaimer = new BookingDisclaimer(str9, bookingDisclaimerActionDto != null ? new BookingDisclaimerAction(bookingDisclaimerActionDto.f44636a, ContributionLinkMapperKt.a(bookingDisclaimerActionDto.f44637b)) : null);
            } else {
                bookingDisclaimer = null;
            }
            return new BookingFormModule(str5, str6, str7, str8, bookingDisclaimer, !bookingFormStepDto.g, bookingFormStepDto.f44716h, bookingFormStepDto.f44717i, calendar);
        }
        BookingFormStepDataDto.SingleTextDataDto singleTextDataDto = (BookingFormStepDataDto.SingleTextDataDto) bookingFormStepDataDto;
        int i2 = WhenMappings.f44787a[singleTextDataDto.d.ordinal()];
        if (i2 == 1) {
            singleChoiceLayout = BookingFormModuleData.SingleChoiceLayout.SMALL;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            singleChoiceLayout = BookingFormModuleData.SingleChoiceLayout.LARGE;
        }
        List<BookingFormChoiceValueDto> list7 = singleTextDataDto.f44704b;
        ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list7, 10));
        for (BookingFormChoiceValueDto bookingFormChoiceValueDto : list7) {
            arrayList7.add(new BookingFormModuleData.ChoiceValue(bookingFormChoiceValueDto.f44664a, bookingFormChoiceValueDto.f44665b, bookingFormChoiceValueDto.f44666c, bookingFormChoiceValueDto.d, bookingFormChoiceValueDto.f44667e));
        }
        multipleText = new BookingFormModuleData.SingleChoice(singleChoiceLayout, arrayList7, singleTextDataDto.f44705c);
        calendar = multipleText;
        if (calendar == null) {
            return null;
        }
        String str10 = bookingFormStepDto.f44711a;
        String str11 = bookingFormStepDto.f44713c;
        String str12 = bookingFormStepDto.d;
        String str13 = bookingFormStepDto.f44714e;
        bookingDisclaimerDto = bookingFormStepDto.f44715f;
        if (bookingDisclaimerDto != null) {
            String str14 = bookingDisclaimerDto.f44639a;
            BookingDisclaimerActionDto bookingDisclaimerActionDto2 = bookingDisclaimerDto.f44640b;
            bookingDisclaimer = new BookingDisclaimer(str14, bookingDisclaimerActionDto2 != null ? new BookingDisclaimerAction(bookingDisclaimerActionDto2.f44636a, ContributionLinkMapperKt.a(bookingDisclaimerActionDto2.f44637b)) : null);
        } else {
            bookingDisclaimer = null;
        }
        return new BookingFormModule(str10, str11, str12, str13, bookingDisclaimer, !bookingFormStepDto.g, bookingFormStepDto.f44716h, bookingFormStepDto.f44717i, calendar);
    }

    public static final BookingForm b(BookingFormResponseDto bookingFormResponseDto) {
        bookingFormResponseDto.getClass();
        String str = bookingFormResponseDto.f44677a;
        String str2 = bookingFormResponseDto.f44678b;
        BookingFormDto bookingFormDto = bookingFormResponseDto.f44682h;
        String str3 = bookingFormDto.f44670a;
        BookingFormHeader bookingFormHeader = new BookingFormHeader(str2, bookingFormResponseDto.f44679c, bookingFormResponseDto.d, bookingFormResponseDto.f44680e, bookingFormResponseDto.f44681f, AssetMapperKt.b(bookingFormResponseDto.g), bookingFormResponseDto.f44684j);
        List list = bookingFormDto.f44671b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            BookingFormModule bookingFormModuleA = a((BookingFormStepDto) it.next());
            if (bookingFormModuleA != null) {
                arrayList.add(bookingFormModuleA);
            }
        }
        return new BookingForm(str, str2, str3, bookingFormHeader, arrayList, BookingListMapperKt.e(bookingFormResponseDto.f44683i));
    }
}
