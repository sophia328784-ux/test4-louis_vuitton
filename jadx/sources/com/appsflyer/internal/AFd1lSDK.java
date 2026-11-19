package com.appsflyer.internal;

import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1lSDK implements AFd1iSDK<AFh1aSDK> {
    @Override // com.appsflyer.internal.AFd1iSDK
    public final /* synthetic */ AFh1aSDK registerClient(String str) throws JSONException {
        return new AFh1aSDK(str);
    }
}
