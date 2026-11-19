package com.vuitton.android.data.dto.connectivity.common.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.FaqItemDto;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpFaqPdfDto;
import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqPdf;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FaqCategoryMapperKt {
    public static final FaqCategory a(FaqCategoryDto faqCategoryDto) {
        List arrayList;
        List arrayList2;
        faqCategoryDto.getClass();
        String str = faqCategoryDto.f45560a;
        String str2 = faqCategoryDto.f45561b;
        String str3 = faqCategoryDto.f45562c;
        List list = faqCategoryDto.d;
        if (list != null) {
            List<FaqItemDto> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (FaqItemDto faqItemDto : list2) {
                faqItemDto.getClass();
                String str4 = faqItemDto.f45565a;
                if (str4 == null) {
                    str4 = "";
                }
                String str5 = faqItemDto.f45566b;
                if (str5 == null) {
                    str5 = "";
                }
                arrayList.add(new FaqItem(str4, str5));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        List list3 = faqCategoryDto.f45563e;
        if (list3 != null) {
            List<LightUpFaqPdfDto> list4 = list3;
            arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
            for (LightUpFaqPdfDto lightUpFaqPdfDto : list4) {
                lightUpFaqPdfDto.getClass();
                String str6 = lightUpFaqPdfDto.f45587a;
                if (str6 == null) {
                    str6 = "";
                }
                String str7 = lightUpFaqPdfDto.f45588b;
                if (str7 == null) {
                    str7 = "";
                }
                arrayList2.add(new FaqPdf(str6, str7));
            }
        } else {
            arrayList2 = EmptyList.f71768b;
        }
        return new FaqCategory(str, str2, str3, arrayList, arrayList2);
    }

    public static final List b(String str, List list) throws ConnectivityException.FaqMappingException {
        if (list == null || list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            return list;
        }
        throw new ConnectivityException.FaqMappingException();
    }
}
