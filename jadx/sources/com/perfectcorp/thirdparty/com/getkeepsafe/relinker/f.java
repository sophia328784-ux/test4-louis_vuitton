package com.perfectcorp.thirdparty.com.getkeepsafe.relinker;

import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;

/* JADX INFO: loaded from: classes3.dex */
final class f implements ReLinker.b {
    public final String a(String str) {
        return (str.startsWith(SAPropertyFilter.LIB) && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }
}
