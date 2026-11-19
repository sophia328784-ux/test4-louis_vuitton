package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.booking.PrebookFormCategoryDto;
import com.vuitton.android.data.dto.booking.PrebookFormDataDto;
import com.vuitton.android.data.dto.booking.PrebookFormDto;
import com.vuitton.android.data.dto.booking.PrebookFormMultipleValueDto;
import com.vuitton.android.data.dto.booking.PrebookFormStepDto;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModuleData;
import com.vuitton.foundation.model.domain.model.booking.BookingType;
import defpackage.v40;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingFormUpdateMapperKt {
    public static final PrebookFormDataDto a(BookingForm bookingForm, String str, String str2) {
        BookingTypeDto bookingTypeDto;
        Object next;
        String string;
        PrebookFormMultipleValueDto prebookFormMultipleValueDto;
        bookingForm.getClass();
        String str3 = bookingForm.f66699a;
        BookingType bookingType = bookingForm.f66703f;
        bookingType.getClass();
        int i2 = BookingListMapperKt.WhenMappings.f44791c[bookingType.ordinal()];
        if (i2 == 1) {
            bookingTypeDto = BookingTypeDto.APPOINTMENT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            bookingTypeDto = BookingTypeDto.EXPERIENCE;
        }
        List<BookingFormModule> list = bookingForm.f66702e;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (BookingFormModule bookingFormModule : list) {
            bookingFormModule.getClass();
            String str4 = bookingFormModule.f66709a;
            BookingFormModuleData bookingFormModuleData = bookingFormModule.f66715i;
            if (bookingFormModuleData instanceof BookingFormModuleData.SingleChoice) {
                string = ((BookingFormModuleData.SingleChoice) bookingFormModuleData).f66735c;
            } else if (bookingFormModuleData instanceof BookingFormModuleData.Calendar) {
                LocalDateTime localDateTime = ((BookingFormModuleData.Calendar) bookingFormModuleData).f66717b;
                string = localDateTime != null ? localDateTime.toString() : null;
            } else if (bookingFormModuleData instanceof BookingFormModuleData.Slot) {
                Iterator it = ((BookingFormModuleData.Slot) bookingFormModuleData).f66736a.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((BookingFormModuleData.SlotDate) next).d == null);
                BookingFormModuleData.SlotDate slotDate = (BookingFormModuleData.SlotDate) next;
                if (slotDate != null) {
                    string = slotDate.d;
                }
            } else if (!(bookingFormModuleData instanceof BookingFormModuleData.MultipleText)) {
                v40.g();
                return null;
            }
            if (bookingFormModuleData instanceof BookingFormModuleData.MultipleText) {
                BookingFormModuleData.MultipleText multipleText = (BookingFormModuleData.MultipleText) bookingFormModuleData;
                BookingFormModuleData.FreeTyping freeTyping = multipleText.f66726c;
                String str5 = freeTyping != null ? freeTyping.f66722a : null;
                List<BookingFormModuleData.MultipleTextCategory> list2 = multipleText.f66724a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                for (BookingFormModuleData.MultipleTextCategory multipleTextCategory : list2) {
                    String str6 = multipleTextCategory.f66727a;
                    List list3 = multipleTextCategory.f66729c;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : list3) {
                        if (((BookingFormModuleData.MultipleTextOption) obj).f66732c) {
                            arrayList3.add(obj);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        arrayList4.add(((BookingFormModuleData.MultipleTextOption) it2.next()).f66730a);
                    }
                    arrayList2.add(new PrebookFormCategoryDto(str6, arrayList4));
                }
                prebookFormMultipleValueDto = new PrebookFormMultipleValueDto(str5, arrayList2);
            } else {
                prebookFormMultipleValueDto = null;
            }
            arrayList.add(new PrebookFormStepDto(str4, string, prebookFormMultipleValueDto));
        }
        return new PrebookFormDataDto(str3, str, str2, bookingTypeDto, new PrebookFormDto(arrayList));
    }

    public static /* synthetic */ PrebookFormDataDto b(BookingForm bookingForm, String str, String str2, int i2) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        return a(bookingForm, str, str2);
    }
}
