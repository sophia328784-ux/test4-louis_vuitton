package com.vuitton.android.presentation.screen.pdp.mappers;

import android.text.Spanned;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.utils.BackOrderUtils$WhenMappings;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.availability.AvailabilityTimeFormat;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductDisclaimerMapperKt {
    public static final ProductDisclaimerUiModel a(boolean z, boolean z2, boolean z3, boolean z4, ProductDisclaimer productDisclaimer, Integer num, Integer num2, AvailabilityTimeFormat availabilityTimeFormat, Integer num3, Integer num4) {
        StringResourceUiModel.ResId resId;
        if (z2 && num != null && num2 != null && availabilityTimeFormat != null) {
            int iIntValue = num.intValue();
            int iIntValue2 = num2.intValue();
            int i2 = BackOrderUtils$WhenMappings.f65831a[availabilityTimeFormat.ordinal()];
            if (i2 == 1) {
                resId = (iIntValue == 0 || iIntValue == iIntValue2) ? new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_single_date_bo, CollectionsKt.O(num2)) : new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_bo, CollectionsKt.P(num, num2));
            } else if (i2 == 2) {
                resId = (iIntValue == 0 || iIntValue == iIntValue2) ? new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_single_date_bo_week, CollectionsKt.O(num2)) : new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_bo_week, CollectionsKt.P(num, num2));
            } else {
                if (i2 != 3) {
                    v40.g();
                    return null;
                }
                resId = (iIntValue == 0 || iIntValue == iIntValue2) ? new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_single_date_bo_month, CollectionsKt.O(num2)) : new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_bo_month, CollectionsKt.P(num, num2));
            }
        } else if (!z || num3 == null || num4 == null) {
            resId = null;
        } else {
            int iIntValue3 = num3.intValue();
            int iIntValue4 = num4.intValue();
            if (iIntValue4 <= 0) {
                resId = new StringResourceUiModel.ResId(R.string.pdp_shipping_warning_bo, null, 2, null);
            } else {
                resId = (iIntValue3 <= 0 || iIntValue3 == iIntValue4) ? new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_single_date_bo, CollectionsKt.O(num4)) : new StringResourceUiModel.ResId(R.string.pdp_dynamic_shipping_warning_bo, CollectionsKt.P(num3, num4));
            }
        }
        if (resId == null) {
            return null;
        }
        StringResourceUiModel stringResourceUiModelC = productDisclaimer != null ? c(productDisclaimer, z3, z4) : null;
        StringResourceUiModel stringResourceUiModelB = productDisclaimer != null ? b(productDisclaimer, z3, z4) : null;
        if (stringResourceUiModelC == null) {
            stringResourceUiModelC = StringResourceUiModel.Empty.f51825b;
        }
        if (stringResourceUiModelB == null) {
            stringResourceUiModelB = StringResourceUiModel.Empty.f51825b;
        }
        return new ProductDisclaimerUiModel(resId, stringResourceUiModelC, stringResourceUiModelB);
    }

    public static final StringResourceUiModel b(ProductDisclaimer productDisclaimer, boolean z, boolean z2) {
        Spanned spannedB;
        productDisclaimer.getClass();
        String str = productDisclaimer.f67902b;
        String strH = StringKtExtKt.h((str == null || (spannedB = StringAndroidExtKt.b(str)) == null) ? null : spannedB.toString());
        if (strH != null) {
            return new StringResourceUiModel.Text(strH);
        }
        if (z) {
            return new StringResourceUiModel.ResId(R.string.global_backorder_info_popin_content, null, 2, null);
        }
        return z2 ? new StringResourceUiModel.ResId(R.string.pre_order_disclaimer_info_popin_content, null, 2, null) : StringResourceUiModel.Empty.f51825b;
    }

    public static final StringResourceUiModel c(ProductDisclaimer productDisclaimer, boolean z, boolean z2) {
        Spanned spannedB;
        productDisclaimer.getClass();
        String str = productDisclaimer.f67903c;
        String strH = StringKtExtKt.h((str == null || (spannedB = StringAndroidExtKt.b(str)) == null) ? null : spannedB.toString());
        if (strH != null) {
            return new StringResourceUiModel.Text(strH);
        }
        if (z) {
            return new StringResourceUiModel.ResId(R.string.global_backorder_info_popin_title, null, 2, null);
        }
        return z2 ? new StringResourceUiModel.ResId(R.string.pre_order_disclaimer_info_popin_title, null, 2, null) : StringResourceUiModel.Empty.f51825b;
    }

    public static final ProductDisclaimerUiModel d(ProductDisclaimer productDisclaimer, boolean z, boolean z2, boolean z3) {
        productDisclaimer.getClass();
        if (StringsKt.w(productDisclaimer.f67901a)) {
            return null;
        }
        if (!z && !z2 && !z3) {
            return null;
        }
        return new ProductDisclaimerUiModel(new StringResourceUiModel.Text(productDisclaimer.f67901a), c(productDisclaimer, z, z2), b(productDisclaimer, z, z2));
    }
}
