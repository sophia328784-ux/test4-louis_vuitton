package com.vuitton.android.data.dto.exclusivesales.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesAvailableDto;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesCategoryLinksDto;
import com.vuitton.foundation.model.domain.model.exclusivesales.ExclusiveSalesCategoryLinks;
import com.vuitton.foundation.model.domain.model.exclusivesales.ExclusiveSalesUserInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ExclusiveSalesMapperKt {
    public static final ExclusiveSalesUserInfo a(ExclusiveSalesAvailableDto exclusiveSalesAvailableDto) {
        exclusiveSalesAvailableDto.getClass();
        List<ExclusiveSalesCategoryLinksDto> list = exclusiveSalesAvailableDto.f45750a;
        ArrayList arrayList = null;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (ExclusiveSalesCategoryLinksDto exclusiveSalesCategoryLinksDto : list) {
                exclusiveSalesCategoryLinksDto.getClass();
                String str = exclusiveSalesCategoryLinksDto.f45755c;
                ExclusiveSalesCategoryLinks exclusiveSalesCategoryLinks = str != null ? new ExclusiveSalesCategoryLinks(StringsKt.E((String) CollectionsKt.M(StringsKt__StringsKt.split$default(str, new String[]{"/"}, false, 0, 6, null)), "N-"), exclusiveSalesCategoryLinksDto.f45753a, exclusiveSalesCategoryLinksDto.f45754b, exclusiveSalesCategoryLinksDto.d, exclusiveSalesCategoryLinksDto.f45756e, exclusiveSalesCategoryLinksDto.f45757f) : null;
                if (exclusiveSalesCategoryLinks != null) {
                    arrayList2.add(exclusiveSalesCategoryLinks);
                }
            }
            arrayList = arrayList2;
        }
        return new ExclusiveSalesUserInfo(arrayList);
    }
}
