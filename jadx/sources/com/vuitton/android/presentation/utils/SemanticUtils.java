package com.vuitton.android.presentation.utils;

import android.content.Context;
import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/SemanticUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SemanticUtils {
    public static String a(Context context, String str) {
        context.getClass();
        str.getClass();
        String string = context.getString(R.string.alt_cart_price, StringsKt.J(str, " ", ""));
        string.getClass();
        return string;
    }
}
