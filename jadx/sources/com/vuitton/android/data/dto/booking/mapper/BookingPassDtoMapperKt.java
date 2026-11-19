package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingInfoDto;
import com.vuitton.android.data.dto.booking.BookingPassDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.foundation.model.domain.model.booking.BookingPass;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingPassDtoMapperKt {
    public static final BookingPass a(BookingPassDto bookingPassDto) {
        bookingPassDto.getClass();
        String str = bookingPassDto.f44733a;
        String str2 = bookingPassDto.f44734b;
        AssetImage assetImageB = AssetMapperKt.b(bookingPassDto.f44735c);
        List list = bookingPassDto.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(BookingListMapperKt.c((BookingInfoDto) it.next()));
        }
        return new BookingPass(str, str2, assetImageB, arrayList, AssetMapperKt.b(bookingPassDto.f44736e));
    }
}
