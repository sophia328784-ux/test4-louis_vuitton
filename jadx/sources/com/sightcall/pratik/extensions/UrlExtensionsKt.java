package com.sightcall.pratik.extensions;

import com.linkplay.network.SecurityConstants;
import java.net.URL;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, d2 = {"isHttp", "", "Ljava/net/URL;", "isPdf", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UrlExtensionsKt {
    public static final boolean isHttp(URL url) {
        url.getClass();
        String protocol = url.getProtocol();
        protocol.getClass();
        String lowerCase = protocol.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return Intrinsics.c(lowerCase, SecurityConstants.SECURITY_NONE);
    }

    public static final boolean isPdf(URL url) {
        url.getClass();
        String path = url.getPath();
        path.getClass();
        String lowerCase = path.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return StringsKt.p(lowerCase, ".pdf", false);
    }
}
