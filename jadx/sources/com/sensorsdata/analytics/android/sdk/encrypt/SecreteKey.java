package com.sensorsdata.analytics.android.sdk.encrypt;

import defpackage.n00;

/* JADX INFO: loaded from: classes3.dex */
public class SecreteKey {
    public String asymmetricEncryptType;
    public String key;
    public String symmetricEncryptType;
    public int version;

    public SecreteKey(String str, int i2, String str2, String str3) {
        this.key = str;
        this.version = i2;
        this.symmetricEncryptType = str2;
        this.asymmetricEncryptType = str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{\"key\":\"");
        sb.append(this.key);
        sb.append("\",\"version\":\"");
        sb.append(this.version);
        sb.append("\",\"symmetricEncryptType\":\"");
        sb.append(this.symmetricEncryptType);
        sb.append("\",\"asymmetricEncryptType\":\"");
        return n00.r(this.asymmetricEncryptType, "\"}", sb);
    }
}
