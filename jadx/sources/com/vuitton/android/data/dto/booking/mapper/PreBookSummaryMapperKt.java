package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingAdditionalDto;
import com.vuitton.android.data.dto.booking.BookingInfoDto;
import com.vuitton.android.data.dto.booking.PreBookDto;
import com.vuitton.android.data.dto.booking.PreBookSummaryDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.pdp.mapper.PriceMapperKt;
import com.vuitton.foundation.model.domain.model.booking.BookingType;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBook;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import com.vuitton.foundation.model.domain.model.booking.PreBookSummary;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.util.StringKtExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PreBookSummaryMapperKt {
    public static final PreBookSummary a(PreBookSummaryDto preBookSummaryDto) {
        preBookSummaryDto.getClass();
        List<PreBookDto> list = preBookSummaryDto.f44760a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (PreBookDto preBookDto : list) {
            preBookDto.getClass();
            String str = preBookDto.f44751a;
            PreBookId.Companion companion = PreBookId.INSTANCE;
            str.getClass();
            String str2 = preBookDto.f44752b;
            ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
            str2.getClass();
            BookingType bookingTypeE = BookingListMapperKt.e(preBookDto.f44753c);
            String str3 = preBookDto.d;
            String str4 = preBookDto.f44754e;
            AssetImage assetImageB = AssetMapperKt.b(preBookDto.f44755f);
            List list2 = preBookDto.g;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList2.add(BookingListMapperKt.c((BookingInfoDto) it.next()));
            }
            String str5 = preBookDto.f44756h;
            String str6 = preBookDto.f44757i;
            arrayList.add(new PreBook(str, str2, bookingTypeE, str3, str4, assetImageB, arrayList2, str5, str6 != null ? StringKtExtKt.c(str6) : null, null));
        }
        List list3 = preBookSummaryDto.f44761b;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList3.add(BookingListMapperKt.b((BookingAdditionalDto) it2.next()));
        }
        return new PreBookSummary(arrayList, arrayList3, PriceMapperKt.a(preBookSummaryDto.f44762c), preBookSummaryDto.d);
    }
}
