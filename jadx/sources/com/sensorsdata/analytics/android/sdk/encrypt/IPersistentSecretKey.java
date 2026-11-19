package com.sensorsdata.analytics.android.sdk.encrypt;

/* JADX INFO: loaded from: classes3.dex */
public interface IPersistentSecretKey {
    SecreteKey loadSecretKey();

    void saveSecretKey(SecreteKey secreteKey);
}
