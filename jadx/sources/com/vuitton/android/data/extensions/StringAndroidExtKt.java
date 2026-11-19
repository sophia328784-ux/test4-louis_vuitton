package com.vuitton.android.data.extensions;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import defpackage.cj;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringAndroidExtKt {
    public static final boolean a(String str, EnvironmentProvider environmentProvider) {
        str.getClass();
        environmentProvider.getClass();
        String strF = StringsKt.F("api/", "/");
        String strF2 = StringsKt.F("publication/", "/");
        String strF3 = StringsKt.F("catalog/", "/");
        String strF4 = StringsKt.F("user/", "/");
        String strF5 = StringsKt.F("preview/", "/");
        StringBuilder sb = new StringBuilder();
        sb.append(strF);
        sb.append("/(");
        sb.append(strF4);
        sb.append("|");
        sb.append(strF3);
        cj.C(sb, "|", strF2, "|", strF5);
        cj.C(sb, "/(", strF4, "|", strF3);
        return new Regex(d21.p(sb, "|", strF2, "))/")).a(str);
    }
}
