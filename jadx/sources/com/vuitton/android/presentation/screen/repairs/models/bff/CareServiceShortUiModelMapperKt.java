package com.vuitton.android.presentation.screen.repairs.models.bff;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceProduct;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceShort;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Metadata;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceShortUiModelMapperKt {
    public static final CareServiceShortUiModel a(CareServiceShort careServiceShort) {
        Long l;
        CareServiceProductUiModel careServiceProductUiModel;
        careServiceShort.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = careServiceShort.f66884a;
        companion.getClass();
        String str2 = careServiceShort.f66885b;
        String str3 = careServiceShort.f66886c;
        if (str3 != null) {
            CareServiceTransactionIdUiModel.f64071c.getClass();
        } else {
            str3 = null;
        }
        CareServiceType careServiceType = careServiceShort.d;
        CareServiceCategory careServiceCategory = careServiceShort.f66887e;
        String str4 = str3;
        String str5 = careServiceShort.f66888f;
        CareServiceAction careServiceAction = careServiceShort.g;
        CareServiceProduct careServiceProduct = careServiceShort.f66889h;
        if (careServiceProduct != null) {
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            String str6 = careServiceProduct.f66881a;
            companion2.getClass();
            String str7 = careServiceProduct.f66882b;
            AssetImage assetImage = careServiceProduct.f66883c;
            careServiceProductUiModel = new CareServiceProductUiModel(str6, str7, assetImage != null ? AssetMapperKt.a(assetImage) : null, null);
            l = null;
        } else {
            l = null;
            careServiceProductUiModel = null;
        }
        String str8 = careServiceShort.f66890i;
        long jA = careServiceShort.f66891j.a();
        Instant instant = careServiceShort.f66892k;
        Long lValueOf = instant != null ? Long.valueOf(instant.a()) : l;
        Instant instant2 = careServiceShort.l;
        Long lValueOf2 = instant2 != null ? Long.valueOf(instant2.a()) : l;
        Instant instant3 = careServiceShort.m;
        return new CareServiceShortUiModel(str, str2, str4, careServiceType, careServiceCategory, str5, careServiceAction, careServiceProductUiModel, str8, jA, lValueOf, lValueOf2, instant3 != null ? Long.valueOf(instant3.a()) : l, false, false, false, false, false, 253952, null);
    }
}
