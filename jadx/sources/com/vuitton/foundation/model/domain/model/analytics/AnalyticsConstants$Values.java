package com.vuitton.foundation.model.domain.model.analytics;

import com.linkplay.medialib.ContentTree;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/foundation/model/domain/model/analytics/AnalyticsConstants$Values", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AnalyticsConstants$Values {
    public static String a(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool) {
        String strB;
        String str = ContentTree.ROOT_ID;
        String strB2 = b("functional", z ? "1" : ContentTree.ROOT_ID);
        String strB3 = b("analytics", z2 ? "1" : ContentTree.ROOT_ID);
        String strB4 = b("customization", z3 ? "1" : ContentTree.ROOT_ID);
        String strB5 = b("advertising", z4 ? "1" : ContentTree.ROOT_ID);
        if (bool != null) {
            if (bool.booleanValue()) {
                str = "1";
            }
            strB = b("augmented_reality", str);
        } else {
            strB = null;
        }
        return CollectionsKt.K(ArraysKt.v(new String[]{strB2, strB3, strB4, strB5, strB}), "|", null, null, null, 62);
    }

    public static final String b(String str, String str2) {
        return tr.h(str, ":", str2);
    }
}
