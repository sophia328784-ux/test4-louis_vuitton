package com.appsflyer.internal;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AFc1vSDK {
    List<AFc1sSDK> AFKeystoreWrapper();

    boolean AFLogger(String str);

    void d();

    String registerClient(AFc1sSDK aFc1sSDK);

    void unregisterClient();
}
