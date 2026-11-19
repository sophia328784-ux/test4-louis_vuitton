package com.vuitton.android.core.utils;

import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/utils/FormatHelper;", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FormatHelper {
    public static int a(String str) {
        Integer intOrNull;
        if (str == null || (intOrNull = StringsKt.toIntOrNull(StringsKt.E(str, "+"))) == null) {
            return Integer.MAX_VALUE;
        }
        return intOrNull.intValue();
    }
}
