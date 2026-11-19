package com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers;

import defpackage.tr;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FaceAnalysisDataMapperKt {
    public static final String a(Integer num) {
        if (num == null) {
            return "";
        }
        String hexString = Integer.toHexString(num.intValue());
        hexString.getClass();
        Locale locale = Locale.getDefault();
        locale.getClass();
        String upperCase = hexString.toUpperCase(locale);
        upperCase.getClass();
        return tr.g("#", upperCase);
    }
}
