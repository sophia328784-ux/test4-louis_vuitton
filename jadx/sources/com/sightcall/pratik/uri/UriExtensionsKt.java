package com.sightcall.pratik.uri;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"isAuthorizedUri", "", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UriExtensionsKt {
    public static final boolean isAuthorizedUri(String str) {
        str.getClass();
        return Patterns.INSTANCE.getHANDLED_URI().matcher(str).matches();
    }
}
