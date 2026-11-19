package com.linkplay.core.device;

import com.linkplay.request.LPNetworkListener;

/* JADX INFO: loaded from: classes2.dex */
public interface LPPassthroughViaHTTP {
    void passthroughViaHTTP(String str, String str2, String str3, LPNetworkListener lPNetworkListener);

    void passthroughViaHTTPNotify(String str);
}
