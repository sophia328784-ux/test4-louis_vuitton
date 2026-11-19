package com.vuitton.android.data.dto.plp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.productshort.ProductListLegacyDto;
import com.vuitton.android.data.dto.productshort.ProductListSectionDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.mapper.ProductListOptionMapperKt;
import com.vuitton.android.data.dto.productshort.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import com.vuitton.foundation.model.domain.model.plp.ProductList;
import com.vuitton.foundation.model.domain.model.plp.mapper.PlpMapperKt;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductListLegacyToV2MapperKt {
    public static final ProductList a(ProductListLegacyDto productListLegacyDto, Function1 function1, boolean z) {
        productListLegacyDto.getClass();
        function1.getClass();
        String str = productListLegacyDto.f46620a;
        String str2 = productListLegacyDto.f46621b;
        String str3 = productListLegacyDto.f46622c;
        List list = productListLegacyDto.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            ProductListSectionDto productListSectionDto = (ProductListSectionDto) obj;
            String str4 = productListLegacyDto.f46620a;
            if (str4 == null) {
                str4 = "";
            }
            String strE = cj.e(i2, str4, "-products-");
            List list2 = productListSectionDto.f46632b;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList2.add(PlpMapperKt.b(ProductShortMapperKt.a((ProductShortDto) it.next(), function1), z));
            }
            arrayList.add(new PlpSection.Products(strE, arrayList2));
            i2 = i3;
        }
        return new ProductList(str, str2, str3, arrayList, productListLegacyDto.f46623e, ProductListOptionMapperKt.a(productListLegacyDto.f46624f), productListLegacyDto.g);
    }
}
