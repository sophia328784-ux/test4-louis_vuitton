package com.appsflyer.internal;

import android.content.Intent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public interface AFh1sSDK {
    void AFLogger();

    void D_(Intent intent, AFa1qSDK aFa1qSDK);

    void d();

    void d(AFh1pSDK aFh1pSDK);

    void registerClient(AFh1pSDK aFh1pSDK);

    boolean registerClient();

    void unregisterClient(AFf1uSDK aFf1uSDK, Function0<Unit> function0);

    void unregisterClient(AFh1pSDK aFh1pSDK);

    boolean unregisterClient();
}
