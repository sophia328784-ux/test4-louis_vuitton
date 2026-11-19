package com.vuitton.android.presentation.screen.repairs.models.bff;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceAddressUiModelKt {
    public static final String a(CareServiceAddressUiModel careServiceAddressUiModel) {
        careServiceAddressUiModel.getClass();
        String str = new String();
        String str2 = careServiceAddressUiModel.d;
        String str3 = careServiceAddressUiModel.l;
        String str4 = careServiceAddressUiModel.g;
        String str5 = careServiceAddressUiModel.f64033h;
        String str6 = careServiceAddressUiModel.f64035j;
        String str7 = careServiceAddressUiModel.f64032f;
        String str8 = careServiceAddressUiModel.f64031e;
        if (str2.length() > 0) {
            str = tr.h(str, "\n", str2);
        }
        if (str8 != null && str8.length() > 0) {
            str = tr.h(str, "\n", str8);
        }
        if (str7 != null && str7.length() > 0) {
            str = tr.h(str, "\n", str7);
        }
        if (str6.length() > 0) {
            str = tr.h(str, "\n", str6);
        }
        if (str5 != null && str5.length() > 0) {
            str = tr.h(str, ", ", str5);
        }
        if (str4.length() > 0) {
            str = tr.h(str, " ", str4);
        }
        return str3.length() > 0 ? tr.h(str, "\n", str3) : str;
    }
}
