package com.vuitton.android.data.dto.product.sizeguide.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideRowDto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SizeGuideDropDownMapperKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList] */
    public static final Pair a(SizeGuideDropDownDto sizeGuideDropDownDto) {
        Object arrayList;
        sizeGuideDropDownDto.getClass();
        List list = sizeGuideDropDownDto.f46463a;
        if (list == null || list.isEmpty()) {
            arrayList = EmptyList.f71768b;
        } else {
            List list2 = sizeGuideDropDownDto.f46463a;
            List list3 = ((SizeGuideRowDto) CollectionsKt.B(list2)).f46469a;
            IntRange intRangeJ = RangesKt.j(0, list3 != null ? list3.size() : 0);
            arrayList = new ArrayList(CollectionsKt.t(intRangeJ, 10));
            Iterator<Integer> it = intRangeJ.iterator();
            while (((IntProgressionIterator) it).getD()) {
                int iNextInt = ((IntIterator) it).nextInt();
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    List list4 = ((SizeGuideRowDto) it2.next()).f46469a;
                    String str = (list4 == null || list4.size() <= iNextInt) ? null : (String) list4.get(iNextInt);
                    if (str != null) {
                        arrayList2.add(str);
                    }
                }
                arrayList.add(arrayList2);
            }
        }
        String str2 = sizeGuideDropDownDto.f46464b;
        if (str2 == null) {
            str2 = "";
        }
        return new Pair(str2, arrayList);
    }
}
