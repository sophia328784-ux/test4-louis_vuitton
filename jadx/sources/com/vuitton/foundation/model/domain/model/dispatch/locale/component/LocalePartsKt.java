package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LocalePartsKt {
    public static final Locale a(String str, String str2, String str3) {
        str.getClass();
        Locale.Builder language = new Locale.Builder().setLanguage(str);
        if (str2 != null) {
            language.setScript(str2);
        }
        if (str3 != null) {
            RegionCode.f67513b.getClass();
            if (!Intrinsics.c(str3, RegionCode.n)) {
                language.setRegion(str3);
            }
        }
        Locale localeBuild = language.build();
        localeBuild.getClass();
        return localeBuild;
    }

    public static final String b(String str, String str2, String str3, String str4) {
        str2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        if (str3 != null) {
            sb.append(str);
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append(str);
            sb.append(str4);
        }
        return sb.toString();
    }
}
