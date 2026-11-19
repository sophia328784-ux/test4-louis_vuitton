package com.vuitton.android.data.dto.feed.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialSectionMapperKt;
import com.vuitton.android.data.dto.feed.FeedDto;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedMapperKt {
    public static final Feed a(FeedDto feedDto) {
        feedDto.getClass();
        List list = feedDto.f45760a;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EditorialModule editorialModuleA = EditorialSectionMapperKt.a((EditorialSectionDto) it.next());
            if (editorialModuleA != null) {
                arrayList.add(editorialModuleA);
            }
        }
        return new Feed(arrayList);
    }
}
