package com.vuitton.android.data.dto.account.orders.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.CategoryOptionDto;
import com.vuitton.android.data.dto.account.orders.CategoryTypeDto;
import com.vuitton.android.data.dto.account.orders.ProductExchangeCategoryDto;
import com.vuitton.foundation.model.domain.model.account.orders.CategoryOption;
import com.vuitton.foundation.model.domain.model.account.orders.CategoryType;
import com.vuitton.foundation.model.domain.model.account.orders.ProductExchangeCategory;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductExchangeCategoryMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44441a;

        static {
            int[] iArr = new int[CategoryTypeDto.values().length];
            try {
                iArr[CategoryTypeDto.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CategoryTypeDto.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f44441a = iArr;
        }
    }

    public static final ProductExchangeCategory a(ProductExchangeCategoryDto productExchangeCategoryDto) {
        CategoryType categoryType;
        productExchangeCategoryDto.getClass();
        String str = productExchangeCategoryDto.f44420a;
        String str2 = productExchangeCategoryDto.f44421b;
        int i2 = WhenMappings.f44441a[productExchangeCategoryDto.f44422c.ordinal()];
        if (i2 == 1) {
            categoryType = CategoryType.TEXT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            categoryType = CategoryType.IMAGE;
        }
        CategoryType categoryType2 = categoryType;
        boolean z = productExchangeCategoryDto.d;
        String str3 = productExchangeCategoryDto.f44423e;
        List<CategoryOptionDto> list = productExchangeCategoryDto.f44424f;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CategoryOptionDto categoryOptionDto : list) {
            String str4 = categoryOptionDto.f44328a;
            String str5 = categoryOptionDto.f44329b;
            String str6 = categoryOptionDto.f44330c;
            boolean z2 = categoryOptionDto.d;
            ProductExchangeCategoryDto productExchangeCategoryDto2 = categoryOptionDto.f44331e;
            arrayList.add(new CategoryOption(str4, str5, str6, z2, productExchangeCategoryDto2 != null ? a(productExchangeCategoryDto2) : null));
        }
        return new ProductExchangeCategory(str, str2, categoryType2, z, str3, arrayList);
    }
}
