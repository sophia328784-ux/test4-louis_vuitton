package com.vuitton.android.data.dto.pdp.extension;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CaratExtensionKt {
    public static final String a(String str) {
        String strG = str != null ? StringsKt.G(str, "[", "]") : null;
        if (strG == null) {
            strG = "";
        }
        String str2 = (String) CollectionsKt.firstOrNull(StringsKt__StringsKt.split$default(strG, new String[]{"CT"}, false, 0, 6, null));
        String string = str2 != null ? StringsKt.a0(str2).toString() : null;
        return string == null ? "" : string;
    }
}
