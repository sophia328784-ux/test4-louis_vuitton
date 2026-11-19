package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingActionDto;
import com.vuitton.android.data.dto.booking.BookingActionTypeDto;
import com.vuitton.android.data.dto.booking.BookingAdditionalDto;
import com.vuitton.android.data.dto.booking.BookingCalendarDataDto;
import com.vuitton.android.data.dto.booking.BookingDto;
import com.vuitton.android.data.dto.booking.BookingInfoDto;
import com.vuitton.android.data.dto.booking.BookingInfoTypeDto;
import com.vuitton.android.data.dto.booking.BookingListDto;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import com.vuitton.foundation.model.domain.model.booking.BookingAction;
import com.vuitton.foundation.model.domain.model.booking.BookingActionType;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
import com.vuitton.foundation.model.domain.model.booking.BookingCalendarData;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.BookingInfo;
import com.vuitton.foundation.model.domain.model.booking.BookingInfoType;
import com.vuitton.foundation.model.domain.model.booking.BookingList;
import com.vuitton.foundation.model.domain.model.booking.BookingType;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.v40;
import java.time.Instant;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingListMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f44790b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f44791c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[BookingActionTypeDto.values().length];
            try {
                iArr[BookingActionTypeDto.ADD_TO_CALENDAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingActionTypeDto.QR_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BookingActionTypeDto.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BookingActionTypeDto.MODIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f44789a = iArr;
            int[] iArr2 = new int[BookingTypeDto.values().length];
            try {
                iArr2[BookingTypeDto.APPOINTMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BookingTypeDto.EXPERIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f44790b = iArr2;
            int[] iArr3 = new int[BookingType.values().length];
            try {
                iArr3[BookingType.APPOINTMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[BookingType.EXPERIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            f44791c = iArr3;
            int[] iArr4 = new int[BookingInfoTypeDto.values().length];
            try {
                iArr4[BookingInfoTypeDto.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr4[BookingInfoTypeDto.ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr4[BookingInfoTypeDto.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            d = iArr4;
        }
    }

    public static final Booking a(BookingDto bookingDto) {
        BookingActionType bookingActionType;
        BookingCalendarData bookingCalendarData;
        bookingDto.getClass();
        String str = bookingDto.f44642a;
        BookingId.Companion companion = BookingId.INSTANCE;
        str.getClass();
        String str2 = bookingDto.f44643b;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        str2.getClass();
        BookingType bookingTypeE = e(bookingDto.f44644c);
        String str3 = bookingDto.d;
        String str4 = bookingDto.f44645e;
        String str5 = bookingDto.f44646f;
        String str6 = bookingDto.g;
        String str7 = bookingDto.f44647h;
        AssetImage assetImageB = AssetMapperKt.b(bookingDto.f44648i);
        AssetImage assetImageB2 = AssetMapperKt.b(bookingDto.f44649j);
        String str8 = bookingDto.f44650k;
        List list = bookingDto.l;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(c((BookingInfoDto) it.next()));
        }
        List list2 = bookingDto.m;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            BookingActionDto bookingActionDto = (BookingActionDto) it2.next();
            bookingActionDto.getClass();
            Iterator it3 = it2;
            BookingActionTypeDto bookingActionTypeDto = bookingActionDto.f44621a;
            bookingActionTypeDto.getClass();
            int i2 = WhenMappings.f44789a[bookingActionTypeDto.ordinal()];
            String str9 = str;
            if (i2 == 1) {
                bookingActionType = BookingActionType.ADD_TO_CALENDAR;
            } else if (i2 == 2) {
                bookingActionType = BookingActionType.QR_CODE;
            } else if (i2 == 3) {
                bookingActionType = BookingActionType.CANCEL;
            } else {
                if (i2 != 4) {
                    v40.g();
                    return null;
                }
                bookingActionType = BookingActionType.MODIFY;
            }
            BookingCalendarDataDto bookingCalendarDataDto = bookingActionDto.f44622b;
            if (bookingCalendarDataDto != null) {
                Instant instant = Instant.parse(bookingCalendarDataDto.f44629a);
                instant.getClass();
                Instant instant2 = Instant.parse(bookingCalendarDataDto.f44630b);
                instant2.getClass();
                ZoneId zoneIdOf = ZoneId.of(bookingCalendarDataDto.f44631c);
                zoneIdOf.getClass();
                bookingCalendarData = new BookingCalendarData(instant, instant2, zoneIdOf);
            } else {
                bookingCalendarData = null;
            }
            arrayList2.add(new BookingAction(bookingActionType, bookingCalendarData));
            it2 = it3;
            str = str9;
            str2 = str2;
            bookingTypeE = bookingTypeE;
        }
        return new Booking(str, str2, bookingTypeE, str3, str4, str5, str6, str7, assetImageB, assetImageB2, str8, arrayList, arrayList2, null);
    }

    public static final BookingAdditional b(BookingAdditionalDto bookingAdditionalDto) {
        bookingAdditionalDto.getClass();
        String str = bookingAdditionalDto.f44624a;
        ExperienceId.Companion companion = ExperienceId.INSTANCE;
        str.getClass();
        return new BookingAdditional(str, ContributionLinkMapperKt.a(bookingAdditionalDto.f44625b), bookingAdditionalDto.f44626c, bookingAdditionalDto.d, AssetMapperKt.b(bookingAdditionalDto.f44627e), null);
    }

    public static final BookingInfo c(BookingInfoDto bookingInfoDto) {
        BookingInfoType bookingInfoType;
        bookingInfoDto.getClass();
        String str = bookingInfoDto.f44722a;
        String str2 = bookingInfoDto.f44723b;
        BookingInfoTypeDto bookingInfoTypeDto = bookingInfoDto.f44724c;
        bookingInfoTypeDto.getClass();
        int i2 = WhenMappings.d[bookingInfoTypeDto.ordinal()];
        if (i2 == 1) {
            bookingInfoType = BookingInfoType.TEXT;
        } else if (i2 == 2) {
            bookingInfoType = BookingInfoType.ADDRESS;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            bookingInfoType = BookingInfoType.PHONE;
        }
        return new BookingInfo(str, str2, bookingInfoType);
    }

    public static final BookingList d(BookingListDto bookingListDto) {
        bookingListDto.getClass();
        List list = bookingListDto.f44727a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((BookingDto) it.next()));
        }
        List list2 = bookingListDto.f44728b;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(b((BookingAdditionalDto) it2.next()));
        }
        return new BookingList(arrayList, arrayList2);
    }

    public static final BookingType e(BookingTypeDto bookingTypeDto) {
        bookingTypeDto.getClass();
        int i2 = WhenMappings.f44790b[bookingTypeDto.ordinal()];
        if (i2 == 1) {
            return BookingType.APPOINTMENT;
        }
        if (i2 == 2) {
            return BookingType.EXPERIENCE;
        }
        v40.g();
        return null;
    }
}
