package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductAGECCategoryListDto;
import com.vuitton.android.data.dto.pdp.ProductAGECDataDto;
import com.vuitton.android.data.dto.pdp.ProductAGECDto;
import com.vuitton.android.data.dto.pdp.ProductAGECInfoTriDto;
import com.vuitton.android.data.dto.pdp.ProductAGECValueDto;
import com.vuitton.foundation.model.domain.model.product.universal.EnvironmentInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductAGECMapperKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.ArrayList] */
    public static final ArrayList a(ProductAGECDto productAGECDto) {
        ?? arrayList;
        ?? arrayList2;
        List list;
        productAGECDto.getClass();
        ArrayList arrayList3 = new ArrayList();
        ProductAGECInfoTriDto productAGECInfoTriDto = productAGECDto.f46244a;
        if (productAGECInfoTriDto != null) {
            String str = productAGECInfoTriDto.f46249a;
            if (str == null) {
                str = "";
            }
            String str2 = productAGECInfoTriDto.f46250b;
            if (str2 == null) {
                str2 = "";
            }
            arrayList3.add(new EnvironmentInfo(str, null, str2));
        }
        List list2 = productAGECDto.f46245b;
        if (list2 != null) {
            List list3 = list2;
            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                ProductAGECCategoryListDto productAGECCategoryListDto = ((ProductAGECDataDto) it.next()).f46241a;
                String str3 = productAGECCategoryListDto != null ? productAGECCategoryListDto.f46238a : null;
                if (str3 == null) {
                    str3 = "";
                }
                if (productAGECCategoryListDto == null || (list = productAGECCategoryListDto.f46239b) == null) {
                    arrayList2 = EmptyList.f71768b;
                } else {
                    List list4 = list;
                    arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                    Iterator it2 = list4.iterator();
                    while (it2.hasNext()) {
                        String str4 = ((ProductAGECValueDto) it2.next()).f46254c;
                        if (str4 == null) {
                            str4 = "";
                        }
                        arrayList2.add(str4);
                    }
                }
                arrayList.add(new EnvironmentInfo(str3, arrayList2, null));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        arrayList3.addAll(arrayList);
        return arrayList3;
    }
}
