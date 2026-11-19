package com.appsflyer.internal;

import android.content.Intent;
import com.appsflyer.share.SessionReadyListener;

/* JADX INFO: loaded from: classes.dex */
public interface AFj1wSDK {
    boolean AFKeystoreWrapper();

    boolean AFLogger();

    void R_(Intent intent);

    void d();

    void d(SessionReadyListener sessionReadyListener);

    void registerClient();
}
