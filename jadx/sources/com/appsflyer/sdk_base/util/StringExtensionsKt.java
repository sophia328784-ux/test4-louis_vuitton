package com.appsflyer.sdk_base.util;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u0080\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0004"}, d2 = {"ifNullOrBlank", "", "defaultValue", "Lkotlin/Function0;", "sdk_base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class StringExtensionsKt {
    public static final String ifNullOrBlank(String str, Function0<String> function0) {
        function0.getClass();
        return (str == null || StringsKt.w(str)) ? (String) function0.mo47invoke() : str;
    }
}
