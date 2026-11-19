package com.vuitton.android.data.dto.product.stock.shared.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.android.data.dto.pdp.mapper.ProductDisclaimersMapperKt;
import com.vuitton.android.data.dto.product.stock.shared.AvailabilityTimeFormatDto;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import com.vuitton.android.data.dto.product.stock.shared.SkuAvailabilityDto;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.availability.AvailabilityTimeFormat;
import com.vuitton.foundation.model.domain.model.product.availability.ProductStock;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SkuAvailabilityMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46495a;

        static {
            int[] iArr = new int[AvailabilityTimeFormatDto.values().length];
            try {
                iArr[AvailabilityTimeFormatDto.DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AvailabilityTimeFormatDto.WEEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AvailabilityTimeFormatDto.MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46495a = iArr;
        }
    }

    public static final ProductStock a(ProductStockDto productStockDto) {
        AvailabilityTimeFormat availabilityTimeFormat;
        AvailabilityTimeFormat availabilityTimeFormat2;
        productStockDto.getClass();
        List list = productStockDto.f46483a;
        ArrayList arrayList = null;
        if (list != null) {
            List<SkuAvailabilityDto> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (SkuAvailabilityDto skuAvailabilityDto : list2) {
                skuAvailabilityDto.getClass();
                String str = skuAvailabilityDto.f46486a;
                Boolean bool = skuAvailabilityDto.f46487b;
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                Boolean bool2 = skuAvailabilityDto.f46488c;
                boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                Boolean bool3 = skuAvailabilityDto.d;
                boolean zBooleanValue3 = bool3 != null ? bool3.booleanValue() : false;
                ProductDisclaimerDto productDisclaimerDto = skuAvailabilityDto.f46489e;
                ProductDisclaimer productDisclaimerA = productDisclaimerDto != null ? ProductDisclaimersMapperKt.a(productDisclaimerDto) : null;
                Integer num = skuAvailabilityDto.f46490f;
                Integer num2 = skuAvailabilityDto.g;
                Integer num3 = skuAvailabilityDto.f46491h;
                Integer num4 = skuAvailabilityDto.f46492i;
                AvailabilityTimeFormatDto availabilityTimeFormatDto = skuAvailabilityDto.f46493j;
                if (availabilityTimeFormatDto != null) {
                    int i2 = WhenMappings.f46495a[availabilityTimeFormatDto.ordinal()];
                    if (i2 == 1) {
                        availabilityTimeFormat2 = AvailabilityTimeFormat.DAY;
                    } else if (i2 == 2) {
                        availabilityTimeFormat2 = AvailabilityTimeFormat.WEEK;
                    } else {
                        if (i2 != 3) {
                            v40.g();
                            return null;
                        }
                        availabilityTimeFormat2 = AvailabilityTimeFormat.MONTH;
                    }
                    availabilityTimeFormat = availabilityTimeFormat2;
                } else {
                    availabilityTimeFormat = null;
                }
                arrayList2.add(new SkuAvailability(str, zBooleanValue3, zBooleanValue, zBooleanValue2, productDisclaimerA, num, num2, num3, num4, availabilityTimeFormat, null));
            }
            arrayList = arrayList2;
        }
        return new ProductStock(arrayList);
    }
}
