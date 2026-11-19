package com.vuitton.android.data.dto.product.sizeguide.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.sizeguide.MediaCategoryDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideTableDto;
import com.vuitton.foundation.model.domain.model.sizeguide.HowToMeasureItem;
import com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide;
import defpackage.av0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SizeGuideMapperKt {
    public static final SizeGuide a(SizeGuideDto sizeGuideDto) {
        ArrayList arrayList;
        sizeGuideDto.getClass();
        SizeGuideTableDto sizeGuideTableDto = sizeGuideDto.f46466a;
        String str = sizeGuideTableDto.f46474c;
        List list = sizeGuideTableDto.f46479j;
        List list2 = sizeGuideTableDto.f46478i;
        String str2 = str == null ? "" : str;
        String str3 = sizeGuideTableDto.f46475e;
        String str4 = sizeGuideTableDto.f46472a;
        String str5 = str4 == null ? "" : str4;
        List list3 = list2;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            String str6 = ((SizeGuideDropDownDto) it.next()).f46464b;
            if (str6 != null) {
                arrayList2.add(str6);
            }
        }
        List list4 = list;
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list4.iterator();
        while (it2.hasNext()) {
            String str7 = ((SizeGuideDropDownDto) it2.next()).f46464b;
            if (str7 != null) {
                arrayList3.add(str7);
            }
        }
        String str8 = sizeGuideTableDto.f46477h;
        String str9 = str8 == null ? "" : str8;
        String str10 = sizeGuideTableDto.g;
        String str11 = str10 == null ? "" : str10;
        Map mapP = MapsKt.p(SequencesKt.r(CollectionsKt.o(list3), new av0(20)));
        Map mapP2 = MapsKt.p(SequencesKt.r(CollectionsKt.o(list4), new av0(21)));
        String str12 = sizeGuideTableDto.f46473b;
        String str13 = str12 == null ? "" : str12;
        List list5 = sizeGuideTableDto.f46476f;
        if (list5 != null) {
            List list6 = list5;
            arrayList = new ArrayList(CollectionsKt.t(list6, 10));
            Iterator it3 = list6.iterator();
            while (it3.hasNext()) {
                MediaCategoryDto mediaCategoryDto = (MediaCategoryDto) it3.next();
                mediaCategoryDto.getClass();
                Iterator it4 = it3;
                String str14 = mediaCategoryDto.f46459a;
                String str15 = mediaCategoryDto.f46460b;
                if (str15 == null) {
                    str15 = "";
                }
                arrayList.add(new HowToMeasureItem(str14, str15));
                it3 = it4;
            }
        } else {
            arrayList = new ArrayList();
        }
        return new SizeGuide(str2, str3, str5, arrayList2, arrayList3, str9, str11, mapP, mapP2, str13, arrayList, sizeGuideTableDto.f46480k);
    }
}
