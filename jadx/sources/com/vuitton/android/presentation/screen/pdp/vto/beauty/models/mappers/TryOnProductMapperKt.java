package com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import com.vuitton.foundation.model.domain.model.product.vto.Color;
import com.vuitton.foundation.model.domain.model.product.vto.Look;
import com.vuitton.foundation.model.domain.model.product.vto.TryOnProduct;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TryOnProductMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f62212b;

        static {
            int[] iArr = new int[BeautyProductType.values().length];
            try {
                iArr[BeautyProductType.LIPSTICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyProductType.EYESHADOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyProductType.LIPLINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f62211a = iArr;
            int[] iArr2 = new int[BeautyProductTypeUiModel.values().length];
            try {
                iArr2[BeautyProductTypeUiModel.LIPSTICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[BeautyProductTypeUiModel.EYESHADOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BeautyProductTypeUiModel.LIPLINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[BeautyProductTypeUiModel.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            f62212b = iArr2;
        }
    }

    public static final BeautyProductTypeUiModel a(BeautyProductType beautyProductType) {
        beautyProductType.getClass();
        int i2 = WhenMappings.f62211a[beautyProductType.ordinal()];
        if (i2 == 1) {
            return BeautyProductTypeUiModel.LIPSTICK;
        }
        if (i2 == 2) {
            return BeautyProductTypeUiModel.EYESHADOW;
        }
        if (i2 == 3) {
            return BeautyProductTypeUiModel.LIPLINER;
        }
        v40.g();
        return null;
    }

    public static final TryOnProductUiModel b(TryOnProduct tryOnProduct) {
        tryOnProduct.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = tryOnProduct.f68081a;
        companion.getClass();
        String str2 = tryOnProduct.f68082b;
        BeautyProductTypeUiModel beautyProductTypeUiModelA = a(tryOnProduct.f68083c);
        BeautyProductType beautyProductType = tryOnProduct.d;
        ArrayList arrayList = null;
        BeautyProductTypeUiModel beautyProductTypeUiModelA2 = beautyProductType != null ? a(beautyProductType) : null;
        String str3 = tryOnProduct.f68085f;
        Color color = tryOnProduct.g;
        ColorUiModel colorUiModel = new ColorUiModel(color.f68040a, AssetMapperKt.a(color.f68041b));
        List list = tryOnProduct.f68086h;
        if (list != null) {
            List<Look> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (Look look : list2) {
                look.getClass();
                arrayList.add(new LookUiModel(look.f68061a, look.f68062b, look.f68063c, look.d, AssetMapperKt.a(look.f68064e), look.f68065f));
            }
        }
        return new TryOnProductUiModel(str, str2, beautyProductTypeUiModelA, beautyProductTypeUiModelA2, tryOnProduct.f68084e, str3, colorUiModel, arrayList, tryOnProduct.f68087i, tryOnProduct.f68088j, null, 1024, null);
    }
}
