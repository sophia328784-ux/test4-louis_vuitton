package com.vuitton.android.data.dto.productshort.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.productshort.ProductBooleanFilterDto;
import com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto;
import com.vuitton.android.data.dto.productshort.ProductFilterValueDto;
import com.vuitton.android.data.dto.productshort.ProductFiltersCategoryDto;
import com.vuitton.android.data.dto.productshort.ProductFiltersDto;
import com.vuitton.android.data.dto.productshort.ProductListOptionDto;
import com.vuitton.android.data.dto.productshort.ProductSortDto;
import com.vuitton.android.data.dto.productshort.RangeTypeDto;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductBooleanFilter;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilterDataType;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilterValue;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilters;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFiltersCategory;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFiltersCategoryType;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductSort;
import com.vuitton.foundation.model.domain.model.productshortlist.RangeType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductListOptionMapperKt {
    public static final ProductListOption a(ProductListOptionDto productListOptionDto) {
        AssetImage assetImage;
        ProductFilters productFilters;
        String str;
        Iterator it;
        ProductFilterDataType simple;
        Object obj;
        RangeType rangeType;
        productListOptionDto.getClass();
        List<ProductSortDto> list = productListOptionDto.f46626a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ProductSortDto productSortDto : list) {
            arrayList.add(new ProductSort(productSortDto.f46651a, productSortDto.f46652b, productSortDto.f46653c, productSortDto.d));
        }
        ProductFiltersDto productFiltersDto = productListOptionDto.f46627b;
        if (productFiltersDto != null) {
            String str2 = productFiltersDto.f46615a;
            List list2 = productFiltersDto.f46616b;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ProductFiltersCategoryDto productFiltersCategoryDto = (ProductFiltersCategoryDto) it2.next();
                String str3 = productFiltersCategoryDto.f46611a;
                String str4 = productFiltersCategoryDto.f46612b;
                String upperCase = productFiltersCategoryDto.f46613c.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                ProductFiltersCategoryType productFiltersCategoryTypeValueOf = ProductFiltersCategoryType.valueOf(upperCase);
                ProductFilterDataTypeDto productFilterDataTypeDto = productFiltersCategoryDto.d;
                if (productFilterDataTypeDto instanceof ProductFilterDataTypeDto.Range) {
                    ProductFilterDataTypeDto.Range range = (ProductFilterDataTypeDto.Range) productFilterDataTypeDto;
                    RangeTypeDto rangeTypeDto = range.f46595a;
                    str = str2;
                    RangeType rangeType2 = new RangeType((int) rangeTypeDto.f46658a, (int) rangeTypeDto.f46659b);
                    RangeTypeDto rangeTypeDto2 = range.f46596b;
                    if (rangeTypeDto2 != null) {
                        it = it2;
                        obj = null;
                        rangeType = new RangeType((int) rangeTypeDto2.f46658a, (int) rangeTypeDto2.f46659b);
                    } else {
                        it = it2;
                        obj = null;
                        rangeType = null;
                    }
                    simple = new ProductFilterDataType.Range(rangeType2, rangeType, range.f46597c, range.d);
                } else {
                    str = str2;
                    it = it2;
                    AssetImage assetImage2 = null;
                    if (productFilterDataTypeDto instanceof ProductFilterDataTypeDto.Simple) {
                        ProductFilterDataTypeDto.Simple simple2 = (ProductFilterDataTypeDto.Simple) productFilterDataTypeDto;
                        List list3 = simple2.f46599a;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                        for (Iterator it3 = list3.iterator(); it3.hasNext(); it3 = it3) {
                            ProductFilterValueDto productFilterValueDto = (ProductFilterValueDto) it3.next();
                            String str5 = productFilterValueDto.f46605a;
                            String str6 = productFilterValueDto.f46606b;
                            AssetImageDto assetImageDto = productFilterValueDto.f46607c;
                            arrayList3.add(new ProductFilterValue(str5, str6, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : assetImage2, productFilterValueDto.d, productFilterValueDto.f46608e, productFilterValueDto.f46609f, productFilterValueDto.g));
                            assetImage2 = assetImage2;
                        }
                        simple = new ProductFilterDataType.Simple(arrayList3, simple2.f46600b, simple2.f46601c);
                    } else {
                        if (!Intrinsics.c(productFilterDataTypeDto, ProductFilterDataTypeDto.UnknownProductFilterDataTypeDto.INSTANCE)) {
                            v40.g();
                            return null;
                        }
                        simple = ProductFilterDataType.Unknown.f68110a;
                    }
                }
                arrayList2.add(new ProductFiltersCategory(str3, str4, productFiltersCategoryTypeValueOf, simple));
                str2 = str;
                it2 = it;
            }
            String str7 = str2;
            assetImage = null;
            List<ProductBooleanFilterDto> list4 = productFiltersDto.f46617c;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
            for (ProductBooleanFilterDto productBooleanFilterDto : list4) {
                arrayList4.add(new ProductBooleanFilter(productBooleanFilterDto.f46590a, productBooleanFilterDto.f46591b, productBooleanFilterDto.f46592c, productBooleanFilterDto.d, productBooleanFilterDto.f46593e));
            }
            productFilters = new ProductFilters(str7, arrayList2, arrayList4);
        } else {
            assetImage = null;
            productFilters = null;
        }
        List<ProductFilterValueDto> list5 = productListOptionDto.f46628c;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list5, 10));
        for (ProductFilterValueDto productFilterValueDto2 : list5) {
            String str8 = productFilterValueDto2.f46605a;
            String str9 = productFilterValueDto2.f46606b;
            AssetImageDto assetImageDto2 = productFilterValueDto2.f46607c;
            arrayList5.add(new ProductFilterValue(str8, str9, assetImageDto2 != null ? AssetMapperKt.b(assetImageDto2) : assetImage, productFilterValueDto2.d, productFilterValueDto2.f46608e, productFilterValueDto2.f46609f, productFilterValueDto2.g));
        }
        return new ProductListOption(arrayList, productFilters, arrayList5);
    }
}
