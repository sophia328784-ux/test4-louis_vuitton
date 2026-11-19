package com.vuitton.android.data.dto.product.vto.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto;
import com.vuitton.android.data.dto.product.vto.ColorDto;
import com.vuitton.android.data.dto.product.vto.LookDto;
import com.vuitton.android.data.dto.product.vto.TryOnProductDto;
import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import com.vuitton.foundation.model.domain.model.product.vto.Color;
import com.vuitton.foundation.model.domain.model.product.vto.Look;
import com.vuitton.foundation.model.domain.model.product.vto.TryOnProduct;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TryOnProductMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46588a;

        static {
            int[] iArr = new int[BeautyProductTypeDto.values().length];
            try {
                iArr[BeautyProductTypeDto.LIPSTICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyProductTypeDto.EYESHADOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyProductTypeDto.LIPLINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46588a = iArr;
        }
    }

    public static final BeautyProductType a(BeautyProductTypeDto beautyProductTypeDto) {
        beautyProductTypeDto.getClass();
        int i2 = WhenMappings.f46588a[beautyProductTypeDto.ordinal()];
        if (i2 == 1) {
            return BeautyProductType.LIPSTICK;
        }
        if (i2 == 2) {
            return BeautyProductType.EYESHADOW;
        }
        if (i2 == 3) {
            return BeautyProductType.LIPLINER;
        }
        v40.g();
        return null;
    }

    public static final TryOnProduct b(TryOnProductDto tryOnProductDto) {
        tryOnProductDto.getClass();
        String str = tryOnProductDto.f46557a;
        String str2 = tryOnProductDto.f46558b;
        BeautyProductType beautyProductTypeA = a(tryOnProductDto.f46559c);
        BeautyProductTypeDto beautyProductTypeDto = tryOnProductDto.d;
        ArrayList arrayList = null;
        BeautyProductType beautyProductTypeA2 = beautyProductTypeDto != null ? a(beautyProductTypeDto) : null;
        String str3 = tryOnProductDto.f46561f;
        ColorDto colorDto = tryOnProductDto.g;
        Color color = new Color(colorDto.f46503a, AssetMapperKt.b(colorDto.f46504b));
        List list = tryOnProductDto.f46562h;
        if (list != null) {
            List<LookDto> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (LookDto lookDto : list2) {
                lookDto.getClass();
                arrayList.add(new Look(lookDto.f46528a, lookDto.f46529b, lookDto.f46530c, lookDto.d, AssetMapperKt.b(lookDto.f46531e), lookDto.f46532f));
            }
        }
        return new TryOnProduct(str, str2, beautyProductTypeA, beautyProductTypeA2, tryOnProductDto.f46560e, str3, color, arrayList, tryOnProductDto.f46563i, tryOnProductDto.f46564j, null);
    }
}
