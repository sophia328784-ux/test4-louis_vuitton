package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SkuTemplateUtils {
    public static SkuBeautyMode$FeatureType a(String str) {
        SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = SkuBeautyMode$FeatureType.UNDEFINED;
        for (SkuBeautyMode$FeatureType skuBeautyMode$FeatureType2 : SkuBeautyMode$FeatureType.values()) {
            if (skuBeautyMode$FeatureType2.toString().equalsIgnoreCase(str)) {
                skuBeautyMode$FeatureType = skuBeautyMode$FeatureType2;
            }
        }
        return skuBeautyMode$FeatureType;
    }

    public static boolean b(BeautyMode beautyMode) {
        int i2 = q.f41705a[beautyMode.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return true;
        }
        return beautyMode.isAccessory();
    }

    public static BeautyMode c(String str) {
        SkuBeautyMode$FeatureType skuBeautyMode$FeatureTypeA = a(str);
        BeautyMode beautyMode = BeautyMode.UNDEFINED;
        for (BeautyMode beautyMode2 : BeautyMode.values()) {
            if (beautyMode2.getFeatureType() == skuBeautyMode$FeatureTypeA) {
                return beautyMode2;
            }
        }
        return beautyMode;
    }
}
