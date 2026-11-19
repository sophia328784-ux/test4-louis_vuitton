package com.appsflyer.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface AFg1rSDK {
    void AFKeystoreWrapper(AFh1pSDK aFh1pSDK);

    void AFKeystoreWrapper(Map<String, Object> map);

    void AFLogger(AFh1pSDK aFh1pSDK);

    void AFLogger(Map<String, Object> map);

    void d(AFh1pSDK aFh1pSDK);

    void d(Map<String, Object> map);

    void registerClient(AFh1pSDK aFh1pSDK);

    void registerClient(Map<String, Object> map);

    long unregisterClient();

    void unregisterClient(AFh1pSDK aFh1pSDK);

    void unregisterClient(Map<String, Object> map);

    void unregisterClient(Map<String, Object> map, int i2, int i3);

    void unregisterClient(Map<String, Object> map, AFe1zSDK aFe1zSDK);
}
