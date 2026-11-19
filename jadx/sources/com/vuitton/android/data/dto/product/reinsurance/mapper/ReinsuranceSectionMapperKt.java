package com.vuitton.android.data.dto.product.reinsurance.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceResultDto;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import com.vuitton.foundation.model.domain.model.product.ReinsuranceSection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceSectionMapperKt {
    public static final ReinsuranceSection a(ReinsuranceResultDto reinsuranceResultDto) {
        List arrayList;
        List arrayList2;
        reinsuranceResultDto.getClass();
        HashMap map = new HashMap();
        ReinsurancePageType reinsurancePageType = ReinsurancePageType.PDP;
        List list = reinsuranceResultDto.f46440a;
        if (list != null) {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(ReinsuranceMapperKt.a((ReinsuranceDto) it.next()));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        map.put(reinsurancePageType, arrayList);
        ReinsurancePageType reinsurancePageType2 = ReinsurancePageType.CART;
        List list3 = reinsuranceResultDto.f46441b;
        if (list3 != null) {
            List list4 = list3;
            arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
            Iterator it2 = list4.iterator();
            while (it2.hasNext()) {
                arrayList2.add(ReinsuranceMapperKt.a((ReinsuranceDto) it2.next()));
            }
        } else {
            arrayList2 = EmptyList.f71768b;
        }
        map.put(reinsurancePageType2, arrayList2);
        return new ReinsuranceSection(map);
    }
}
