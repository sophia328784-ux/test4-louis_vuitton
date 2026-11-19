package com.vuitton.android.presentation.screen.booking.summary.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
import com.vuitton.foundation.model.domain.model.booking.BookingInfo;
import com.vuitton.foundation.model.domain.model.booking.PreBook;
import com.vuitton.foundation.model.domain.model.booking.PreBookSummary;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PreBookUiModelMapperKt {
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object, java.time.LocalDateTime] */
    public static final PreBookSummaryUiModel a(PreBookSummary preBookSummary, InAppDispatch inAppDispatch) {
        String strL;
        preBookSummary.getClass();
        inAppDispatch.getClass();
        List<PreBook> list = preBookSummary.f66776a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (PreBook preBook : list) {
            preBook.getClass();
            String str = preBook.f66757a;
            String str2 = preBook.f66758b;
            String str3 = preBook.d;
            String str4 = preBook.f66760e;
            AssetImageUiModel assetImageUiModelA = AssetMapperKt.a(preBook.f66761f);
            List<BookingInfo> list2 = preBook.g;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (BookingInfo bookingInfo : list2) {
                arrayList2.add(new PreBookInformationUiModel(bookingInfo.f66745a, bookingInfo.f66746b));
            }
            String str5 = preBook.f66762h;
            Instant instant = preBook.f66763i;
            if (instant != null) {
                ?? localDateTime = ZonedDateTime.ofInstant(instant, ZoneId.systemDefault()).toLocalDateTime();
                localDateTime.getClass();
                strL = DateTimeUtils.l(localDateTime, inAppDispatch);
            } else {
                strL = null;
            }
            arrayList.add(new PreBookUiModel(str, str2, str3, str4, assetImageUiModelA, arrayList2, str5, strL, preBook.f66763i, null));
        }
        List list3 = preBookSummary.f66777b;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            arrayList3.add(BookingUiModelMapperKt.a((BookingAdditional) it.next()));
        }
        return new PreBookSummaryUiModel(arrayList, arrayList3, preBookSummary.f66778c.f68007a, preBookSummary.d);
    }
}
