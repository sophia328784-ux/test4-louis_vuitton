package com.vuitton.android.presentation.screen.booking.list.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import com.vuitton.foundation.model.domain.model.booking.BookingAction;
import com.vuitton.foundation.model.domain.model.booking.BookingActionType;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
import com.vuitton.foundation.model.domain.model.booking.BookingInfo;
import com.vuitton.foundation.model.domain.model.booking.BookingInfoType;
import com.vuitton.foundation.model.domain.model.booking.BookingType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingUiModelMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f54624b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f54625c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[BookingActionType.values().length];
            try {
                iArr[BookingActionType.ADD_TO_CALENDAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingActionType.QR_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BookingActionType.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BookingActionType.MODIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f54623a = iArr;
            int[] iArr2 = new int[BookingInfoType.values().length];
            try {
                iArr2[BookingInfoType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BookingInfoType.ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[BookingInfoType.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f54624b = iArr2;
            int[] iArr3 = new int[BookingType.values().length];
            try {
                iArr3[BookingType.APPOINTMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[BookingType.EXPERIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            f54625c = iArr3;
            int[] iArr4 = new int[BookingTypeUiModel.values().length];
            try {
                iArr4[BookingTypeUiModel.APPOINTMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr4[BookingTypeUiModel.EXPERIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            d = iArr4;
        }
    }

    public static final BookingAdditionalUiModel a(BookingAdditional bookingAdditional) {
        bookingAdditional.getClass();
        return new BookingAdditionalUiModel(bookingAdditional.f66686a, ContributionLinkUiModelKt.a(bookingAdditional.f66687b), bookingAdditional.f66688c, bookingAdditional.d, bookingAdditional.f66689e.f67108a, null);
    }

    public static final BookingInfoUiModel b(BookingInfo bookingInfo) {
        BookingInfoTypeUiModel bookingInfoTypeUiModel;
        bookingInfo.getClass();
        String str = bookingInfo.f66745a;
        String str2 = bookingInfo.f66746b;
        BookingInfoType bookingInfoType = bookingInfo.f66747c;
        bookingInfoType.getClass();
        int i2 = WhenMappings.f54624b[bookingInfoType.ordinal()];
        if (i2 == 1) {
            bookingInfoTypeUiModel = BookingInfoTypeUiModel.TEXT;
        } else if (i2 == 2) {
            bookingInfoTypeUiModel = BookingInfoTypeUiModel.ADDRESS;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            bookingInfoTypeUiModel = BookingInfoTypeUiModel.PHONE;
        }
        return new BookingInfoUiModel(str, str2, bookingInfoTypeUiModel);
    }

    public static final BookingUiModel c(Booking booking) {
        BookingTypeUiModel bookingTypeUiModel;
        BookingActionTypeUiModel bookingActionTypeUiModel;
        booking.getClass();
        String str = booking.f66675a;
        String str2 = booking.f66676b;
        int i2 = WhenMappings.f54625c[booking.f66677c.ordinal()];
        if (i2 == 1) {
            bookingTypeUiModel = BookingTypeUiModel.APPOINTMENT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            bookingTypeUiModel = BookingTypeUiModel.EXPERIENCE;
        }
        String str3 = booking.d;
        String str4 = booking.f66678e;
        String str5 = booking.f66683k;
        String str6 = booking.f66681i.f67108a;
        String str7 = booking.f66682j.f67108a;
        String str8 = booking.f66680h;
        List list = booking.l;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b((BookingInfo) it.next()));
        }
        String str9 = booking.f66679f;
        String str10 = booking.g;
        List list2 = booking.m;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            BookingAction bookingAction = (BookingAction) it2.next();
            bookingAction.getClass();
            BookingActionType bookingActionType = bookingAction.f66684a;
            bookingActionType.getClass();
            int i3 = WhenMappings.f54623a[bookingActionType.ordinal()];
            Iterator it3 = it2;
            if (i3 == 1) {
                bookingActionTypeUiModel = BookingActionTypeUiModel.ADD_TO_CALENDAR;
            } else if (i3 == 2) {
                bookingActionTypeUiModel = BookingActionTypeUiModel.QR_CODE;
            } else if (i3 == 3) {
                bookingActionTypeUiModel = BookingActionTypeUiModel.CANCEL;
            } else {
                if (i3 != 4) {
                    v40.g();
                    return null;
                }
                bookingActionTypeUiModel = BookingActionTypeUiModel.MODIFY;
            }
            arrayList2.add(new BookingActionUiModel(bookingActionTypeUiModel, bookingAction.f66685b));
            it2 = it3;
        }
        return new BookingUiModel(str, str2, bookingTypeUiModel, str3, str4, str5, str6, str7, str8, arrayList, str9, str10, arrayList2, null);
    }
}
