package com.sightcall.pratik.extensions;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001¨\u0006\u0006"}, d2 = {"getFirstLine", "", "remove", "char", "", "string", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class StringExtensionsKt {
    public static final String getFirstLine(String str) {
        str.getClass();
        return (String) CollectionsKt.B(StringsKt__StringsKt.split$default(str, new String[]{"\n"}, false, 0, 6, null));
    }

    public static final String remove(String str, String str2) {
        str.getClass();
        str2.getClass();
        return StringsKt.J(str, str2, "");
    }

    public static final String remove(String str, char c2) {
        str.getClass();
        return remove(str, String.valueOf(c2));
    }
}
