package com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.RangeTypeUiModel;
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
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductListOptionMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63003a;

        static {
            int[] iArr = new int[ProductFiltersCategoryType.values().length];
            try {
                iArr[ProductFiltersCategoryType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProductFiltersCategoryType.SIMPLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f63003a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ProductListOptionUiModel a(ProductListOption productListOption) {
        ProductListOptionUiModel productListOptionUiModel;
        ProductFiltersUiModel productFiltersUiModel;
        ProductFiltersCategoryTypeUiModel productFiltersCategoryTypeUiModel;
        ProductListOptionUiModel productListOptionUiModel2;
        ProductFilterDataTypeUiModel simple;
        productListOption.getClass();
        List<ProductSort> list = productListOption.f68122a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ProductSort productSort : list) {
            arrayList.add(new ProductSortUiModel(productSort.f68139a, productSort.f68140b, productSort.f68141c, productSort.d));
        }
        ProductFilters productFilters = productListOption.f68123b;
        ProductListOptionUiModel productListOptionUiModel3 = null;
        if (productFilters != null) {
            String str = productFilters.f68116a;
            List<ProductFiltersCategory> list2 = productFilters.f68117b;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (ProductFiltersCategory productFiltersCategory : list2) {
                String str2 = productFiltersCategory.f68119a;
                String str3 = productFiltersCategory.f68120b;
                int i2 = WhenMappings.f63003a[productFiltersCategory.f68121c.ordinal()];
                if (i2 == 1) {
                    productFiltersCategoryTypeUiModel = ProductFiltersCategoryTypeUiModel.RANGE;
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return productListOptionUiModel3;
                    }
                    productFiltersCategoryTypeUiModel = ProductFiltersCategoryTypeUiModel.SIMPLE;
                }
                ProductFilterDataType productFilterDataType = productFiltersCategory.d;
                if (productFilterDataType instanceof ProductFilterDataType.Range) {
                    ProductFilterDataType.Range range = (ProductFilterDataType.Range) productFilterDataType;
                    RangeType rangeType = range.f68104a;
                    productListOptionUiModel2 = productListOptionUiModel3;
                    RangeTypeUiModel rangeTypeUiModel = new RangeTypeUiModel(rangeType.f68144a, rangeType.f68145b);
                    RangeType rangeType2 = range.f68105b;
                    simple = new ProductFilterDataTypeUiModel.Range(rangeTypeUiModel, rangeType2 != null ? new RangeTypeUiModel(rangeType2.f68144a, rangeType2.f68145b) : productListOptionUiModel2, range.f68106c, range.d);
                } else {
                    productListOptionUiModel2 = productListOptionUiModel3;
                    if (productFilterDataType instanceof ProductFilterDataType.Simple) {
                        ProductFilterDataType.Simple simple2 = (ProductFilterDataType.Simple) productFilterDataType;
                        List list3 = simple2.f68107a;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            ProductFilterValue productFilterValue = (ProductFilterValue) it.next();
                            String str4 = productFilterValue.f68111a;
                            String str5 = productFilterValue.f68112b;
                            Iterator it2 = it;
                            AssetImage assetImage = productFilterValue.f68113c;
                            arrayList3.add(new ProductFilterValueUiModel(str4, str5, assetImage != null ? AssetMapperKt.a(assetImage) : productListOptionUiModel2, productFilterValue.d, productFilterValue.f68114e, productFilterValue.f68115f, productFilterValue.g));
                            it = it2;
                        }
                        simple = new ProductFilterDataTypeUiModel.Simple(arrayList3, simple2.f68108b, simple2.f68109c);
                    } else {
                        if (!Intrinsics.c(productFilterDataType, ProductFilterDataType.Unknown.f68110a)) {
                            v40.g();
                            return productListOptionUiModel2;
                        }
                        simple = ProductFilterDataTypeUiModel.Unknown.f62964a;
                    }
                }
                arrayList2.add(new ProductFiltersCategoryUiModel(str2, str3, productFiltersCategoryTypeUiModel, simple));
                productListOptionUiModel3 = productListOptionUiModel2;
            }
            productListOptionUiModel = productListOptionUiModel3;
            List<ProductBooleanFilter> list4 = productFilters.f68118c;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
            for (ProductBooleanFilter productBooleanFilter : list4) {
                arrayList4.add(new ProductBooleanFilterUiModel(productBooleanFilter.f68100a, productBooleanFilter.f68101b, productBooleanFilter.f68102c, productBooleanFilter.d, productBooleanFilter.f68103e));
            }
            productFiltersUiModel = new ProductFiltersUiModel(str, arrayList2, arrayList4);
        } else {
            productListOptionUiModel = null;
            productFiltersUiModel = null;
        }
        List<ProductFilterValue> list5 = productListOption.f68124c;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list5, 10));
        for (ProductFilterValue productFilterValue2 : list5) {
            String str6 = productFilterValue2.f68111a;
            String str7 = productFilterValue2.f68112b;
            AssetImage assetImage2 = productFilterValue2.f68113c;
            arrayList5.add(new ProductFilterValueUiModel(str6, str7, assetImage2 != null ? AssetMapperKt.a(assetImage2) : productListOptionUiModel, productFilterValue2.d, productFilterValue2.f68114e, productFilterValue2.f68115f, productFilterValue2.g));
        }
        return new ProductListOptionUiModel(arrayList, productFiltersUiModel, arrayList5);
    }
}
