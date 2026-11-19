package com.vuitton.android.data.dto.audioguide.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.audioguide.TrackDetailDto;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialSectionMapperKt;
import com.vuitton.foundation.model.domain.model.audioguide.TrackDetail;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailMapperKt {
    public static final TrackDetail a(TrackDetailDto trackDetailDto) {
        trackDetailDto.getClass();
        String str = trackDetailDto.f44526a;
        String str2 = trackDetailDto.f44527b;
        String str3 = trackDetailDto.f44528c;
        List list = trackDetailDto.d;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EditorialModule editorialModuleA = EditorialSectionMapperKt.a((EditorialSectionDto) it.next());
            if (editorialModuleA != null) {
                arrayList.add(editorialModuleA);
            }
        }
        List<TrackDetailDto.CueDto> list2 = trackDetailDto.f44529e;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (TrackDetailDto.CueDto cueDto : list2) {
            arrayList2.add(new TrackDetail.Cue(cueDto.f44531a, cueDto.f44532b, cueDto.f44533c));
        }
        return new TrackDetail(str, str2, str3, arrayList, arrayList2);
    }
}
