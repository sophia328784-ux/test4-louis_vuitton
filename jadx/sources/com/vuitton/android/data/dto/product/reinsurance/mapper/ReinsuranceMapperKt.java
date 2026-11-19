package com.vuitton.android.data.dto.product.reinsurance.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceImageDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceVariationDto;
import com.vuitton.foundation.model.domain.model.product.Reinsurance;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceMapperKt {
    public static final Reinsurance a(ReinsuranceDto reinsuranceDto) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ReinsuranceDto reinsuranceDto2 = reinsuranceDto;
        reinsuranceDto2.getClass();
        String str = reinsuranceDto2.f46431a;
        String str2 = reinsuranceDto2.f46432b;
        String string = StringsKt.d0(StringsKt.J(str2, "\n", "")).toString();
        String str3 = reinsuranceDto2.f46433c;
        String str4 = reinsuranceDto2.d;
        List list = reinsuranceDto2.f46435f;
        if (list != null) {
            arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str5 = ((ReinsuranceImageDto) it.next()).f46437a;
                if (str5 != null) {
                    arrayList.add(str5);
                }
            }
        } else {
            arrayList = null;
        }
        List list2 = reinsuranceDto2.f46434e;
        if (list2 != null) {
            List<ReinsuranceVariationDto> list3 = list2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, 10));
            for (ReinsuranceVariationDto reinsuranceVariationDto : list3) {
                reinsuranceVariationDto.getClass();
                String str6 = reinsuranceDto2.f46431a;
                String string2 = StringsKt.d0(StringsKt.J(str2, "\n", "")).toString();
                String str7 = reinsuranceDto2.f46433c;
                String str8 = reinsuranceVariationDto.d;
                String str9 = reinsuranceVariationDto.f46444a;
                List list4 = reinsuranceVariationDto.f46447e;
                if (list4 != null) {
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it2 = list4.iterator();
                    while (it2.hasNext()) {
                        String str10 = str;
                        String str11 = ((ReinsuranceImageDto) it2.next()).f46437a;
                        if (str11 != null) {
                            arrayList5.add(str11);
                        }
                        str = str10;
                    }
                    arrayList3 = arrayList5;
                } else {
                    arrayList3 = null;
                }
                String str12 = str;
                arrayList4.add(new Reinsurance(str6, string2, str7, str8, arrayList3, null, str9, 32, null));
                reinsuranceDto2 = reinsuranceDto;
                str = str12;
            }
            arrayList2 = arrayList4;
        } else {
            arrayList2 = null;
        }
        return new Reinsurance(str, string, str3, str4, arrayList, arrayList2, null, 64, null);
    }
}
