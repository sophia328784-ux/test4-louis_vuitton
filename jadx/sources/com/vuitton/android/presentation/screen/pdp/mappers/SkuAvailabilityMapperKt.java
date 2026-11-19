package com.vuitton.android.presentation.screen.pdp.mappers;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SkuAvailabilityMapperKt {
    public static final SkuAvailabilityUiModel a(SkuAvailability skuAvailability, boolean z, boolean z2, boolean z3) {
        skuAvailability.getClass();
        String str = skuAvailability.f67947a;
        ProductDisclaimerUiModel productDisclaimerUiModelA = null;
        if (str != null) {
            SkuIdUiModel.f61763c.getClass();
        } else {
            str = null;
        }
        boolean z4 = skuAvailability.f67949c;
        boolean z5 = skuAvailability.d;
        boolean z6 = skuAvailability.f67948b;
        if (z) {
            ProductDisclaimer productDisclaimer = skuAvailability.f67950e;
            if (productDisclaimer != null) {
                productDisclaimerUiModelA = ProductDisclaimerMapperKt.d(productDisclaimer, z4, z5, false);
            }
        } else if (z6 && z4) {
            productDisclaimerUiModelA = ProductDisclaimerMapperKt.a(z2, z3, z4, z5, null, skuAvailability.f67952h, skuAvailability.f67953i, skuAvailability.f67954j, skuAvailability.f67951f, skuAvailability.g);
            z5 = z5;
        }
        return new SkuAvailabilityUiModel(str, z4, z5, z6, productDisclaimerUiModelA, null);
    }
}
