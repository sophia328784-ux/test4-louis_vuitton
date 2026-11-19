package com.sensorsdata.analytics.android.sdk.encrypt.encryptor;

import com.networkbench.agent.impl.util.a.h;

/* JADX INFO: loaded from: classes3.dex */
public enum SymmetricEncryptMode {
    AES("AES", "AES/CBC/PKCS5Padding"),
    SM4("SM4", h.d);

    public String algorithm;
    public String transformation;

    SymmetricEncryptMode(String str, String str2) {
        this.algorithm = str;
        this.transformation = str2;
    }
}
