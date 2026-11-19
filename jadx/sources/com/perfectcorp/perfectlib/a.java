package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
abstract class a {
    public static String a(String str) {
        com.perfectcorp.perfectlib.ph.database.mcsdk.a aVarH = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h();
        aVarH.getClass();
        Objects.requireNonNull(str, "skuItemGuid can't be null");
        Optional optionalJ = aVarH.j("skuItemGuid=?", new String[]{str});
        if (optionalJ.d() && IdRow.f41146f != optionalJ.c() && !TextUtils.isEmpty(((IdRow) optionalJ.c()).f41150e)) {
            return ((IdRow) optionalJ.c()).f41150e;
        }
        Log.d("SkuAndShadeIdMappingUtility", "can not get shadetId by skuItemGUID=" + str + " from SkuAndShadeIdMapping.");
        return EffectId.INVALID_ID;
    }

    public static String b(String str) {
        Optional optionalM = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h().m(str);
        if (optionalM.d() && IdRow.f41146f != optionalM.c() && !TextUtils.isEmpty(((IdRow) optionalM.c()).d)) {
            return ((IdRow) optionalM.c()).d;
        }
        Log.d("SkuAndShadeIdMappingUtility", "can not get shadetId by skuItemGUID=" + str + " from SkuAndShadeIdMapping.");
        return EffectId.INVALID_ID;
    }
}
