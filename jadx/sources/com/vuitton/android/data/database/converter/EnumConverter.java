package com.vuitton.android.data.database.converter;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.zy0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/database/converter/EnumConverter;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EnumConverter {
    public static LVLightUpPowerMode a(int i2) {
        LVLightUpPowerMode.INSTANCE.getClass();
        for (LVLightUpPowerMode lVLightUpPowerMode : LVLightUpPowerMode.values()) {
            if (lVLightUpPowerMode.getModeIdentifier() == i2) {
                return lVLightUpPowerMode;
            }
        }
        zy0.c("Array contains no element matching the predicate.");
        return null;
    }
}
