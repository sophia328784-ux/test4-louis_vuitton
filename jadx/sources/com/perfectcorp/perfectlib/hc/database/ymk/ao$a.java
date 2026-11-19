package com.perfectcorp.perfectlib.hc.database.ymk;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes3.dex */
final class ao$a {

    @SerializedName("palette_guid")
    public final String paletteGuid = "";

    @SerializedName("palette_color_index")
    public final String paletteColorIndex = "";

    @SerializedName("color_intensity")
    public final String colorIntensity = "";

    @SerializedName("shine_intensity")
    public final String shineIntensity = "";

    public static Integer a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Throwable th) {
            Log.e("DatabaseUpgrade_1_32", "[tryParse] failed", th);
            return null;
        }
    }
}
